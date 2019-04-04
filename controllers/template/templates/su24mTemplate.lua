{ 
    ["x"] = coord.LLtoLO( %lonLatLoc;1% , %lonLatLoc;0% ).x,  
    ["y"] = coord.LLtoLO( %lonLatLoc;1% , %lonLatLoc;0% ).z, 
    ["type"] = "Su-24M", 
    ["name"] = %name%,
    ["heading"] = %heading:0%, 
    ["skill"] = %skill:Excellent%, 
    ["hardpoint_racks"] = true, 
    ["payload"]={ 
        ["pylons"]={ 
            [1] = { 
                ["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}", 
            }, 
            [2] = { 
                ["CLSID"] = "{KAB_1500Kr_LOADOUT}", 
            }, 
            [3] = { 
                ["CLSID"] = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}", 
            }, 
            [4] = { 
                ["CLSID"] = "{KAB_1500Kr_LOADOUT}", 
            }, 
            [5] = { 
                ["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}", 
            }, 
            [6] = { 
                ["CLSID"] = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}", 
            }, 
            [7] = { 
                ["CLSID"] = "{KAB_1500Kr_LOADOUT}", 
            }, 
            [8] = { 
                ["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}", 
            }, 
        }, 
        ["fuel"] = "11700", 
        ["flare"] = 96, 
        ["chaff"] = 96, 
        ["gun"] = 100, 
    }, 
},