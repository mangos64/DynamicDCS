const	_ = require('lodash');
const dbMapServiceController = require('../db/dbMapService');
const DCSLuaCommands = require('../player/DCSLuaCommands');
const groupController = require('../spawn/group');

_.set(exports, 'getPlayerBalance', function (serverName) {
	var blueAll;
	var nowTime = new Date().getTime();
	var oneMin = 60 * 1000;
	var redAll;
	var serverAlloc = {};
	return dbMapServiceController.statSessionActions('readLatest', serverName, {})
		.then(function (latestSession) {
			if (latestSession.name) {
				return dbMapServiceController.srvPlayerActions('read', serverName, {sessionName: latestSession.name})
					.then(function (playerArray) {
						_.forEach(playerArray, function (ePlayer) {
							if ((new Date(_.get(ePlayer, 'updatedAt', 0)).getTime() + oneMin > nowTime) && ePlayer.slot) {
								_.set(serverAlloc, [_.get(ePlayer, 'side')], _.get(serverAlloc, [_.get(ePlayer, 'side')], []));
								serverAlloc[_.get(ePlayer, 'side')].push(ePlayer);
							}
						});
						redAll = _.size(_.get(serverAlloc, 1));
						blueAll = _.size(_.get(serverAlloc, 2));
						if(redAll < blueAll && redAll !== 0) {
							return {
								side: 1,
								modifier: (redAll/blueAll) + 1,
								players: playerArray
							}
						} else if (redAll > blueAll && blueAll !== 0) {
							return {
								side: 2,
								modifier: (blueAll/redAll) + 1,
								players: playerArray
							};
						}
						return {
							side: 0,
							modifier: 1,
							players: playerArray
						};
					})
					.catch(function (err) {
						console.log('line41', err);
					})
				;
			}
		})
		.catch(function (err) {
			console.log('line50', err);
		})
	;
});

//var oneHour = 600 * 1000;
// updateServerLives
_.set(exports, 'updateServerLifePoints', function (serverName) {
	var addFracPoint;
	// update life points every 10 mins to start
	console.log('UPDATING LIFE POINTS');
	exports.getPlayerBalance(serverName)
		.then(function(playerBalance) {
			_.forEach(playerBalance.players, function (cPlayer) {
				var numSlot = !!_.toNumber(cPlayer.slot);
				if (cPlayer) {
					// if (!_.isEmpty(cPlayer.slot)) {
					if (!_.isEmpty(cPlayer.name)) {
						if (cPlayer.side === playerBalance.side) {
							addFracPoint = playerBalance.modifier
						} else {
							addFracPoint = 1;
						}
						if (!_.isEmpty(cPlayer.slot) && numSlot) {
							dbMapServiceController.unitActions('read', serverName, {unitId: cPlayer.slot})
								.then(function (cUnit) {
									var curUnit = _.get(cUnit, [0]);
									if (curUnit) {
										dbMapServiceController.srvPlayerActions('addLifePoints', serverName, {
											_id: cPlayer._id,
											execAction: 'PeriodicAdd',
											groupId: curUnit.groupId,
											addLifePoints: addFracPoint
										});
									}
								})
								.catch(function (err) {
									console.log('line81', err);
								})
							;
						} else {
							dbMapServiceController.srvPlayerActions('addLifePoints', serverName, {
								_id: cPlayer._id,
								execAction: 'PeriodicAdd',
								groupId: null,
								addLifePoints: addFracPoint
							});
						}
					}
				}
			});
		})
		.catch(function (err) {
			console.log('line100', err);
		})
	;
});

// checkCapLives
_.set(exports, 'checkLifeResource', function (serverName, playerUcid) {
	dbMapServiceController.srvPlayerActions('read', serverName, {_id: playerUcid})
		.then(function(srvPlayer) {
			var curPlayer = _.get(srvPlayer, [0]);
			var numSlot = !!_.toNumber(curPlayer.slot);
			if (curPlayer) {
				if (!_.isEmpty(curPlayer.slot) && numSlot) {
					dbMapServiceController.unitActions('read', serverName, {unitId: curPlayer.slot})
						.then(function(cUnit) {
							var curUnit = _.get(cUnit, [0]);
							DCSLuaCommands.sendMesgToGroup(
								curUnit.groupId,
								serverName,
								"G: You Have " + curPlayer.curLifePoints.toFixed(2) + " Life Resource Points.",
								5
							);
						})
						.catch(function (err) {
							console.log('line126', err);
						})
					;
				}
			}
		})
		.catch(function (err) {
			console.log('line133', err);
		})
	;
});

_.set(exports, 'checkAircraftCosts', function (serverName) {
	dbMapServiceController.statSessionActions('readLatest', serverName, {})
		.then(function (latestSession) {
			var mesg;
			if (latestSession.name) {
				dbMapServiceController.srvPlayerActions('read', serverName, {sessionName: latestSession.name, playername: {$ne: ''}})
					.then(function(srvPlayers) {
						_.forEach(srvPlayers, function (curPlayer) {
							if(curPlayer.name) {
								dbMapServiceController.unitActions('read', serverName, {dead: false, playername: curPlayer.name})
									.then(function(cUnit) {
										if (cUnit.length > 0) {
											var curUnit = _.get(cUnit, [0]);
											var curUnitDict = _.find(groupController.unitDictionary, {_id: curUnit.type});
											var curUnitLifePoints = (curUnitDict)? curUnitDict.lifeCost:1;
											// console.log('CHK Aircraft4', _.get(curPlayer, 'curLifePoints', 0), curUnitLifePoints, curUnit.type);
											if(_.get(curPlayer, 'curLifePoints', 0) < curUnitLifePoints && !_.get(curUnit, 'inAir', false)) {
												mesg = "G: You Do Not Have Enough Points To Takeoff In " + curUnit.type + "(" + curUnitLifePoints.toFixed(2) + "/" + curPlayer.curLifePoints.toFixed(2) + "}";
												console.log(curPlayer.name + ' ' + mesg);
												DCSLuaCommands.sendMesgToGroup(
													curUnit.groupId,
													serverName,
													mesg,
													30
												);
											}
										}
									})
									.catch(function (err) {
										console.log('line161', err);
									})
								;
							}
						});
					})
					.catch(function (err) {
						console.log('line168', err);
					})
				;
			}
		})
		.catch(function (err) {
			console.log('line180', err);
		})
	;
});
