{ 
    ["x"] = coord.LLtoLO( %lonLatLoc;1% , %lonLatLoc;0% ).x,  
    ["y"] = coord.LLtoLO( %lonLatLoc;1% , %lonLatLoc;0% ).z,
    ["type"] = "B-1B", 
    ["name"] = %name%,
    ["heading"] = %heading:0%, 
    ["skill"] = %skill:Excellent%, 
    ["hardpoint_racks"] = true, 
    ["payload"]={ 
        ["pylons"]={ 
            [1] = { 
                ["CLSID"] = "B-1B_Mk-84*8", 
            }, 
            [2] = { 
                ["CLSID"] = "GBU-31V3B*8", 
            }, 
            [3] = { 
                ["CLSID"] = "B-1B_Mk-84*8", 
            }, 
        }, 
        ["fuel"] = "88450", 
        ["flare"] = 30, 
        ["chaff"] = 60, 
        ["gun"] = 100, 
    }, 
},