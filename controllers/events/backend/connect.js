const _ = require('lodash');
const DCSLuaCommands = require('../../player/DCSLuaCommands');

_.set(exports, 'processConnect', function (serverName, sessionName, eventObj) {
	// "connect", playerID, name - no ucid lookup yet
	DCSLuaCommands.sendMesgToAll(
		serverName,
		'A: ' + _.get(eventObj, 'arg2', '?') + ' has connected',
		5
	);
});

