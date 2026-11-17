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
# package org.allbinary.game.ag.layer.hud.basic.time

oo::class create ::TimeHudWidget {
    superclass ::BasicHud
}

oo::define ::TimeHudWidget {
    method initFields_TimeHudWidget {} {
        my jset TIME_STRING {}
        my jset TIME_CHAR_ARRAY {}
        my jset offset 0
        my jset string {}
        my jset totalDigits 0
        my jset timer {}
        my jset TIME_STRING "Time "
        my jset TIME_CHAR_ARRAY [jarrayfrom [list [scan "T" %c] [scan "i" %c] [scan "m" %c] [scan "e" %c] [scan " " %c]]]
        my jset offset 0
        my jset string [[::PrimitiveLongSingleton::getInstance] jget ZERO]
        my jset totalDigits 1
        
        return
    }
    
    

    constructor {location direction bufferZone basicColor timer} {
        next $location $direction $bufferZone $basicColor
        my initFields_TimeHudWidget
        my jset timer $timer
        my set
        my jset updateMaxHeight 14
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset updateMaxWidth [expr {[$font getSize] * 5}]
        my jset offset [expr {[$font stringWidth [my jget TIME_STRING]] + [::MyFontProcessor::defaultStringWidth $font 3]}]
        next $graphics
    }
    

    method update {} {
        [my jget timer] update
        my set
    }
    

    method set {} {
        my jset string [[my jget timer] getTimeChars]
        my jset totalDigits [[my jget timer] getCurrentTotalDigits]
    }
    

    method getTimer {} {
        return [my jget timer]
    }
    

    method paint {graphics} {
        next $graphics [my jget TIME_CHAR_ARRAY] 0 [[my jget TIME_CHAR_ARRAY] length] [my jget string] 0 [my jget totalDigits] [my jget offset]
    }
}

namespace eval ::TimeHudWidget {
    proc getInstance {location direction basicColor timer} {
        return [::TimeHudWidget new $location $direction 2 $basicColor $timer]
    }
}


