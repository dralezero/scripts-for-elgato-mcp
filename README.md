# README

## Enable MCP in Stream Deck

Install Elgato Stream Deck 7.4.0 or higher

Settings > General > Enable MCP Actions

## Automatically Install MCP Server

### /scripts/install-nodejs-elgatomcp.bat

Run As Administrator

Installs Node.js, Sets Powershell execution policy, and installs current Elgato MCP from npm

For Node.js, update URL and file name to current version as needed

## Manually install MCP Server ##

Install: Node.js  
https://nodejs.org/en  
Do not need to check "Automatically install the necessary tools"

Open PowerShell  
run:  
npm install -g @elgato/mcp-server

If script execution policy error:  
Open PowerShell as administrator  
run:  
Set-ExecutionPolicy RemoteSigned

More info: https://www.elgato.com/ww/en/explorer/products/stream-deck/sd-mcp-setup/

## Server start / stop

### /scripts/elgato_mcp_start.bat and elgato_mcp_stop.bat

Do not need run as administrator

Starts and stops with friendly messages.

There is not official stop command so scripts look for processes to taskkill
This allows starting with hidden window.
A normal stop would require closing the command window.

## Get MCP Session ID

### /scripts/mcpgetsessionid_file.bat and mcpgetsessionid_piped.bat

Piped: all one line with only output being session ID

File: alternative if pipe doesnt' work. Writes response to a file then reads the file to return session ID

## Examples

### /examples/

Examples of Elgato MCP Server http requests the responses
