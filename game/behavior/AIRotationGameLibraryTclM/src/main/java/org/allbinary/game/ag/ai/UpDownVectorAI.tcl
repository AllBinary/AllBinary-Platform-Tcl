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
# package org.allbinary.game.ag.ai

oo::class create ::UpDownVectorAI {
    superclass ::BasicAI
}

oo::define ::UpDownVectorAI {
    method initFields_UpDownVectorAI {} {
        my jset velocityInterface {}
        my jset index 0
        
        my jset index 0
        return
    }
    

    constructor {ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_UpDownVectorAI
        set velocityInterfaceCompositeInterface [my getOwnerLayerInterface]
        my jset velocityInterface [$velocityInterfaceCompositeInterface getVelocityProperties]
        [[my jget velocityInterface] getVelocityYBasicDecimalP] setint 0
    }
    

    method processAI {allBinaryLayerManager} {
        set y [expr {[[my getOwnerLayerInterface] getHeight] * 270}]
        if {[expr {[my jget index] < 5}]} {
            set basicDecimal [[my jget velocityInterface] getVelocityYBasicDecimalP]
            $basicDecimal setint 0
            $basicDecimal addint $y
            my jpostinc index 1
        } elseif {[expr {[my jget index] < 10}]} {
            set basicDecimal [[my jget velocityInterface] getVelocityYBasicDecimalP]
            $basicDecimal setint 0
            $basicDecimal subtractint $y
            my jpostinc index 1
        } else {
            my jset index 0
            my processAI $allBinaryLayerManager
        }
    }
}

namespace eval ::UpDownVectorAI {
}


