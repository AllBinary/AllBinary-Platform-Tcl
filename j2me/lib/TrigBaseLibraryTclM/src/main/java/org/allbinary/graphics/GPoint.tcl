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

oo::class create ::GPoint {
    superclass ::JObject
}

oo::define ::GPoint {
    method initFields_GPoint {} {
        my jset x 0
        my jset y 0
        my jset z 0
        
        
        
        return
    }
    
    

    constructor {x y z} {
        next
        my initFields_GPoint
        my jset x $x
        my jset y $y
        my jset z $z
    }
    

    method getX {} {
        return [my jget x]
    }
    

    method getY {} {
        return [my jget y]
    }
    

    method getZ {} {
        return [my jget z]
    }
    

    method getRawX {} {
        return [my jget x]
    }
    

    method getRawY {} {
        return [my jget y]
    }
    

    method getRawZ {} {
        return [my jget z]
    }
    

    method toString {} {
        return [::GPoint::toStringStatic [my getX] [my getY] [my getZ]]
    }
    
}

namespace eval ::GPoint {
    variable POINT_LABELValue {}
    variable POINT_LABELSet 0
    proc staticGet_POINT_LABEL {} {
        variable POINT_LABELValue
        variable POINT_LABELSet
        if {!$POINT_LABELSet} {
            set POINT_LABELSet 1
            set POINT_LABELValue "Point: "
        }
        return $POINT_LABELValue
    }
    proc staticSet_POINT_LABEL {value} {
        variable POINT_LABELValue
        variable POINT_LABELSet
        set POINT_LABELSet 1
        set POINT_LABELValue $value
    }
    proc getInstance {point} {
        return [::GPoint new [$point getX] [$point getY] [$point getZ]]
    }
    proc toStringStatic {x y z} {
        set stringBuffer [::StringMaker new]
        set positionStrings [::PositionStrings::getInstance]
        $stringBuffer append [::GPoint::staticGet_POINT_LABEL]
        $stringBuffer append [$positionStrings jget X_LABEL]
        $stringBuffer appendint $x
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append [$positionStrings jget Y_LABEL]
        $stringBuffer appendint $y
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append [$positionStrings jget Z_LABEL]
        $stringBuffer appendint $z
        return [$stringBuffer toString]
    }
}


