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
# package org.allbinary.game.gd.resource

oo::class create ::GDResources {
    superclass ::JObject
}

oo::define ::GDResources {
    method initFields_GDResources {} {
        my jset resourceStringArray {}
        my jset currentLayoutRequiredTotal 0
        my jset resourceStringArray [jarrayfrom [list ]]
        my jset currentLayoutRequiredTotal 0
        return
    }

    constructor {} {
        next
        my initFields_GDResources
    }
    
}

namespace eval ::GDResources {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GDResources new]
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
        return [::GDResources::staticGet_instance]
    }
}


