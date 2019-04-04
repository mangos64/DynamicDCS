{ 
    ["x"] = coord.LLtoLO( %lonLatLoc;1% , %lonLatLoc;0% ).x,  
    ["y"] = coord.LLtoLO( %lonLatLoc;1% , %lonLatLoc;0% ).z,  
    ["type"] = "AH-64D", 
    ["name"] = %name%,
    ["heading"] = %heading:0%, 
    ["skill"] = %skill:Excellent%, 
    ["hardpoint_racks"] = true, 
    ["payload"]={ 
        ["pylons"]={ 
            [1] = { 
                ["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}", 
            }, 
            [4] = { 
                ["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}", 
            }, 
        }, 
        ["fuel"] = "1157", 
        ["flare"] = 30, 
        ["chaff"] = 30, 
        ["gun"] = 50, 
    }, 
},