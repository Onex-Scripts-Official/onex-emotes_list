param(
    [Parameter(Mandatory=$false)]
    [string]$FileName = ""
)

function Write-ColorText {
    param([string]$Text, [string]$Color = "White")
    Write-Host $Text -ForegroundColor $Color
}

function Create-Backup {
    param([string]$FilePath)
    $BackupPath = "$FilePath.backup"
    Copy-Item $FilePath $BackupPath -Force
    Write-ColorText "✓ Backup created: $BackupPath" "Green"
    return $BackupPath
}

function Convert-PascalToLowercase {
    param([string]$Key)
    
    $KeyMapping = @{
        'Label' = 'label'
        'Command' = 'command'
        'Animation' = 'animation'
        'Dictionary' = 'dictionary'
        'Options' = 'options'
        'Duration' = 'duration'
        'Delay' = 'delay'
        'Flags' = 'flags'
        'Loop' = 'loop'
        'Move' = 'move'
        'Props' = 'props'
        'Bone' = 'bone'
        'Name' = 'name'
        'Placement' = 'placement'
        'PedTypes' = 'pedtypes'
    }
    
    if ($KeyMapping.ContainsKey($Key)) {
        return $KeyMapping[$Key]
    }
    return $Key.ToLower()
}

function Transform-CasingOnly {
    param([string]$FilePath)
    
    Write-ColorText "Transforming key casing for: $FilePath" "Cyan"
    
    $Content = Get-Content $FilePath -Raw
    
    # Apply casing transformations
    $Content = $Content -replace '\bAnimation\s*=', 'animation ='
    $Content = $Content -replace '\bDictionary\s*=', 'dictionary ='
    $Content = $Content -replace '\bOptions\s*=', 'options ='
    $Content = $Content -replace '\bDuration\s*=', 'duration ='
    $Content = $Content -replace '\bDelay\s*=', 'delay ='
    $Content = $Content -replace '\bFlags\s*=', 'flags ='
    $Content = $Content -replace '\bLoop\s*=', 'loop ='
    $Content = $Content -replace '\bMove\s*=', 'move ='
    
    Set-Content $FilePath -Value $Content -NoNewline
    Write-ColorText "✓ Key casing transformation completed!" "Green"
}

function Extract-EmoteData {
    param([string]$Content)
    
    $Emotes = @()
    $Lines = $Content -split "`n"
    
    $BraceLevel = 0
    $CurrentEmote = @()
    $InsideEmote = $false
    $InsideReturn = $false
    
    foreach ($Line in $Lines) {
        $Stripped = $Line.Trim()
        
        if ($Stripped -match "^return\s*\{") {
            $InsideReturn = $true
            continue
        }
        
        if (-not $InsideReturn) {
            continue
        }
        
        $OpenBraces = ($Line | Select-String -Pattern '\{' -AllMatches).Matches.Count
        $CloseBraces = ($Line | Select-String -Pattern '\}' -AllMatches).Matches.Count
        
        if ($Stripped -eq '{' -and $BraceLevel -eq 0) {
            $InsideEmote = $true
            $CurrentEmote = @()
            $BraceLevel = 1
            continue
        }
        
        if ($InsideEmote) {
            $BraceLevel += $OpenBraces - $CloseBraces
            
            if ($BraceLevel -gt 0) {
                $CurrentEmote += $Line
            } else {
                # End of emote
                $EmoteData = Parse-SingleEmote ($CurrentEmote -join "`n")
                if ($EmoteData -and $EmoteData.command) {
                    $Emotes += $EmoteData
                }
                $InsideEmote = $false
                $CurrentEmote = @()
                $BraceLevel = 0
            }
        }
    }
    
    return $Emotes
}

function Parse-SingleEmote {
    param([string]$EmoteText)
    
    $Emote = @{}
    $Lines = $EmoteText -split "`n"
    
    # Extract basic properties
    foreach ($Line in $Lines) {
        $Stripped = $Line.Trim()
        
        if ($Stripped -match "^\s*(\w+)\s*=\s*'([^']*)'") {
            $Key = Convert-PascalToLowercase $Matches[1]
            $Value = $Matches[2]
            $Emote[$Key] = $Value
        }
        elseif ($Stripped -match "^\s*(\w+)\s*=\s*(\d+)") {
            $Key = Convert-PascalToLowercase $Matches[1]  
            $Value = [int]$Matches[2]
            $Emote[$Key] = $Value
        }
        elseif ($Stripped -match "^\s*(\w+)\s*=\s*(true|false)") {
            $Key = Convert-PascalToLowercase $Matches[1]
            $Value = $Matches[2] -eq 'true'
            $Emote[$Key] = $Value
        }
    }
    
    # Extract Options block if present
    if ($EmoteText -match 'Options\s*=\s*\{(.*?)\}(?:\s*,|\s*$)') {
        $OptionsText = $Matches[1]
        $Options = Parse-OptionsBlock $OptionsText
        if ($Options.Count -gt 0) {
            $Emote['options'] = $Options
        }
    }
    
    return $Emote
}

function Parse-OptionsBlock {
    param([string]$OptionsText)
    
    $Options = @{}
    
    # Extract Duration
    if ($OptionsText -match 'Duration\s*=\s*(\d+)') {
        $Options['duration'] = [int]$Matches[1]
    }
    
    # Extract Delay
    if ($OptionsText -match 'Delay\s*=\s*(\d+)') {
        $Options['delay'] = [int]$Matches[1]
    }
    
    # Extract Flags
    if ($OptionsText -match 'Flags\s*=\s*\{([^}]*)\}') {
        $FlagsText = $Matches[1]
        $Flags = @{}
        
        if ($FlagsText -match 'Loop\s*=\s*true') {
            $Flags['loop'] = $true
        }
        if ($FlagsText -match 'Move\s*=\s*true') {
            $Flags['move'] = $true
        }
        
        if ($Flags.Count -gt 0) {
            $Options['flags'] = $Flags
        }
    }
    
    # Extract Props (simplified - preserve structure)
    if ($OptionsText -match 'Props\s*=\s*\{\{') {
        $Options['props'] = "PROPS_PLACEHOLDER"  # We'll handle this specially
    }
    
    return $Options
}

function Generate-LuaOutput {
    param([array]$Emotes, [string]$OriginalContent)
    
    $Output = @("return {")
    
    foreach ($Emote in $Emotes) {
        if (-not $Emote.command) {
            continue
        }
        
        $Command = $Emote.command
        $Output += "    $Command = {"
        
        # Add all properties except command
        foreach ($Key in $Emote.Keys) {
            if ($Key -eq 'command') {
                continue
            }
            
            $Value = $Emote[$Key]
            
            if ($Key -eq 'options' -and $Value -is [hashtable]) {
                $Output += "        options = {"
                
                foreach ($OptKey in $Value.Keys) {
                    $OptValue = $Value[$OptKey]
                    
                    if ($OptKey -eq 'flags' -and $OptValue -is [hashtable]) {
                        $Output += "            flags = {"
                        foreach ($FlagKey in $OptValue.Keys) {
                            $FlagValue = $OptValue[$FlagKey]
                            $FlagValueStr = if ($FlagValue) { "true" } else { "false" }
                            $Output += "                $FlagKey = $FlagValueStr,"
                        }
                        $Output += "            },"
                    }
                    elseif ($OptValue -eq "PROPS_PLACEHOLDER") {
                        # Extract original props from the source
                        $PropsData = Extract-PropsFromOriginal $OriginalContent $Command
                        $Output += "            props = $PropsData,"
                    }
                    elseif ($OptValue -is [bool]) {
                        $OptValueStr = if ($OptValue) { "true" } else { "false" }
                        $Output += "            $OptKey = $OptValueStr,"
                    }
                    else {
                        $Output += "            $OptKey = $OptValue,"
                    }
                }
                
                $Output += "        },"
            }
            elseif ($Value -is [string]) {
                $Output += "        $Key = '$Value',"
            }
            elseif ($Value -is [bool]) {
                $ValueStr = if ($Value) { "true" } else { "false" }
                $Output += "        $Key = $ValueStr,"
            }
            else {
                $Output += "        $Key = $Value,"
            }
        }
        
        $Output += "    },"
    }
    
    $Output += "}"
    return $Output -join "`n"
}

function Extract-PropsFromOriginal {
    param([string]$Content, [string]$Command)
    
    # Find the original props data for this command
    if ($Content -match "Command\s*=\s*'$Command'.*?Props\s*=\s*(\{\{.*?\}\}(?:\s*,\s*\{\{.*?\}\})*)\s*\}\s*\}") {
        $PropsMatch = $Matches[1]
        # Convert to lowercase
        $PropsMatch = $PropsMatch -replace '\bBone\s*=', 'bone ='
        $PropsMatch = $PropsMatch -replace '\bName\s*=', 'name ='
        $PropsMatch = $PropsMatch -replace '\bPlacement\s*=', 'placement ='
        return $PropsMatch
    }
    
    return "{}"
}

function Transform-StructureAndCasing {
    param([string]$FilePath)
    
    Write-ColorText "Transforming structure and casing for: $FilePath" "Cyan"
    
    $OriginalContent = Get-Content $FilePath -Raw
    $Emotes = Extract-EmoteData $OriginalContent
    
    if ($Emotes.Count -eq 0) {
        Write-ColorText "❌ No emotes found to transform!" "Red"
        return
    }
    
    # Generate new content using simplified approach
    $NewContent = Generate-SimpleOutput $OriginalContent
    
    Set-Content $FilePath -Value $NewContent -Encoding UTF8
    Write-ColorText "✓ Structure and casing transformation completed! Processed $($Emotes.Count) emotes." "Green"
}

function Generate-SimpleOutput {
    param([string]$Content)
    
    $Output = @("return {")
    
    # Use regex to find and transform each emote block
    $Pattern = '\{[^{}]*(?:\{[^{}]*\}[^{}]*)*\}'
    $Matches = [regex]::Matches($Content, $Pattern)
    
    foreach ($Match in $Matches) {
        $Block = $Match.Value
        
        # Extract command
        if ($Block -match "Command\s*=\s*'([^']*)'") {
            $Command = $Matches[1]
            
            # Transform the block
            $TransformedBlock = Transform-EmoteBlock $Block $Command
            $Output += $TransformedBlock
        }
    }
    
    $Output += "}"
    return $Output -join "`n"
}

function Transform-EmoteBlock {
    param([string]$Block, [string]$Command)
    
    $Lines = @()
    $Lines += "    $Command = {"
    
    # Transform each line in the block
    $BlockLines = $Block -split "`n"
    foreach ($Line in $BlockLines) {
        $Stripped = $Line.Trim()
        
        # Skip command line since it's now the key
        if ($Stripped -match "Command\s*=") {
            continue
        }
        
        # Transform other lines
        if ($Stripped -match "^\s*(\w+)\s*=") {
            $Key = $Matches[1]
            $NewKey = Convert-PascalToLowercase $Key
            $TransformedLine = $Line -replace "\b$Key\s*=", "$NewKey ="
            
            # Adjust indentation
            if ($TransformedLine -match "^\s+") {
                $TransformedLine = "    " + $TransformedLine
            } else {
                $TransformedLine = "        " + $TransformedLine.Trim()
            }
            
            $Lines += $TransformedLine
        }
        elseif ($Stripped -ne "" -and $Stripped -ne "{" -and $Stripped -ne "}") {
            # Preserve other formatting
            $TransformedLine = "    " + $Line
            $Lines += $TransformedLine
        }
    }
    
    $Lines += "    },"
    
    return $Lines
}

# Main execution
Write-Host "====================================" -ForegroundColor Cyan
Write-Host "Emotes Configuration Transformer" -ForegroundColor Cyan
Write-Host "====================================" -ForegroundColor Cyan
Write-Host ""

if ($FileName -eq "" -or $FileName -eq "help") {
    Write-Host "Usage: .\transform_emotes_complete.ps1 -FileName <filename>"
    Write-Host "Example: .\transform_emotes_complete.ps1 -FileName exit_emotes.lua"
    Write-Host ""
    Write-Host "Available files:"
    Write-Host "- exit_emotes.lua (casing only)"
    Write-Host "- consumable_emotes.lua (structure + casing)"
    Write-Host "- general_emotes.lua (structure + casing)"
    Write-Host "- animal_emotes.lua (structure + casing)"
    Write-Host "- dance_emotes.lua (structure + casing)"
    Write-Host "- prop_emotes.lua (structure + casing)"
    Write-Host "- shared_emotes.lua (structure + casing)"
    Write-Host ""
    Write-Host "To transform all files: .\transform_emotes_complete.ps1 -FileName ALL"
    exit
}

$ConfigPath = "config\emotes"

if ($FileName -eq "ALL") {
    Write-ColorText "Transforming all emotes configuration files..." "Yellow"
    Write-Host ""
    
    $Files = @(
        @{Name="exit_emotes.lua"; Type="casing"}
        @{Name="consumable_emotes.lua"; Type="structure"}
        @{Name="general_emotes.lua"; Type="structure"}
        @{Name="animal_emotes.lua"; Type="structure"}
        @{Name="dance_emotes.lua"; Type="structure"}
        @{Name="prop_emotes.lua"; Type="structure"}
        @{Name="shared_emotes.lua"; Type="structure"}
    )
    
    $Counter = 1
    foreach ($File in $Files) {
        $FilePath = Join-Path $ConfigPath $File.Name
        
        if (Test-Path $FilePath) {
            Write-ColorText "[$Counter/7] Processing $($File.Name)..." "Yellow"
            
            try {
                Create-Backup $FilePath | Out-Null
                
                if ($File.Type -eq "casing") {
                    Transform-CasingOnly $FilePath
                } else {
                    Transform-StructureAndCasing $FilePath  
                }
                
                Write-ColorText "✓ $($File.Name) completed successfully!" "Green"
            }
            catch {
                Write-ColorText "❌ Error processing $($File.Name): $_" "Red"
            }
            
            Write-Host ""
        } else {
            Write-ColorText "❌ File not found: $FilePath" "Red"
        }
        
        $Counter++
    }
    
    Write-Host "====================================" -ForegroundColor Green
    Write-Host "ALL TRANSFORMATIONS COMPLETED!" -ForegroundColor Green
    Write-Host "====================================" -ForegroundColor Green
    
} else {
    # Single file transformation
    $FilePath = Join-Path $ConfigPath $FileName
    
    if (-not (Test-Path $FilePath)) {
        Write-ColorText "❌ Error: File $FilePath not found!" "Red"
        exit 1
    }
    
    Write-ColorText "Processing: $FileName" "Yellow"
    Write-Host ""
    
    try {
        Create-Backup $FilePath
        
        if ($FileName -eq "exit_emotes.lua") {
            Transform-CasingOnly $FilePath
        } else {
            Transform-StructureAndCasing $FilePath
        }
        
        Write-Host ""
        Write-ColorText "✅ Transformation completed successfully!" "Green"
        Write-ColorText "✅ Backup saved as: $FileName.backup" "Green"
        Write-Host ""
        Write-Host "Please review the changes and test the configuration."
        
    } catch {
        Write-Host ""
        Write-ColorText "❌ Transformation failed: $_" "Red"
        Write-Host "Restoring from backup..."
        
        $BackupPath = "$FilePath.backup"
        if (Test-Path $BackupPath) {
            Copy-Item $BackupPath $FilePath -Force
            Write-ColorText "✅ Original file restored." "Green"
        } else {
            Write-ColorText "❌ Backup file not found!" "Red"
        }
    }
}

Write-Host ""
Write-Host "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")