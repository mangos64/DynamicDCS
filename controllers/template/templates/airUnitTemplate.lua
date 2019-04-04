{ 
    ["x"] = coord.LLtoLO( %lonLatLoc;1% , %lonLatLoc;0% ).x,  
    ["y"] = coord.LLtoLO( %lonLatLoc;1% , %lonLatLoc;0% ).z,  
    ["type"] = %type%, 
    ["name"] = %name%,
    ["heading"] = %heading:0%, 
    ["skill"] = %skill:Excellent% 
    ["payload"]= {
        ["pylons"]={}, 
        ["fuel"] = "100000", 
        ["flare"] = 200, 
        ["chaff"] = 200, 
        ["gun"] = 200, 
    },
    %countryAddition%
}