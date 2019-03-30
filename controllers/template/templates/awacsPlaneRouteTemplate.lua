["route"] = { 
	["points"] = { 
		[1] = { 
			["alt"] = %alt%
            ["action"] = "Turning Point", 
            ["alt_type"] = "BARO", 
            ["speed"] = %speed%
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
                                        ["power"] = 10, 
                                        ["modulation"] = 0, 
                                        ["frequency"] = %radioFreq%
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
                                ["altitude"] = %alt%
                                ["pattern"] = "Race-Track", 
                                ["speed"] = %speed$
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
                        },
                        -- This section will need to be templated if EPLRS is active
                        -- START SECTION
                        [5] = { 
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
                        },
                        -- END SECTION
                    }, 
                }, 
            }, 
            ["type"] = "Turning Point", 
            -- ["x"] = coord.LLtoLO(  _.get(routes, [routeLocs, 0, 1])  ,   _.get(routes, [routeLocs, 0, 0])  ).x,
            ["x"] = coord.LLtoLO( %routes;0;1%, %routes;0;0% ).x,   
            ["y"] = coord.LLtoLO( %routes;0;1%, %routes;0;0% ).z,  
            ["speed_locked"] = true, 
        }, 
        [2]={ 
            ["alt"] = %alt%
            ["action"] = "Turning Point", 
            ["alt_type"] = "BARO", 
            ["speed"] = %speed%
            ["task"] = { 
                ["id"] = "ComboTask", 
                ["params"] = { 
                    ["tasks"]= {} 
                }, 
            }, 
            ["type"] = "Turning Point", 
            ["x"] = coord.LLtoLO( %routes;1;1%, %routes;1;0% ).x,  
            ["y"] = coord.LLtoLO( %routes;1;1%, %routes;1;0% ).z,  
            ["speed_locked"] = true, 
        }, 
    }, 
}