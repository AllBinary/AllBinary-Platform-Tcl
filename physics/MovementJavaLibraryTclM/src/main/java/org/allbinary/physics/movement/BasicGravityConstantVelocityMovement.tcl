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

oo::class create ::BasicGravityConstantVelocityMovement {
    superclass ::BasicConstantVelocityMovement
}

oo::define ::BasicGravityConstantVelocityMovement {
    method initFields_BasicGravityConstantVelocityMovement {} {
        my jset gravityUtil {}
        my jset gravityUtil [::GravityUtil::getInstance]
        return
    }
    

    constructor {speedBasicDecimal} {
        next $speedBasicDecimal [::VelocityProperties new [jint [$speedBasicDecimal getUnscaled]] [jint [$speedBasicDecimal getUnscaled]]]
        my initFields_BasicGravityConstantVelocityMovement
    }
    

    method process {layer} {
        next $layer
        [my jget gravityUtil] process [my getVelocityProperties] [[my jget gravityUtil] jget GAME_GRAVITY_VELOCITY]
    }
}

namespace eval ::BasicGravityConstantVelocityMovement {
}


