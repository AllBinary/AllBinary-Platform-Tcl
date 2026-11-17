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
# package org.allbinary.layer

oo::class create ::Layer {
    superclass ::JObject
}

oo::define ::Layer {
    method initFields_Layer {} {
        my jset logUtil {}
        my jset x 0
        my jset y 0
        my jset z 0
        my jset width 0
        my jset height 0
        my jset visible false
        my jset logUtil [::LogUtil::getInstance]
        my jset x 0
        my jset y 0
        my jset z 3
        my jset width 0
        my jset height 0
        my jset visible true
        return
    }
    

    constructor {width height} {
        next
        my initFields_Layer
        my setLayerWidth $width
        my setLayerHeight $height
    }
    

    method setPosition {x y z} {
        my jset x $x
        my jset y $y
        my jset z $z
    }
    

    method moveDXY {dx dy} {
        my jset x [jint [expr {[my jget x] + $dx}]]
        my jset y [jint [expr {[my jget y] + $dy}]]
    }
    

    method moveDXYZ {dx dy dz} {
        my jset x [jint [expr {[my jget x] + $dx}]]
        my jset y [jint [expr {[my jget y] + $dy}]]
        my jset z [jint [expr {[my jget z] + $dz}]]
    }
    

    method getXP {} {
        return [my jget x]
    }
    

    method getYP {} {
        return [my jget y]
    }
    

    method getZP {} {
        return [my jget z]
    }
    

    method getWidth {} {
        return [my jget width]
    }
    

    method getHeight {} {
        return [my jget height]
    }
    

    method getDepth {} {
        return 0
    }
    

    method setVisible {visible} {
        my jset visible $visible
    }
    

    method isVisible {} {
        return [my jget visible]
    }
    

    method paint {graphics} {
        set commonStrings [::CommonStrings::getInstance]
        set canvasStrings [::CanvasStrings::getInstance]
        [my jget logUtil] putF [$commonStrings jget NOT_IMPLEMENTED] [self] [$canvasStrings jget PAINT]
    }
    

    method setLayerWidth {width} {
        if {[expr {$width < 0}]} {
            error [jexception IllegalArgumentException {}]
        }
        my jset width $width
    }
    

    method setLayerHeight {height} {
        if {[expr {$height < 0}]} {
            error [jexception IllegalArgumentException {}]
        }
        my jset height $height
    }
    

    method toStringAppend {stringBuffer} {
    }
}

namespace eval ::Layer {
    variable IDValue {}
    variable IDSet 0
    proc staticGet_ID {} {
        variable IDValue
        variable IDSet
        if {!$IDSet} {
            set IDSet 1
            set IDValue [[::SmallIntegerSingletonFactory::getInstance] getAt 0]
        }
        return $IDValue
    }
    proc staticSet_ID {value} {
        variable IDValue
        variable IDSet
        set IDSet 1
        set IDValue $value
    }
}


