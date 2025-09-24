@echo off
setlocal enabledelayedexpansion

echo ====================================
echo Emotes Configuration Transformer
echo ====================================
echo.

if "%1"=="" (
    echo Usage: transform_emotes.bat [filename]
    echo Example: transform_emotes.bat exit_emotes.lua
    echo.
    echo Available files:
    echo - exit_emotes.lua ^(casing only^)
    echo - consumable_emotes.lua ^(structure + casing^)
    echo - general_emotes.lua ^(structure + casing^)
    echo - animal_emotes.lua ^(structure + casing^)
    echo - dance_emotes.lua ^(structure + casing^)
    echo - prop_emotes.lua ^(structure + casing^)
    echo - shared_emotes.lua ^(structure + casing^)
    echo.
    echo To transform all files: transform_emotes.bat ALL
    goto :eof
)

if "%1"=="ALL" (
    echo Transforming all emotes configuration files...
    echo.
    
    REM Transform exit_emotes.lua first (casing only)
    echo [1/7] Processing exit_emotes.lua...
    python transform_emotes.py exit_emotes.lua
    echo.
    
    REM Transform structure files
    echo [2/7] Processing consumable_emotes.lua...
    python transform_emotes.py consumable_emotes.lua
    echo.
    
    echo [3/7] Processing general_emotes.lua...
    python transform_emotes.py general_emotes.lua
    echo.
    
    echo [4/7] Processing animal_emotes.lua...
    python transform_emotes.py animal_emotes.lua
    echo.
    
    echo [5/7] Processing dance_emotes.lua...
    python transform_emotes.py dance_emotes.lua
    echo.
    
    echo [6/7] Processing prop_emotes.lua...
    python transform_emotes.py prop_emotes.lua
    echo.
    
    echo [7/7] Processing shared_emotes.lua...
    python transform_emotes.py shared_emotes.lua
    echo.
    
    echo ====================================
    echo ALL TRANSFORMATIONS COMPLETED!
    echo ====================================
    echo.
    echo ✅ All 7 emotes configuration files have been transformed
    echo ✅ Backup files created for all original files
    echo.
    echo Please review all the changes before using the new configuration.
    echo Backup files can be deleted once you confirm everything works correctly.
    
) else (
    REM Single file transformation
    echo Processing single file: %1
    python transform_emotes.py %1
)

echo.
pause