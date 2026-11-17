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
# package org.allbinary.math

oo::class create ::AngleIncrementInfo {
    superclass ::JObject
}

oo::define ::AngleIncrementInfo {
    method initFields_AngleIncrementInfo {} {
        my jset angleIncrement 0
        my jset DOWN_FRAME {}
        my jset UP_FRAME {}
        my jset LEFT_FRAME {}
        my jset RIGHT_FRAME {}
        my jset frameUtil {}
        
        
        
        
        
        my jset frameUtil [::FrameUtil::getInstance]
        return
    }
    

    constructor {angleIncrement} {
        next
        my initFields_AngleIncrementInfo
        my jset angleIncrement $angleIncrement
        set angleFactory [::AngleFactory::getInstance]
        set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
        my jset DOWN_FRAME [$smallIntegerSingletonFactory getAt [expr {[[$angleFactory jget DOWN] getValue] / [my jget angleIncrement]}]]
        my jset UP_FRAME [$smallIntegerSingletonFactory getAt [jint [[$angleFactory jget UP] getValue]]]
        my jset LEFT_FRAME [$smallIntegerSingletonFactory getAt [expr {[[$angleFactory jget LEFT] getValue] / [my jget angleIncrement]}]]
        my jset RIGHT_FRAME [$smallIntegerSingletonFactory getAt [expr {[[$angleFactory jget RIGHT] getValue] / [my jget angleIncrement]}]]
    }
    

    method getFrameAngle {frame} {
        return [[my jget frameUtil] getFrameAngle $frame [jint [my jget angleIncrement]]]
    }
    

    method getAngleIncrement {} {
        return [my jget angleIncrement]
    }
    

    method toString {} {
        return [[[[::StringMaker new] append [::AngleIncrementInfo::staticGet_INCREMENT]] appendshort [my jget angleIncrement]] toString]
    }
    

    method getClosestGeneralDirection {angle} {
        set closestDirection [[::SmallIntegerSingletonFactory::getInstance] getAt 360]
        if {[expr {[expr {[[my jget UP_FRAME] intValue] - $angle}] < [expr {[$closestDirection intValue] - $angle}]}]} {
            set closestDirection [my jget UP_FRAME]
        }
        if {[expr {[expr {[[my jget DOWN_FRAME] intValue] - $angle}] < [expr {[$closestDirection intValue] - $angle}]}]} {
            set closestDirection [my jget DOWN_FRAME]
        }
        if {[expr {[expr {[[my jget LEFT_FRAME] intValue] - $angle}] < [expr {[$closestDirection intValue] - $angle}]}]} {
            set closestDirection [my jget LEFT_FRAME]
        }
        if {[expr {[expr {[[my jget RIGHT_FRAME] intValue] - $angle}] < [expr {[$closestDirection intValue] - $angle}]}]} {
            set closestDirection [my jget RIGHT_FRAME]
        }
        return [$closestDirection intValue]
    }
}

namespace eval ::AngleIncrementInfo {
    variable INCREMENTValue {}
    variable INCREMENTSet 0
    proc staticGet_INCREMENT {} {
        variable INCREMENTValue
        variable INCREMENTSet
        if {!$INCREMENTSet} {
            set INCREMENTSet 1
            set INCREMENTValue "Inc: "
        }
        return $INCREMENTValue
    }
    proc staticSet_INCREMENT {value} {
        variable INCREMENTValue
        variable INCREMENTSet
        set INCREMENTSet 1
        set INCREMENTValue $value
    }
}


