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
# package org.allbinary.game.ag.layer.hud.basic

oo::class create ::NumberStringHud {
    superclass ::BasicHud
}

oo::define ::NumberStringHud {
    method initFields_NumberStringHud {} {
        my jset primitiveLongUtil {}
        my jset prependString {}
        my jset PREPEND_STRING {}
        my jset value 0
        my jset max 0
        my jset offset 0
        my jset valueString {}
        my jset valueTotalDigits 0
        
        
        
        
        
        my jset offset 0
        
        my jset valueTotalDigits 0
        return
    }
    

    constructor {prependString max location direction bufferZone basicColor} {
        next $location $direction $bufferZone $basicColor
        my initFields_NumberStringHud
        my jset prependString $prependString
        my jset PREPEND_STRING [jtochararray $prependString]
        my jset valueString [[[::PrimitiveLongSingleton::getInstance] jget NUMBER_CHAR_ARRAYS] get 0]
        my jset primitiveLongUtil [::PrimitiveLongUtil::createPowerOfTen [jint [expr {$max + 1}]]]
        my jset max $max
        my jset value 0
        if {[expr {$direction == 0}]} {
            error [jexception RuntimeException [[::BasicHudFactory::getInstance] jget DIRECTION_EXCEPTION]]
        }
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset offset [expr {[$font stringWidth [my jget prependString]] + [::MyFontProcessor::defaultCharWidth $font]}]
        next $graphics
    }
    

    method get {} {
        return [my jget value]
    }
    

    method add {value} {
        my set [jint [expr {[my jget value] + $value}]]
    }
    

    method set {value} {
        my jset value $value
        if {[expr {[my jget value] > [my jget max]}]} {
            my jset value 0
        }
        my jset valueString [[my jget primitiveLongUtil] getCharArray [my jget value]]
        my jset valueTotalDigits [[my jget primitiveLongUtil] getCurrentTotalDigits]
    }
    

    method reduce {value} {
        my set [jint [expr {[my jget value] - $value}]]
    }
    

    method paint {graphics} {
        next $graphics [my jget PREPEND_STRING] 0 [[my jget PREPEND_STRING] length] [my jget valueString] 0 [my jget valueTotalDigits] [my jget offset]
    }
    

    method paintXY {graphics x y} {
        [my jget myFontProcessor] process $graphics
        set charArray [my jget PREPEND_STRING]
        set len [[my jget PREPEND_STRING] length]
        set charArray2 [my jget valueString]
        set len2 [my jget valueTotalDigits]
        [my jget basicSetColorUtil] setBasicColorP $graphics [my getBasicColorP]
        $graphics drawChars $charArray 0 $len $x $y 0
        $graphics drawChars $charArray2 0 $len2 [jint [expr {$x - [my jget offset]}]] $y 0
    }
    

    method paintThreed {graphics} {
    }
}

namespace eval ::NumberStringHud {
}


