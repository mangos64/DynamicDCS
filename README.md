# DynamicDCS
####Dynamic DCS System for Controlling DCS Servers

The Dynamic DCS engine is built on externally written software from the ground up to offload all the process's from the DCS server to allow for unique game play using nodeJS and mongoDB for asynchronous processing and decision making.
The server then, syncs to it through lua sockets and it compiles commands to send back, essentially freeing up massive amounts of overhead for the server to do what it needs to do.<br>
The full system is compiled of:<br>
DCS(Game Server) <-> dynamicdcs.com(nodeJS) <-> discord(access's API) or SRS(reads json file)

The main goal of this server is to create a place to fly where it feels like a real war, things happen that you cant predict like a real war.

## Installation

To Install the DDCS Engine will be broken up into a few parts. This installation will assume you are installing the default example setup of the engine

#### MongoDB Installation

1. Install the current release of mongoDB from here (follow instructions)<br>
https://docs.mongodb.com/manual/tutorial/install-mongodb-on-windows/
2. Install a database manager such as Robomongo:<br>
https://robomongo.org/download<br>
3. Suggest that you turn on authentication (follow instructions)<br>
https://docs.mongodb.com/manual/tutorial/enable-authentication/
4. Setup a user with these database admin rights:<br>
```bash
clusterAdmin@admin
dbAdminAnyDatabase@admin
readWriteAnyDatabase@admin
userAdminAnyDatabase@admin
```
5. Login to your mongodb and create 2 databases (Add Collection)<br>
  a. Create 1 named "DDCSExample" and import devEnvironment/DB/DDCSExample db into it
  b. Create another named "ServerExample" and import devEnvironment/DB/ServerExample db into it
#### Install Git and checkout main DDCS project
1. Follow the instructions on getting command line git working for windows, should be able to open a windows cmd line and type git, and it works. Please ONLY use command line git for checking in things, the GUI systems do weird things in source control for some reason<br>
https://git-scm.com/download/win<br>
2. In a director where you want the project to live, clone the project:<br>
```bash
git clone https://github.com/afinegan/DynamicDCS.git
``` 
3. When you have code to create a PR to add to DDCS project please contact Drex or Quaggles on DDCS Discord for access to the GitHub<br>
https://discord.gg/h4G9QZf
or email me:
andrew.finegan@gmail.com

#### Installing NVM and NodeJS
1. Get NVM for windows and install it:<br>
https://github.com/coreybutler/nvm-windows/releases
2. go into the directory you checked DDCS project out and install node 8<br>
```bash
nvm install 8
```
3. once done, run node -v to make sure it is installed and working (might have to open another command prompt for it to work)
```bash
node -v
v8.12.0
```
this should install all the dependences needed to run DDCS

#### Creating local configs
1. Create a file in the root of the project named ".config.json" with the following contents:<br>
```JSON
{
  "DB": {
    "user" : "youDBUsername",
    "password" : "yourDBPassword"
  },
  "discord" : {
    "token" : "YourDiscordBotToken"
  }
}
```
2. Auth0(optional I think): Create a file in the root of the project named ".env" with you auth0 environment<br>
   ```
   AUTH0_AUDIENCE=[your auth0 api access path]
   AUTH0_DOMAIN=[your auth0 api access domain]
   ```
3. Auth0(optional I think): Create a file in the root of the project named "auth0-variables.js" with your auth0 variables<br>
    ```
    var AUTH0_CLIENT_ID='';
    var AUTH0_DOMAIN='';
    var AUTH0_CALLBACK_URL='';
    var AUTH0_AUDIENCE='';
    var REQUESTED_SCOPES='';
    ```

#### Install DDCS node dependencies
1. open a command prompt in the directory of the DDCS directory
2. run:<br>
   ```bash
   npm install
   ```
   this will install all the dependancys for the DDCS project
####Install Backend Hook Script for backend communication
1. make sure DCS is closed
2. Copy the file from app/assets/lua/dynamicDCSTrueGameGUI.lua into the folder C:\Users\[computer account name]\Saved Games\DCS\Scripts\Hooks

####Configure your DCS server to be able to run lua socket(has to be done after EVERY update)
1. Make sure DCS is closed
2. Open up C:\Program Files\Eagle Dynamics\DCS World\Scripts\MissionScripting.lua
3. Edit file to this:<br>
```lua
dynamicDCS = { require = require }
--Initialization script for the Mission lua Environment (SSE)

dofile('Scripts/ScriptingSystem.lua')

--Sanitize Mission Scripting environment
--This makes unavailable some unsecure functions. 
--Mission downloaded from server to client may contain potentialy harmful lua code that may use these functions.
--You can remove the code below and make availble these functions at your own risk.

local function sanitizeModule(name)
	_G[name] = nil
	package.loaded[name] = nil
end

do
  --sanitizeModule('os')
  sanitizeModule('io')
  sanitizeModule('lfs')
  --require = nil
  loadlib = nil
end
```
4. Save (might need administrator access to save this file)

## To run DDCS
#### Load Server Sample Mission
1. Open DCS
2. Load Multiplayer -> New Server
3. Fill out any settings you want to use, use the mission from devEnvironment/Mission/DDCSExample.miz
4. check for errors, if mission loads then everything is good (errors most likely mean the MissionScripting.lua file was not setup correctly)

#### Start Up DDCS Server Backend
1. open command prompt in directory servers/DDCSExample/DDCSExample-Back.js
2. run:<br>
```bash
node DDCSExample-Back.js
```

#### Start Up DDCS Server Frontend
1. open command prompt in directory servers/DDCSExample/DDCSExample-Front.js
2. run:<br>
```bash
node DDCSExample-Front.js
```

#### Start Up DDCS Website Frontend
1. open command prompt in directory of DDCS
2. run:<br>
```bash
node server.js
```

# Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

# License
[AGPL-3.0](https://choosealicense.com/licenses/agpl-3.0/)
