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

oo::class create ::LurchRotationAI {
    superclass ::LurchAI
}

oo::define ::LurchRotationAI {
    method initFields_LurchRotationAI {} {
        my jset rotationAnimationInterface {}
        
        return
    }
    

    constructor {ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_LurchRotationAI
        set rotationAnimationInterfaceCompositeInterface [my getOwnerLayerInterface]
        my jset rotationAnimationInterface [$rotationAnimationInterfaceCompositeInterface getRotationAnimationInterface]
        my update
    }
    

    method reverse {} {
        next
        my update
    }
    

    method update {} {
        if {[expr {[my jget currentRelativeAngle] == 0}]} {
            set rotationAnimationInterface [my jget rotationAnimationInterface]
            set angleIncrementInfo [[$rotationAnimationInterface getAngleInfoP] getAngleIncrementInfo]
            set rotationAnimationInterfaceCompositeInterface [my getOwnerLayerInterface]
            $rotationAnimationInterfaceCompositeInterface setFrame [[$angleIncrementInfo jget RIGHT_FRAME] intValue]
        } elseif {[expr {[my jget currentRelativeAngle] == 180}]} {
            set rotationAnimationInterface [my jget rotationAnimationInterface]
            set angleIncrementInfo [[$rotationAnimationInterface getAngleInfoP] getAngleIncrementInfo]
            set rotationAnimationInterfaceCompositeInterface [my getOwnerLayerInterface]
            $rotationAnimationInterfaceCompositeInterface setFrame [[$angleIncrementInfo jget LEFT_FRAME] intValue]
        }
    }
}

namespace eval ::LurchRotationAI {
}


