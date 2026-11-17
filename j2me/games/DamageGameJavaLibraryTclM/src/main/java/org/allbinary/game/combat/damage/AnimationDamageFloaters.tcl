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
# package org.allbinary.game.combat.damage

oo::class create ::AnimationDamageFloaters {
    superclass ::DamageFloaters
}

oo::define ::AnimationDamageFloaters {
    method initFields_AnimationDamageFloaters {} {
        my jset logUtil {}
        my jset layerInterface {}
        my jset animationInterfaceArray {}
        my jset circularIndexUtil {}
        my jset dx 0
        my jset dy 0
        my jset logUtil [::LogUtil::getInstance]
        
        
        
        
        
        return
    }
    

    constructor {layerInterface animationInterfaceArray dx dy} {
        next
        my initFields_AnimationDamageFloaters
        my jset animationInterfaceArray $animationInterfaceArray
        for {set index [jint [expr {[[my jget animationInterfaceArray] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [[my jget animationInterfaceArray] get $index] setFrame [expr {[[[my jget animationInterfaceArray] get $index] getSize] - 1}]
        }
        my jset layerInterface $layerInterface
        my jset circularIndexUtil [::CircularIndexUtil::createInstance [[my jget animationInterfaceArray] length]]
        my jset dx $dx
        my jset dy $dy
    }
    

    method add {damage} {
        set i [[my jget circularIndexUtil] getIndex]
        [[my jget animationInterfaceArray] get $i] setFrame 0
        [my jget circularIndexUtil] next
    }
    

    method paint {graphics} {
        try {
            set viewPosition [[my jget layerInterface] getViewPosition]
            set x [$viewPosition getX]
            set y [$viewPosition getY]
            for {set index 0} {[expr {$index < [[my jget animationInterfaceArray] length]}]} {jpostincr index 1} {
                set animationInterface [[my jget animationInterfaceArray] get $index]
                if {[expr {[$animationInterface getFrame] < [expr {[$animationInterface getAnimationSize] - 1}]}]} {
                    set delta [expr {[$animationInterface getFrame] * 20}]
                    $animationInterface paintXY $graphics [jint [expr {$x + [my jget dx]}]] [jint [expr {[jint [expr {$y - $delta}]] + [my jget dy]}]]
                    $animationInterface nextFrame
                }
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            set canvasStrings [::CanvasStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$canvasStrings jget PAINT] $e
        }
    }
}

namespace eval ::AnimationDamageFloaters {
}


