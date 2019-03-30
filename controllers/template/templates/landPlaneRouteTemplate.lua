["route"] = { 
    ["points"] = { 
        [1] = { 
            ["alt"] = 2000, 
            ["action"] = "Turning Point", 
            ["alt_type"] = "BARO", 
            ["speed"] = 138, 
            ["task"] = { 
                ["id"] = "ComboTask", 
                ["params"] = { 
                    ["tasks"] = { 
                        [1] = { 
                            ["enabled"]=true, 
                            ["auto"]=false, 
                            ["id"]="WrappedAction", 
                            ["number"] = 1, 
                            ["params"]={ 
                                ["action"]={ 
                                    ["id"] = "Option", 
                                    ["params"] = { 
                                        ["value"] = 2, 
                                        ["name"] = 1, 
                                    }, 
                                }, 
                            }, 
                        }, 
                    }, 
                }, 
            }, 
            ["type"] = "Turning Point",
            ["x"] = coord.LLtoLO( %routeLoc;0;1%, %routeLoc;0;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLoc;0;1%, %routeLoc;0;0% ).z,  
        }, 
        [2]={ 
            ["alt"] = 25, 
            ["action"] = "Landing", 
            ["alt_type"] = "BARO", 
            ["speed"] = 168, 
            ["task"]={ 
                ["id"] = "ComboTask", 
                ["params"] = { 
                    ["tasks"]={ 
                        [1] = { 
                            ["number"] = 1, 
                            ["auto"] = false, 
                            ["id"] = "WrappedAction", 
                            ["enabled"] = true, 
                            ["params"] = { 
                                ["action"] = { 
                                    ["id"] = "Option", 
                                    ["params"] = { 
                                        ["value"] = 2, 
                                        ["name"] = 1, 
                                    }, 
                                }, 
                            }, 
                        }, 
                    }, 
                }, 
            }, 
            ["type"] = "Land", 
            ["x"] = coord.LLtoLO( %routeLoc;1;1%, %routeLoc;1;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLoc;1;1%, %routeLoc;1;0% ).z,   
            ["airdromeId"] = %baseId%, 
        }, 
    } 
},