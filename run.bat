@echo off
echo SlimGemeten starten...

where uv >nul 2>&1
if %errorlevel% neq 0 (
    echo uv niet gevonden. Installeren...
    powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
)

cd /d "%~dp0"
uv run main.py
