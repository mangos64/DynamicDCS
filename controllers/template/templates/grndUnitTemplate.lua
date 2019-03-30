{ 
    ["x"] = coord.LLtoLO( %lonLatLoc;1%, %lonLatLoc;0% ).x,  
    ["y"] = coord.LLtoLO( %lonLatLoc;1%, %lonLatLoc;0% ).z,  
    ["type"] = %type%, 
    ["transportable"] = { 
        ["randomTransportable"] = true, 
    }, 
    ["name"] = %name%,
    ["heading"] = %heading:0%  , 
    ["playerCanDrive"] = %playerCanDrive:false%,
    ["skill"] = %skill:Excellent%, 
    ["country"] = %country%, 
}