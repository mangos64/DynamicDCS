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
                            ["id"] = "Tanker", 
                            ["enabled"]=true, 
                            ["params"]={}, 
                        }, 
                        [2] = { 
                            ["number"] = 2, 
                            ["auto"] = false, 
                            ["id"] = "WrappedAction", 
                            ["name"] = "RadioFreq", 
                            ["enabled"]=true, 
                            ["params"] = { 
                                ["action"] = { 
                                    ["id"] = "SetFrequency", 
                                    ["params"] = { 
                                        ["power"]=10, 
                                        ["modulation"]=0, 
                                        ["frequency"]= %radioFreq%, 
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
                                ["altitude"] =  %alt%, 
                                ["pattern"] = "Race-Track", 
                                ["speed"] = %speed%, 
                                ["speedEdited"] = true, 
                            }, 
                        }, 
                        %tacan%
                    }, 
                }, 
            }, 
            ["type"] = "Turning Point", 
            ["x"] = coord.LLtoLO( %routeLocs;0;1, %routeLocs;0;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;0;1, %routeLocs;0;0% ).z,  
            ["speed_locked"] = true, 
        }, 
        [2]={ 
            ["alt"] = %alt%, 
            ["action"] = "Turning Point", 
            ["alt_type"] = "BARO", 
            ["speed"] = %speed%, 
            ["task"] = { 
                ["id"] = "ComboTask", 
                ["params"] = { 
                    ["tasks"]={} 
                }, 
            }, 
            ["type"] = "Turning Point", 
            ["x"] = coord.LLtoLO( %routeLocs;1;1, %routeLocs;1;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;1;1, %routeLocs;1;0% ).z,  
            ["speed_locked"] = true, 
        }, 
    }, 
},