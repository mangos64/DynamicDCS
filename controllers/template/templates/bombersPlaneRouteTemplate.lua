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
                            ["auto"] = false, 
                            ["id"] = "WrappedAction", 
                            ["enabled"] = true, 
                            ["params"] = { 
                                ["action"] = { 
                                    ["id"] = "Option", 
                                    ["params"] = { 
                                        ["value"]=true, 
                                        ["name"]=15, 
                                    }, 
                                }, 
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
                                        ["value"]=4, 
                                        ["name"]=0, 
                                    }, 
                                }, 
                            }, 
                        }, 
                    }, 
                }, 
            }, 
            ["type"] = "Turning Point", 
            ["x"] = coord.LLtoLO( %routeLocs;0;1%, %routeLocs;0,0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;0;1%, %routeLocs;0,0% ).z,  
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
                    ["tasks"] = { 
                        [1] = { 
                            ["number"] = 1, 
                            ["auto"] = false, 
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
            ["x"] = coord.LLtoLO( %routeLocs;1;1%, %routeLocs;1;0% ).x,  
            ["y"] = coord.LLtoLO( %routeLocs;1;1%, %routeLocs;1;0% ).z,  
            ["speed_locked"] = true, 
        }, 
    }, 
},