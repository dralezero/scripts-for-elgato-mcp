@echo off
netstat -ano | findstr "LISTENING" | findstr ":9090" >nul 2>&1
if %errorlevel% == 0 (
    echo MCP server already running on port 9090
    pause
) else (
    echo Starting Elgato MCP server...
    elgato-mcp-server --http
    pause
)