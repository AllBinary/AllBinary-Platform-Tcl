# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# package org.allbinary

oo::class create ::ThreedResources {
    superclass ::JObject
}

oo::define ::ThreedResources {
    method initFields_ThreedResources {} {
        return
    }

    constructor {} {
        next
        my initFields_ThreedResources
    }
    
    

    method add {} {
    }
}

namespace eval ::ThreedResources {
    variable threedResourcesValue {}
    variable threedResourcesSet 0
    proc staticGet_threedResources {} {
        variable threedResourcesValue
        variable threedResourcesSet
        if {!$threedResourcesSet} {
            set threedResourcesSet 1
            set threedResourcesValue [::ThreedResources new]
        }
        return $threedResourcesValue
    }
    proc staticSet_threedResources {value} {
        variable threedResourcesValue
        variable threedResourcesSet
        set threedResourcesSet 1
        set threedResourcesValue $value
    }
    proc getThreedResources {} {
        return [::ThreedResources::staticGet_threedResources]
    }
}


