# Generated Code Do Not Modify
# package org.allbinary.physics.movement

oo::class create ::PreciseConstantVelocityMovement {
    superclass ::BasicConstantVelocityMovement
}

oo::define ::PreciseConstantVelocityMovement {
    method initFields_PreciseConstantVelocityMovement {} {
        my jset accumulatedX 0
        my jset accumulatedY 0
        my jset accumulatedZ 0
        my jset factorValue 0
        my jset accumulatedX 0
        my jset accumulatedY 0
        my jset accumulatedZ 0
        my jset factorValue [[::ScaleFactorFactory::getInstance] jget DEFAULT_SCALE_VALUE]
        return
    }
    

    constructor {basicDecimal velocityProperties} {
        next $basicDecimal $velocityProperties
        my initFields_PreciseConstantVelocityMovement
    }
    

    method init {speedBasicDecimal angle otherAngle} {
    }
    

    method process {layer} {
        set mathUtil [::MathUtil::getInstance]
        set velocityProperties [my getVelocityProperties]
        my jset accumulatedX [jint ([expr {[my jget accumulatedX] + [[$velocityProperties getVelocityXBasicDecimalP] getUnscaled]}])]
        my jset accumulatedY [jint ([expr {[my jget accumulatedY] + [[$velocityProperties getVelocityYBasicDecimalP] getUnscaled]}])]
        my jset accumulatedZ [jint ([expr {[my jget accumulatedZ] + [[$velocityProperties getVelocityZBasicDecimalP] getUnscaled]}])]
        $layer moveDXYZ [jdiv [my jget accumulatedX] [my jget factorValue]] [jdiv [my jget accumulatedY] [my jget factorValue]] [jdiv [my jget accumulatedZ] [my jget factorValue]]
        if {[expr {[$mathUtil abs [my jget accumulatedX]] > [my jget factorValue]}]} {
            my jset accumulatedX 0
        }
        if {[expr {[$mathUtil abs [my jget accumulatedY]] > [my jget factorValue]}]} {
            my jset accumulatedY 0
        }
        if {[expr {[$mathUtil abs [my jget accumulatedZ]] > [my jget factorValue]}]} {
            my jset accumulatedZ 0
        }
    }
}

namespace eval ::PreciseConstantVelocityMovement {
}


