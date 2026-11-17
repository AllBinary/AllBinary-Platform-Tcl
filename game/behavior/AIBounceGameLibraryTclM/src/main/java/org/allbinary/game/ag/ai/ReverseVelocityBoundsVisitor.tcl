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

oo::class create ::ReverseVelocityBoundsVisitor {
    superclass ::JObject
}

oo::define ::ReverseVelocityBoundsVisitor {
    method initFields_ReverseVelocityBoundsVisitor {} {
        my jset logUtil {}
        my jset velocityInterface {}
        my jset layerInterface {}
        my jset logUtil [::LogUtil::getInstance]
        
        
        return
    }
    

    constructor {layerInterface} {
        next
        my initFields_ReverseVelocityBoundsVisitor
        my jset layerInterface $layerInterface
        set velocityInterfaceCompositeInterface $layerInterface
        my jset velocityInterface [$velocityInterfaceCompositeInterface getVelocityProperties]
    }
    

    method getX {} {
        return [[my jget layerInterface] getXP]
    }
    

    method getY {} {
        return [[my jget layerInterface] getYP]
    }
    

    method minX {} {
        if {[expr {[[[my jget velocityInterface] getVelocityXBasicDecimalP] getUnscaled] < 0}]} {
            [[my jget velocityInterface] getVelocityXBasicDecimalP] multiplyint [expr {-1}]
        }
    }
    

    method maxX {} {
        if {[expr {[[[my jget velocityInterface] getVelocityXBasicDecimalP] getUnscaled] > 0}]} {
            [[my jget velocityInterface] getVelocityXBasicDecimalP] multiplyint [expr {-1}]
        }
    }
    

    method minY {} {
        if {[expr {[[[my jget velocityInterface] getVelocityYBasicDecimalP] getUnscaled] < 0}]} {
            [[my jget velocityInterface] getVelocityYBasicDecimalP] multiplyint [expr {-1}]
        }
    }
    

    method maxY {} {
        if {[expr {[[[my jget velocityInterface] getVelocityYBasicDecimalP] getUnscaled] > 0}]} {
            [[my jget velocityInterface] getVelocityYBasicDecimalP] multiplyint [expr {-1}]
        }
    }
}

namespace eval ::ReverseVelocityBoundsVisitor {
}


