@echo off
for /f "tokens=2" %%i in ('curl.exe -s -g -X POST -H "Accept: application/json, text/event-stream" -H "Content-Type: application/json" -d "{\"jsonrpc\":\"2.0\",\"method\":\"initialize\",\"params\":{\"protocolVersion\":\"2024-11-05\",\"capabilities\":{},\"clientInfo\":{\"name\":\"test\",\"version\":\"1.0\"}},\"id\":1}" -D - -o nul http://localhost:9090/mcp ^| findstr /i "mcp-session-id"') do set SESSION_ID=%%i
echo %SESSION_ID%
