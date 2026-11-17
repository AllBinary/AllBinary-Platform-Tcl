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

oo::class create ::XYOscillateVelocityMovement {
    superclass ::BasicConstantVelocityMovement
}

oo::define ::XYOscillateVelocityMovement {
    method initFields_XYOscillateVelocityMovement {} {
        my jset oscillateMin 0
        my jset oscillateMax 0
        my jset oscillate 0
        my jset oscillatePositive false
        
        
        my jset oscillate 0
        my jset oscillatePositive false
        return
    }
    

    constructor {speedBasicDecimal oscillateMin oscillateMax} {
        next $speedBasicDecimal [::VelocityProperties new [jint [$speedBasicDecimal getUnscaled]] [jint [$speedBasicDecimal getUnscaled]]]
        my initFields_XYOscillateVelocityMovement
        my jset oscillateMin $oscillateMin
        my jset oscillateMax $oscillateMax
    }
    

    method process {layer} {
        next $layer
        if {[expr {[my jget oscillate] < [my jget oscillateMin]}]} {
            my jset oscillatePositive true
            [[my getVelocityProperties] getVelocityYBasicDecimalP] addint 3000
        } elseif {[expr {[my jget oscillate] > [my jget oscillateMax]}]} {
            my jset oscillatePositive false
            [[my getVelocityProperties] getVelocityYBasicDecimalP] subtractint 3000
        }
        if {[my jget oscillatePositive]} {
            my jpostinc oscillate 1
            [[my getVelocityProperties] getVelocityXBasicDecimalP] addint 5000
        } else {
            my jpostinc oscillate -1
            [[my getVelocityProperties] getVelocityXBasicDecimalP] subtractint 5000
        }
    }
}

namespace eval ::XYOscillateVelocityMovement {
}


