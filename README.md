**Install**

/scripts/install-nodejs-elgatomcp.bat

Run As Administrator

Installs Node.js, Sets Powershell execution policy, and installs current Elgato MCP from npm

For Node.js, update URL and file name to current version as needed

**Server start / stop**

/scripts/elgato_mcp_start.bat and elgato_mcp_stop.bat

Do not need run as administrator

Starts and stops with friendly messages.

There is not official stop command so scripts look for processes to taskkill
This allows starting with hidden window.
A normal stop would require closing the command window.

**Examples**

/examples/

Examples of Elgato MCP Server http requests the responses
