#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.logic.system.security.licensing

oo::class create ::LockedResources {
    superclass ::JObject
}

oo::define ::LockedResources {
    method initFields_LockedResources {} {
        my jset LOCKED_DEMO_GAME_FEATURE_RESOURCE {}
        my jset LOCKED_DEMO_GAME_FEATURE_RESOURCE "/locked_demo_game_feature_64_by_64.png"
        return
    }

    constructor {} {
        next
        my initFields_LockedResources
    }
    
}

namespace eval ::LockedResources {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LockedResources new]
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
        return [::LockedResources::staticGet_instance]
    }
}


