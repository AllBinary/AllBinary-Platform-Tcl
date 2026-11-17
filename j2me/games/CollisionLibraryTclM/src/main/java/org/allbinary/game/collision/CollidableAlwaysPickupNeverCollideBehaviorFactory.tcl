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
# package org.allbinary.game.collision

oo::class create ::CollidableAlwaysPickupNeverCollideBehaviorFactory {
    superclass ::CollidableBaseBehaviorFactory
}

oo::define ::CollidableAlwaysPickupNeverCollideBehaviorFactory {
    method initFields_CollidableAlwaysPickupNeverCollideBehaviorFactory {} {
        my jset instance {}
        my jset instance [::CollidableAlwaysPickupNeverCollideBehavior new]
        return
    }

    constructor {} {
        next
        my initFields_CollidableAlwaysPickupNeverCollideBehaviorFactory
    }
    
    

    method createBehavior {} {
        return [my jget instance]
    }
}

namespace eval ::CollidableAlwaysPickupNeverCollideBehaviorFactory {
    variable instanceCValue {}
    variable instanceCSet 0
    proc staticGet_instanceC {} {
        variable instanceCValue
        variable instanceCSet
        if {!$instanceCSet} {
            set instanceCSet 1
            set instanceCValue [::CollidableAlwaysPickupNeverCollideBehaviorFactory new]
        }
        return $instanceCValue
    }
    proc staticSet_instanceC {value} {
        variable instanceCValue
        variable instanceCSet
        set instanceCSet 1
        set instanceCValue $value
    }
    proc getInstance {} {
        return [::CollidableAlwaysPickupNeverCollideBehaviorFactory::staticGet_instanceC]
    }
}


