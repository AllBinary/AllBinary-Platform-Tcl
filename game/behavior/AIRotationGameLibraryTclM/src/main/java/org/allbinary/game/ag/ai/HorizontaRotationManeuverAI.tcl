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

oo::class create ::HorizontaRotationManeuverAI {
    superclass ::BasicAI
}

oo::define ::HorizontaRotationManeuverAI {
    method initFields_HorizontaRotationManeuverAI {} {
        my jset circularIndexUtil {}
        my jset currentSpeedDivisor 0
        my jset rotationAnimationInterface {}
        my jset baseVelocityInterface {}
        my jset velocityInterface {}
        my jset circularIndexUtil [::CircularIndexUtil::createInstanceAt 10 [::Integer::staticGet_MAX_VALUE]]
        my jset currentSpeedDivisor 5
        
        
        
        return
    }
    

    constructor {ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_HorizontaRotationManeuverAI
        set rotationAnimationInterfaceCompositeInterface [my getOwnerLayerInterface]
        my jset rotationAnimationInterface [$rotationAnimationInterfaceCompositeInterface getRotationAnimationInterface]
        set velocityInterfaceCompositeInterface [my getOwnerLayerInterface]
        my jset baseVelocityInterface [$velocityInterfaceCompositeInterface getVelocityProperties]
        my jset velocityInterface [my jget baseVelocityInterface]
        set rotationAnimationInterface [my jget rotationAnimationInterface]
        set angleIncrementInfo [[$rotationAnimationInterface getAngleInfoP] getAngleIncrementInfo]
        $rotationAnimationInterfaceCompositeInterface setFrame [[$angleIncrementInfo jget RIGHT_FRAME] intValue]
    }
    

    method transition {} {
        set rotationAnimationInterface [my jget rotationAnimationInterface]
        set angleIncrementInfo [[$rotationAnimationInterface getAngleInfoP] getAngleIncrementInfo]
        set rotationAnimationInterfaceCompositeInterface [my getOwnerLayerInterface]
        $rotationAnimationInterfaceCompositeInterface setFrame [[$angleIncrementInfo jget RIGHT_FRAME] intValue]
        set allbinaryLayer [my getOwnerLayerInterface]
        $allbinaryLayer setPosition [$allbinaryLayer getXP] 1 [$allbinaryLayer getZP]
    }
    

    method processAI {allBinaryLayerManager} {
        set rotationAnimationInterface ([my jget rotationAnimationInterface])
        set angleIncrementInfo [[$rotationAnimationInterface getAngleInfoP] getAngleIncrementInfo]
        set frame [[my jget rotationAnimationInterface] getFrame]
        set ownerLayerInterface [my getOwnerLayerInterface]
        if {[expr {[expr {[expr {[$ownerLayerInterface getXP] - [$ownerLayerInterface getWidth]}] <= 0}] && [expr {$frame == [[$angleIncrementInfo jget LEFT_FRAME] intValue]}]}]} {
            my reverse
            my drop
        }
        set displayInfo [::DisplayInfoSingleton::getInstance]
        if {[expr {[expr {[expr {[$ownerLayerInterface getX2] + [$ownerLayerInterface getWidth]}] > [$displayInfo getLastWidth]}] && [expr {$frame == [[$angleIncrementInfo jget RIGHT_FRAME] intValue]}]}]} {
            my reverse
            my accelerate
            my drop
        }
        set index [[my jget circularIndexUtil] getIndex]
        if {[expr {[expr {[jrem $index [my jget currentSpeedDivisor]] == 0}] && [expr {[jrem $index 2] == 0}]}]} {
            next [::Canvas::staticGet_UP]
            [my jget velocityInterface] limitMaxXYVelocity [expr {[[my jget velocityInterface] getMaxForwardVelocity] / [my jget currentSpeedDivisor]}]
        }
        [my jget circularIndexUtil] next
        if {[expr {$frame == [[$angleIncrementInfo jget LEFT_FRAME] intValue]}]} {
            next [::Canvas::staticGet_KEY_NUM0]
        } elseif {[expr {$frame == [[$angleIncrementInfo jget RIGHT_FRAME] intValue]}]} {
            next [::Canvas::staticGet_KEY_POUND]
        }
    }
    

    method reverse {} {
        set rotationAnimationInterface [my jget rotationAnimationInterface]
        set angleIncrementInfo [[$rotationAnimationInterface getAngleInfoP] getAngleIncrementInfo]
        set frame [[my jget rotationAnimationInterface] getFrame]
        if {[expr {$frame == [[$angleIncrementInfo jget LEFT_FRAME] intValue]}]} {
            set rotationAnimationInterfaceCompositeInterface [my getOwnerLayerInterface]
            $rotationAnimationInterfaceCompositeInterface setFrame [[$angleIncrementInfo jget RIGHT_FRAME] intValue]
            [my jget baseVelocityInterface] zero
        } elseif {[expr {$frame == [[$angleIncrementInfo jget RIGHT_FRAME] intValue]}]} {
            set rotationAnimationInterfaceCompositeInterface [my getOwnerLayerInterface]
            $rotationAnimationInterfaceCompositeInterface setFrame [[$angleIncrementInfo jget LEFT_FRAME] intValue]
            [my jget baseVelocityInterface] zero
        }
    }
    

    method accelerate {} {
        if {[expr {[my jget currentSpeedDivisor] > 1}]} {
            my jpostinc currentSpeedDivisor -1
        }
    }
    

    method drop {} {
        set displayInfo [::DisplayInfoSingleton::getInstance]
        set ownerLayerInterface [my getOwnerLayerInterface]
        set y [$ownerLayerInterface getYP]
        if {[expr {[expr {[$ownerLayerInterface getY2] + [$ownerLayerInterface getHeight]}] > [$displayInfo getLastHeight]}]} {
            set y 0
        } else {
            set y [jint [expr {$y + [expr {[$ownerLayerInterface getHeight] + 1}]}]]
        }
        $ownerLayerInterface setPosition [$ownerLayerInterface getXP] $y [$ownerLayerInterface getZP]
    }
    

    method getId {} {
        return [::ArtificialIntelligence::staticGet_AI_ID]
    }
}

namespace eval ::HorizontaRotationManeuverAI {
}


