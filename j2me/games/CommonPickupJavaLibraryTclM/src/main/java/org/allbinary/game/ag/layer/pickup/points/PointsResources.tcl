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
# package org.allbinary.game.ag.layer.pickup.points

oo::class create ::PointsResources {
    superclass ::JObject
}

oo::define ::PointsResources {
    method initFields_PointsResources {} {
        my jset RESOURCE {}
        my jset RESOURCE_2 {}
        my jset RESOURCE_3 {}
        my jset RESOURCE_4 {}
        my jset RESOURCE "points_drop_20_by_20.png"
        my jset RESOURCE_2 "points_2_drop_20_by_20.png"
        my jset RESOURCE_3 "points_3_drop_20_by_20.png"
        my jset RESOURCE_4 "points_4_drop_20_by_20.png"
        return
    }
    

    constructor {} {
        next
        my initFields_PointsResources
    }
    
}

namespace eval ::PointsResources {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::PointsResources new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::PointsResources::staticGet_SINGLETON]
    }
}


