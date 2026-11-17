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

oo::class create ::DelayedConstantVelocityMovement {
    superclass ::BasicConstantVelocityMovement
}

oo::define ::DelayedConstantVelocityMovement {
    method initFields_DelayedConstantVelocityMovement {} {
        my jset timeDelayHelper {}
        my jset timeDelayHelper [::TimeDelayHelper new 60]
        return
    }
    

    constructor {basicDecimal velocityProperties} {
        next $basicDecimal $velocityProperties
        my initFields_DelayedConstantVelocityMovement
    }
    

    method init {speedBasicDecimal angle otherAngle} {
    }
    

    method process {layer} {
        if {[[my jget timeDelayHelper] isTime [[::GameTickTimeDelayHelperFactory::getInstance] jget startTime]]} {
            next $layer
        }
    }
}

namespace eval ::DelayedConstantVelocityMovement {
}


