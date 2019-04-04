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
                    }, 
                }, 
            }, 
            ["speed_locked"] = true, 
        }, 
    }, 
},