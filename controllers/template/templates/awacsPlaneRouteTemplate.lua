["route"] = { 
	["points"] = { 
		[1] = { 
					["alt"] =   _.get(routes, alt)  , 
					["action"] = "Turning Point", 
					["alt_type"] = "BARO", 
					["speed"] =   _.get(routes, speed)  , 
					["task"] = { 
						["id"] = "ComboTask", 
						["params"] = { 
							["tasks"] = { 
								[1] = { 
									["number"] = 1, 
									["auto"] = true, 
									["id"] = "AWACS", 
									["enabled"] = true, 
									["params"]={}, 
								}, 
								[2] = { 
									["number"] = 2, 
									["auto"] = false, 
									["id"] = "WrappedAction", 
									["name"] = "RadioFreq", 
									["enabled"] = true, 
									["params"] = { 
										["action"] = { 
											["id"] = "SetFrequency", 
											["params"] = { 
												["power"]=10, 
												["modulation"]=0, 
												["frequency"]=  _.get(routes, radioFreq)  , 
											}, 
										}, 
									}, 
								}, 
								[3] = { 
									["number"] = 3, 
									["auto"] = false, 
									["id"] = "Orbit", 
									["enabled"]=true, 
									["params"] = { 
										["altitude"] =   _.get(routes, alt)  , 
										["pattern"] = "Race-Track", 
										["speed"] =   _.get(routes, speed)  , 
										["speedEdited"] = true, 
									}, 
								}, 
								[4] = { 
									["number"] = 4, 
									["auto"] = false, 
									["id"] = "WrappedAction", 
									["enabled"] = true, 
									["params"] = { 
										["action"] = { 
											["id"] = "Option", 
											["params"] = { 
												["name"] = 1, 
												["value"] = 2, 
											}, 
										}, 
									}, 
								}, ;
								if(_.get(routes, eplrs)) {
									curRoute = [5] = { 
										["number"] = 5, 
										["auto"] = true, 
										["id"] = "WrappedAction", 
										["enabled"] = true, 
										["params"] = { 
											["action"] = { 
												["id"] = "EPLRS", 
												["params"] = { 
													["value"] = true, 
												}, 
											}, 
										}, 
									}, ;
								}
						curRoute = }, 
						}, 
					}, 
					["type"] = "Turning Point", 
					["x"] = coord.LLtoLO(  _.get(routes, [routeLocs, 0, 1])  ,   _.get(routes, [routeLocs, 0, 0])  ).x,  
					["y"] = coord.LLtoLO(  _.get(routes, [routeLocs, 0, 1])  ,   _.get(routes, [routeLocs, 0, 0])  ).z,  
					["speed_locked"] = true, 
				}, 
				[2]={ 
					["alt"] =   _.get(routes, alt)  , 
					["action"] = "Turning Point", 
					["alt_type"] = "BARO", 
					["speed"] =   _.get(routes, speed)  , 
					["task"] = { 
						["id"] = "ComboTask", 
						["params"] = { 
							["tasks"]={} 
						}, 
					}, 
					["type"] = "Turning Point", 
					["x"] = coord.LLtoLO(  _.get(routes, [routeLocs, 1, 1])  ,   _.get(routes, [routeLocs, 1, 0])  ).x,  
					["y"] = coord.LLtoLO(  _.get(routes, [routeLocs, 1, 1])  ,   _.get(routes, [routeLocs, 1, 0])  ).z,  
					["speed_locked"] = true, 
				}, 
			}, 
}