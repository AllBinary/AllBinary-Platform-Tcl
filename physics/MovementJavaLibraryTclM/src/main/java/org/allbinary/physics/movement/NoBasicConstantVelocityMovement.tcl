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

oo::class create ::NoBasicConstantVelocityMovement {
    superclass ::BasicConstantVelocityMovement
}

oo::define ::NoBasicConstantVelocityMovement {
    method initFields_NoBasicConstantVelocityMovement {} {
        return
    }
    

    constructor {} {
        next [::BasicDecimal::staticGet_ZERO_BIGDECIMAL] [::BasicVelocityProperties new]
        my initFields_NoBasicConstantVelocityMovement
    }
    

    method process {layer} {
    }
}

namespace eval ::NoBasicConstantVelocityMovement {
}


