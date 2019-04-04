["route"] = { 
    ["spans"] = {}, 
    ["points"] = { 
        [1] = { 
            ["type"] = "Turning Point", 
            ["ETA"] = 0, 
            ["alt_type"] = "BARO", 
            ["formation_template"] = "", 
            ["name"] = "dontdisperse", 
            ["ETA_locked"] = true, 
            ["speed"] = 0, 
            ["action"] = "Off Road", 
            ["task"] = { 
                ["id"] = "ComboTask", 
                ["params"] = { 
                    ["tasks"] = { 
                        [1] = { 
                            ["enabled"] = true, 
                            ["auto"] = false, 
                            ["id"] = "WrappedAction", 
                            ["number"] = 1, 
                            ["params"] = { 
                                ["action"] = { 
                                    ["id"] = "Option", 
                                    ["params"] = { 
                                        ["name"] = 8, 
                                    }, 
                                }, 
                            }, 
                        }, 
                        [2] = { 
                            ["number"] = 2, 
                            ["name"] = "ewr enroute task", 
                            ["id"] = "EWR", 
                            ["auto"] = true, 
                            ["enabled"] = true, 
                            ["params"] = {}, 
                        }, 
                        [3] = { 
                            ["number"] = 3, 
                            ["auto"] = false, 
                            ["id"] = "WrappedAction", 
                            ["enabled"] = true, 
                            ["params"] = { 
                                ["action"] = { 
                                    ["id"] = "SetFrequency", 
                                    ["params"] = { 
                                        ["power"] = 10, 
                                        ["modulation"] = 0, 
                                        ["frequency"] = %setFreq% , 
                                    }, 
                                }, 
                            }, 
                        }, 
                        [4] = { 
                            ["enabled"] = true, 
                            ["auto"] = false, 
                            ["id"] = "WrappedAction", 
                            ["number"] = 4, 
                            ["params"] = { 
                                ["action"] = { 
                                    ["id"] = "SetCallsign", 
                                    ["params"] = { 
                                        ["callsign"] = %setCallsign% , 
                                        ["callnameFlag"] = false, 
                                    }, 
                                }, 
                            }, 
                        }, 
                    }, 
                }, 
            }, 
            ["speed_locked"] = true, 
        }, 
    }, 
},