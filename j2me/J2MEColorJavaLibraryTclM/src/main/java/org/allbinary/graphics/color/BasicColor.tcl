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
# package org.allbinary.graphics.color

oo::class create ::BasicColor {
    superclass ::JObject
}

oo::define ::BasicColor {
    method initFields_BasicColor {} {
        my jset name {}
        my jset value 0
        my jset redComponent 0.0
        my jset greenComponent 0.0
        my jset blueComponent 0.0
        my jset alphaComponent 0.0
        my jset red 0
        my jset green 0
        my jset blue 0
        my jset alpha 0
        
        
        
        
        
        
        
        
        
        
        return
    }
    

    constructor {alphaValue value name} {
        next
        my initFields_BasicColor
        my jset name $name
        set tempValue 0
        set basicColorUtil [::BasicColorUtil::getInstance]
        if {[$basicColorUtil jget isAlpha]} {
            if {[$basicColorUtil jget ffOpaque]} {
                set tempValue [expr {$alphaValue | $value}]
            } else {
                set tempValue [expr {0x00000000 | $value}]
            }
        } else {
            set tempValue $value
        }
        set alphaInt ([expr {([expr {$tempValue >> 24}]) & 255}])
        my jset alpha [jshort $alphaInt]
        my jset alphaComponent [expr {([expr {double($alphaInt)}]) / 255.0}]
        set redInt ([expr {([expr {$tempValue >> 16}]) & 255}])
        my jset red [jshort $redInt]
        my jset redComponent [expr {([expr {double($redInt)}]) / 255.0}]
        set greenInt ([expr {([expr {$tempValue >> 8}]) & 255}])
        my jset green [jshort $greenInt]
        my jset greenComponent [expr {([expr {double($greenInt)}]) / 255.0}]
        set blueInt ([expr {($tempValue) & 255}])
        my jset blue [jshort $blueInt]
        my jset blueComponent [expr {([expr {double($blueInt)}]) / 255.0}]
        my jset value $tempValue
    }
    

    method intValue {} {
        return [my jget value]
    }
    

    method toInt {} {
        return [my jget value]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "BasicColor: "
        $stringBuffer append "Alpha: "
        $stringBuffer appendshort [my jget alpha]
        $stringBuffer append " Red: "
        $stringBuffer appendshort [my jget red]
        $stringBuffer append " Green: "
        $stringBuffer appendshort [my jget green]
        $stringBuffer append " Blue: "
        $stringBuffer appendshort [my jget blue]
        $stringBuffer append " Value: "
        $stringBuffer appendint [my jget value]
        return [$stringBuffer toString]
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method getRedComponent {} {
        return [my jget redComponent]
    }
    

    method getGreenComponent {} {
        return [my jget greenComponent]
    }
    

    method getBlueComponent {} {
        return [my jget blueComponent]
    }
    

    method getAlphaComponent {} {
        return [my jget alphaComponent]
    }
}

namespace eval ::BasicColor {
}


