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

oo::class create ::RectangleCollisionUtil {
    superclass ::JObject
}

oo::define ::RectangleCollisionUtil {
    method initFields_RectangleCollisionUtil {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_RectangleCollisionUtil
    }
    

    method isCollision {rectX1 rectY1 rectX2 rectY2 rect2X1 rect2Y1 rect2X2 rect2Y2} {
        if {[expr {[expr {[expr {[expr {$rect2X1 >= $rectX2}] || [expr {$rect2Y1 >= $rectY2}]}] || [expr {$rect2X2 <= $rectX1}]}] || [expr {$rect2Y2 <= $rectY1}]}]} {
            return false
        } else {
            return true
        }
    }
    

    method isInside {rectX1 rectY1 rectX2 rectY2 x y} {
        if {[expr {[expr {[expr {[expr {$x >= $rectX2}] || [expr {$y >= $rectY2}]}] || [expr {$x <= $rectX1}]}] || [expr {$y <= $rectY1}]}]} {
            return false
        } else {
            return true
        }
    }
}

namespace eval ::RectangleCollisionUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::RectangleCollisionUtil new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::RectangleCollisionUtil::staticGet_instance]
    }
}


