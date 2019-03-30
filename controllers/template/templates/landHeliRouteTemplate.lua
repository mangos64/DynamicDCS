["route"] = { 
    ["points"] = { 
        [1] = { 
            ["alt"] = 500, 
            ["action"] = "Turning Point",
            ["alt_type"] = "BARO", 
            ["speed"] = 70, 
            ["task"] = {
                ["id"] = "ComboTask", 
                ["params"]={ 
                    ["tasks"]={ 
                        [1]={ 
                            ["enabled"]=true, 
                            ["auto"]=false, 
                            ["id"]="WrappedAction", 
                            ["number"] = 1, 
                            ["params"]={ 
                                ["action"]={ 
                                    ["id"] = "Option", 
                                    ["params"]={ 
                                        ["value"] = 2, 
                                        ["name"] = 1, 
                                    }, 
                                }, 
                            }, 
                        }, 
                        [2] = { 
                            ["enabled"] = true, 
                            ["auto"]=false, 
                            ["id"]="Land", 
                            ["number"]= 2, 
                            ["params"]={ 
                                ["x"] = coord.LLtoLO( %routeLocs;1;1%, %routeLocs;1;0% ).x,  
                                ["y"] = coord.LLtoLO( %routeLocs;1;1%, %routeLocs;1;0% ).z,  
                                ["duration"] = 300, 
                                ["durationFlag"] = false, 
                            }, 
                        }, 
                    }, 
                }, 
            }, 
            ["type"] = "Turning Point",
            ["x"] = coord.LLtoLO( %routeLocs;0;1%, %routeLocs;0;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;0;1%, %routeLocs;0;0% ).z,
        }, 
    }, 
},