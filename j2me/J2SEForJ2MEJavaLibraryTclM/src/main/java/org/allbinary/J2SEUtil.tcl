# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

#J2SEForJ2ME
oo::class create ::J2SEUtil {
    superclass ::JObject
}

oo::define ::J2SEUtil {
    method initFields_J2SEUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_J2SEUtil
    }
    
    

    method getHashMapAsArray {hashMap} {
        set objectArray [[$hashMap keySet] toArray]
        return $objectArray
    }
    

    method getMapAsArray {map} {
        set objectArray [[$map keySet] toArray]
        return $objectArray
    }
    

    method getSetAsArray {set} {
        set objectArray [$set toArray]
        return $objectArray
    }
}

namespace eval ::J2SEUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::J2SEUtil new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::J2SEUtil::staticGet_instance]
    }
}


