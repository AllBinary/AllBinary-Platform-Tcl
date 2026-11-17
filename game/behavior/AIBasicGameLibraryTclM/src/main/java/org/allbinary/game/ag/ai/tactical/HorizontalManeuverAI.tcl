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
# package org.allbinary.game.ag.ai.tactical

oo::class create ::HorizontalManeuverAI {
    superclass ::BasicAI
}

oo::define ::HorizontalManeuverAI {
    method initFields_HorizontalManeuverAI {} {
        my jset currentRelativeAngle 0
        my jset currentSpeed 0
        my jset currentRelativeAngle 0
        
        return
    }
    

    constructor {ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_HorizontalManeuverAI
        my jset currentSpeed 5
    }
    

    method processAI {allBinaryLayerManager} {
        set ownerLayerInterface [my getOwnerLayerInterface]
        set x [$ownerLayerInterface getXP]
        if {[expr {[expr {[$ownerLayerInterface getXP] - [my jget currentSpeed]}] <= 0}]} {
            my reverse
            my drop
        }
        if {[expr {[expr {[$ownerLayerInterface getX2] + [my jget currentSpeed]}] > [[::DisplayInfoSingleton::getInstance] getLastWidth]}]} {
            my reverse
            my accelerate
            my drop
        }
        if {[expr {[my jget currentRelativeAngle] == 0}]} {
            set x [jint [expr {$x + [my jget currentSpeed]}]]
        } elseif {[expr {[my jget currentRelativeAngle] == 180}]} {
            set x [jint [expr {$x - [my jget currentSpeed]}]]
        }
        $ownerLayerInterface setPosition $x [$ownerLayerInterface getYP] [$ownerLayerInterface getZP]
        if {[expr {[my jget currentRelativeAngle] == 0}]} {
            next [::Canvas::staticGet_KEY_NUM0]
        } elseif {[expr {[my jget currentRelativeAngle] == 180}]} {
            next [::Canvas::staticGet_KEY_POUND]
        }
    }
    

    method reverse {} {
        if {[expr {[my jget currentRelativeAngle] == 180}]} {
            my jset currentRelativeAngle 0
        } elseif {[expr {[my jget currentRelativeAngle] == 0}]} {
            my jset currentRelativeAngle 180
        }
    }
    

    method accelerate {} {
        if {[expr {[my jget currentSpeed] < 20}]} {
            my jpostinc currentSpeed 1
        }
    }
    

    method drop {} {
        set ownerLayerInterface [my getOwnerLayerInterface]
        set y [$ownerLayerInterface getYP]
        if {[expr {[expr {[$ownerLayerInterface getY2] + [$ownerLayerInterface getHeight]}] > [[::DisplayInfoSingleton::getInstance] getLastHeight]}]} {
            set y 0
        } else {
            set y [jint [expr {$y + [expr {[$ownerLayerInterface getHeight] + 1}]}]]
        }
        $ownerLayerInterface setPosition [$ownerLayerInterface getXP] $y [$ownerLayerInterface getZP]
    }
}

namespace eval ::HorizontalManeuverAI {
}


