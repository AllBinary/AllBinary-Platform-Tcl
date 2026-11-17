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
# package org.allbinary.game.physics.acceleration

oo::class create ::GravityUtil {
    superclass ::JObject
}

oo::define ::GravityUtil {
    method initFields_GravityUtil {} {
        my jset GAME_GRAVITY_VELOCITY 0
        my jset MAX_GAME_VELOCITY 0
        my jset GAME_GRAVITY_VELOCITY 1800
        my jset MAX_GAME_VELOCITY 18000
        return
    }

    constructor {} {
        next
        my initFields_GravityUtil
    }
    
    

    method process {velocityProperties customGravity} {
        [$velocityProperties getVelocityYBasicDecimalP] addint $customGravity
    }
}

namespace eval ::GravityUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GravityUtil new]
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
        return [::GravityUtil::staticGet_instance]
    }
}


