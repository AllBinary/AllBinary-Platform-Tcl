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

oo::class create ::CustomGravityConstantVelocityMovement {
    superclass ::BasicConstantVelocityMovement
}

oo::define ::CustomGravityConstantVelocityMovement {
    method initFields_CustomGravityConstantVelocityMovement {} {
        my jset customGravity 0
        my jset gravityUtil {}
        
        my jset gravityUtil [::GravityUtil::getInstance]
        return
    }
    

    constructor {speedBasicDecimal customGravity} {
        next $speedBasicDecimal [::VelocityProperties new [jint [$speedBasicDecimal getUnscaled]] [jint [$speedBasicDecimal getUnscaled]]]
        my initFields_CustomGravityConstantVelocityMovement
        my jset customGravity $customGravity
    }
    

    method process {layer} {
        next $layer
        [my jget gravityUtil] process [my getVelocityProperties] [my jget customGravity]
        set velocityProperties [my getVelocityProperties]
        $velocityProperties limitMaxYForwardVelocity
    }
}

namespace eval ::CustomGravityConstantVelocityMovement {
}


