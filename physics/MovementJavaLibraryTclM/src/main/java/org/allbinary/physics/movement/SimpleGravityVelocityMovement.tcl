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
# package org.allbinary.physics.movement

oo::class create ::SimpleGravityVelocityMovement {
    superclass ::BasicConstantVelocityMovement
}

oo::define ::SimpleGravityVelocityMovement {
    method initFields_SimpleGravityVelocityMovement {} {
        my jset gravityUtil {}
        my jset gravityUtil [::GravityUtil::getInstance]
        return
    }
    

    constructor {speedBasicDecimal} {
        next $speedBasicDecimal [::VelocityProperties new [jint [$speedBasicDecimal getUnscaled]] [jint [$speedBasicDecimal getUnscaled]]]
        my initFields_SimpleGravityVelocityMovement
    }
    

    method process {layer} {
        [my jget gravityUtil] process [my getVelocityProperties] [[my jget gravityUtil] jget GAME_GRAVITY_VELOCITY]
        next $layer
    }
}

namespace eval ::SimpleGravityVelocityMovement {
}


