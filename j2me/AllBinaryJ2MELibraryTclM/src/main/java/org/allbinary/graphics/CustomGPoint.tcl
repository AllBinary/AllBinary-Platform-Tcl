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
# package org.allbinary.graphics

oo::class create ::CustomGPoint {
    superclass ::GPoint
}

oo::define ::CustomGPoint {
    method initFields_CustomGPoint {} {
        my jset cx 0
        my jset cy 0
        my jset cz 0
        my jset cx 0
        my jset cy 0
        my jset cz 0
        return
    }
    
    
    

    constructor {x y z} {
        next $x $y $z
        my initFields_CustomGPoint
    }
    

    method setX {x} {
        my jset cx $x
    }
    

    method getX {} {
        return [my jget cx]
    }
    

    method setY {y} {
        my jset cy $y
    }
    

    method getY {} {
        return [my jget cy]
    }
    

    method setZ {z} {
        my jset cz $z
    }
    

    method getZ {} {
        return [my jget cz]
    }
}

namespace eval ::CustomGPoint {
    variable NULL_CUSTOM_POINTValue {}
    variable NULL_CUSTOM_POINTSet 0
    proc staticGet_NULL_CUSTOM_POINT {} {
        variable NULL_CUSTOM_POINTValue
        variable NULL_CUSTOM_POINTSet
        if {!$NULL_CUSTOM_POINTSet} {
            set NULL_CUSTOM_POINTSet 1
            set NULL_CUSTOM_POINTValue [::CustomGPoint new 0 0 0]
        }
        return $NULL_CUSTOM_POINTValue
    }
    proc staticSet_NULL_CUSTOM_POINT {value} {
        variable NULL_CUSTOM_POINTValue
        variable NULL_CUSTOM_POINTSet
        set NULL_CUSTOM_POINTSet 1
        set NULL_CUSTOM_POINTValue $value
    }
    proc getInstance {point} {
        return [::CustomGPoint new [$point getX] [$point getY] [$point getZ]]
    }
    proc getInstance3 {x y} {
        return [::CustomGPoint new $x $y 3]
    }
}


