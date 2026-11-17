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

oo::class create ::RectangleCollisionPointUtil {
    superclass ::JObject
}

oo::define ::RectangleCollisionPointUtil {
    method initFields_RectangleCollisionPointUtil {} {
        return
    }
    

    constructor {} {
        next
        my initFields_RectangleCollisionPointUtil
    }
    
    
}

namespace eval ::RectangleCollisionPointUtil {
    proc allPointsInside {rectX1 rectY1 rectX2 rectY2 list} {
        set rectangleCollisionUtil [::RectangleCollisionUtil::getInstance]
        set point {}
        for {set index [$list size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set point [[$list jget objectArray] get $index]
            if {[expr {![$rectangleCollisionUtil isInside $rectX1 $rectY1 $rectX2 $rectY2 [$point getX] [$point getY]]}]} {
                return false
            }
        }
        return true
    }
    proc allPointsInsideCell {rectX1 rectY1 rectX2 rectY2 list xCellSize yCellSize} {
        set rectangleCollisionUtil [::RectangleCollisionUtil::getInstance]
        set point {}
        for {set index [$list size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set point [[$list jget objectArray] get $index]
            if {[expr {![$rectangleCollisionUtil isInside $rectX1 $rectY1 $rectX2 $rectY2 [expr {[$point getX] * $xCellSize}] [expr {[$point getY] * $yCellSize}]]}]} {
                return false
            }
        }
        return true
    }
}


