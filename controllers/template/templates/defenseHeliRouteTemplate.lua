["route"] = { 
    ["points"] = { 
        [1] = { 
            ["alt"] = %alt%, 
            ["action"] = "Turning Point", 
            ["alt_type"] = "BARO", 
            ["speed"] = %speed%, 
            ["task"] = { 
                ["id"] = "ComboTask", 
                ["params"] = { 
                    ["tasks"] = { 
                        [1] = { 
                            ["number"] = 1, 
                            ["auto"] = true, 
                            ["id"] = "EngageTargets", 
                            ["enabled"] = true, 
                            ["key"] = "CAS", 
                            ["params"] = { 
                                ["targetTypes"] = { 
                                    [1] = "Helicopters", 
                                    [2] = "Ground Units", 
                                    [3] = "Light armed ships", 
                                }, 
                                ["priority"] = 0, 
                            }, 
                        }, 
                        [2] = { 
                            ["number"] = 2, 
                            ["auto"] = false, 
                            ["id"] = "WrappedAction", 
                            ["enabled"] = true, 
                            ["params"] = { 
                                ["action"] = { 
                                    ["id"] = "Option", 
                                    ["params"] = { 
                                        ["value"]=2, 
                                        ["name"]=1, 
                                    }, 
                                }, 
                            }, 
                        }, 
                        [3] = { 
                            ["number"] = 3, 
                            ["auto"] = false, 
                            ["id"] = "WrappedAction", 
                            ["enabled"] = true, 
                            ["params"] = { 
                                ["action"] = { 
                                    ["id"] = "Option", 
                                    ["params"] = { 
                                        ["value"]=0, 
                                        ["name"]=0, 
                                    }, 
                                }, 
                            }, 
                        }, 
                    }, 
                }, 
            }, 
            ["type"] = "Turning Point", 
            ["x"] = coord.LLtoLO( %routeLocs;0;1%, %routeLocs;0;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;0;1%, %routeLocs;0;0% ).z,  
            ["speed_locked"] = true, 
        }, 
        [2]={ 
            ["alt"] = %alt%, 
            ["action"] = "Turning Point", 
            ["alt_type"] = "BARO", 
            ["speed"] = %speed%, 
            ["task"] = { 
                ["id"] = "ComboTask", 
                ["params"] = {["tasks"] = {}} 
            }, 
            ["type"] = "Turning Point", 
            ["x"] = coord.LLtoLO( %routeLocs;1;1%, %routeLocs;1;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;1;1%, %routeLocs;1;0% ).z,  
            ["speed_locked"] = true, 
        }, 
        [3]={ 
            ["alt"] = %alt%, 
            ["action"] = "Turning Point", 
            ["alt_type"] = "BARO", 
            ["speed"] = %speed%, 
            ["task"] = { 
                ["id"] = "ComboTask", 
                ["params"] = {["tasks"] = {}} 
            }, 
            ["type"] = "Turning Point", 
            ["x"] = coord.LLtoLO( %routeLocs;2;1%, %routeLocs;2;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;2;1%, %routeLocs;2;0% ).z,  
            ["speed_locked"] = true, 
        }, 
        [4]={ 
            ["alt"] =   %alt%  , 
            ["action"] = "Turning Point", 
            ["alt_type"] = "BARO", 
            ["speed"] = %speed%, 
            ["task"] = { 
                ["id"] = "ComboTask", 
                ["params"] = {["tasks"] = {}} 
            }, 
            ["type"] = "Turning Point", 
            ["x"] = coord.LLtoLO( %routeLocs;3;1%, %routeLocs;3;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;3;1%, %routeLocs;3;0% ).z, 
            ["speed_locked"] = true, 
        }, 
        [5]={ 
            ["alt"] = %alt%, 
            ["action"] = "Turning Point", 
            ["alt_type"] = "BARO", 
            ["speed"] = %speed%, 
            ["task"] = { 
                ["id"] = "ComboTask", 
                ["params"] = {["tasks"] = {}} 
            }, 
            ["type"] = "Turning Point", 
            ["x"] = coord.LLtoLO( %routeLocs;4;1%, %routeLocs;4;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;4;1%, %routeLocs;4;0% ).z,
            ["speed_locked"] = true, 
        }, 
        [6]={ 
            ["alt"] = %alt%, 
            ["action"] = "Turning Point", 
            ["alt_type"] = "BARO", 
            ["speed"] = %speed%, 
            ["task"] = { 
                ["id"] = "ComboTask", 
                ["params"] = {["tasks"] = {}} 
            }, 
            ["type"] = "Turning Point", 
            ["x"] = coord.LLtoLO( %routeLocs;5;1%, %routeLocs;5;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;5;1%, %routeLocs;5;0% ).z,  
            ["speed_locked"] = true, 
        }, 
        [7]={ 
            ["alt"] = %alt%, 
            ["action"] = "Turning Point", 
            ["alt_type"] = "BARO", 
            ["speed"] = %speed%, 
            ["task"] = { 
                ["id"] = "ComboTask", 
                ["params"] = {["tasks"] = {}} 
            }, 
            ["type"] = "Turning Point", 
            ["x"] = coord.LLtoLO( %routeLocs;6;1%, %routeLocs;6;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;6;1%, %routeLocs;6;0% ).z,  
            ["speed_locked"] = true, 
        }, 
        [8]={ 
            ["alt"] = %alt%, 
            ["action"] = "Turning Point", 
            ["alt_type"] = "BARO", 
            ["speed"] = %speed%, 
            ["task"] = { 
                ["id"] = "ComboTask", 
                ["params"] = { 
                    ["tasks"] = { 
                        [1] = { 
                            ["number"] = 1, 
                            ["auto"] = false, 
                            ["id"] = "WrappedAction", 
                            ["enabled"] = true, 
                            ["params"] = { 
                                ["action"] = { 
                                    ["id"] = "SwitchWaypoint", 
                                    ["params"] = { 
                                        ["goToWaypointIndex"] = 1, 
                                        ["fromWaypointIndex"] = 8, 
                                    }, 
                                }, 
                            }, 
                        }, 
                    }, 
                } 
            }, 
            ["type"] = "Turning Point", 
            ["x"] = coord.LLtoLO( %routeLocs;7;1%, %routeLocs;7;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;7;1%, %routeLocs;7;0% ).z,  
            ["speed_locked"] = true, 
        }, 
    }, 
},