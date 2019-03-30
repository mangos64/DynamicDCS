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
                        %eplrs%
                    }, 
                }, 
            }, 
            ["type"] = "Turning Point", 
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