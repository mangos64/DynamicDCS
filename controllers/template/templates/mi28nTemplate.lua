{ 
    ["x"] = coord.LLtoLO( %lonLatLoc;1% , %lonLatLoc;0% ).x,  
    ["y"] = coord.LLtoLO( %lonLatLoc;1% , %lonLatLoc;0% ).z,  
    ["type"] = "Mi-28N", 
    ["name"] = %name%,
    ["heading"] =  %heading:0% , 
    ["skill"] = %skill:Excellent%, 
    ["hardpoint_racks"] = true, 
    ["payload"]={ 
        ["pylons"]={ 
            [1] = { 
                ["CLSID"] = "{57232979-8B0F-4db7-8D9A-55197E06B0F5}", 
            }, 
        }, 
        ["fuel"] = "1500", 
        ["flare"] = 128, 
        ["chaff"] = 0, 
        ["gun"] = 100, 
    }, 
},