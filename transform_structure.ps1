param(
    [Parameter(Mandatory=$true)]
    [string]$FilePath
)

function Convert-ArrayToCommandIndexed {
    param([string]$Content)
    
    # Parse the Lua array structure and convert to command-indexed
    $lines = $Content -split "`n"
    $result = @()
    $result += "return {"
    
    $inEmote = $false
    $currentEmote = @()
    $braceLevel = 0
    $command = ""
    
    foreach ($line in $lines) {
        $trimmedLine = $line.Trim()
        
        # Skip return statement and opening brace
        if ($trimmedLine -match "^return\s*{" -or $trimmedLine -eq "{") {
            continue
        }
        
        # Count braces to track nesting level
        $openBraces = ($line | Select-String -Pattern "{" -AllMatches).Matches.Count
        $closeBraces = ($line | Select-String -Pattern "}" -AllMatches).Matches.Count
        $braceLevel += $openBraces - $closeBraces
        
        # Start of new emote entry
        if ($trimmedLine -eq "{" -and $braceLevel -eq 1) {
            $inEmote = $true
            $currentEmote = @()
            $command = ""
            continue
        }
        
        # End of emote entry
        if ($trimmedLine -match "^}[,}]*$" -and $braceLevel -eq 0) {
            if ($currentEmote.Count -gt 0 -and $command -ne "") {
                # Add the command-indexed entry
                $result += "    $command = {"
                
                # Process and add all lines except Command
                foreach ($emoteLine in $currentEmote) {
                    if ($emoteLine -notmatch "Command\s*=") {
                        # Convert PascalCase to lowercase
                        $convertedLine = $emoteLine
                        $convertedLine = $convertedLine -replace "\bLabel\s*=", "label ="
                        $convertedLine = $convertedLine -replace "\bAnimation\s*=", "animation ="
                        $convertedLine = $convertedLine -replace "\bDictionary\s*=", "dictionary ="
                        $convertedLine = $convertedLine -replace "\bOptions\s*=", "options ="
                        $convertedLine = $convertedLine -replace "\bDuration\s*=", "duration ="
                        $convertedLine = $convertedLine -replace "\bDelay\s*=", "delay ="
                        $convertedLine = $convertedLine -replace "\bFlags\s*=", "flags ="
                        $convertedLine = $convertedLine -replace "\bLoop\s*=", "loop ="
                        $convertedLine = $convertedLine -replace "\bMove\s*=", "move ="
                        $convertedLine = $convertedLine -replace "\bProps\s*=", "props ="
                        $convertedLine = $convertedLine -replace "\bBone\s*=", "bone ="
                        $convertedLine = $convertedLine -replace "\bName\s*=", "name ="
                        $convertedLine = $convertedLine -replace "\bPlacement\s*=", "placement ="
                        $convertedLine = $convertedLine -replace "\bPedTypes\s*=", "pedtypes ="
                        
                        $result += "        $convertedLine"
                    }
                }
                
                $result += "    },"
            }
            $inEmote = $false
            continue
        }
        
        # Collect emote content
        if ($inEmote) {
            # Extract command value
            if ($line -match "Command\s*=\s*'([^']+)'") {
                $command = $Matches[1]
            }
            $currentEmote += $line
        }
    }
    
    # Close the return table
    if ($result[-1] -match ",$") {
        $result[-1] = $result[-1] -replace ",$", ""
    }
    $result += "}"
    
    return $result -join "`n"
}

try {
    Write-Host "Reading file: $FilePath"
    $content = Get-Content $FilePath -Raw -Encoding UTF8
    
    Write-Host "Converting structure..."
    $transformedContent = Convert-ArrayToCommandIndexed -Content $content
    
    Write-Host "Writing transformed content..."
    Set-Content $FilePath -Value $transformedContent -Encoding UTF8 -NoNewline
    
    Write-Host "✓ Structure transformation completed successfully!"
    exit 0
} catch {
    Write-Host "✗ Error during transformation: $_"
    exit 1
}