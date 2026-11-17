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
# package org.allbinary.game.paint.help

oo::class create ::HelpPaintable {
    superclass ::Paintable
}

oo::define ::HelpPaintable {
    method initFields_HelpPaintable {} {
        my jset displayInfo {}
        my jset updateMyFontProcessor {}
        my jset myFontProcessor {}
        my jset anchor 0
        my jset title {}
        my jset inputInfo {}
        my jset basicColor {}
        my jset titleBeginWidth 0
        my jset beginWidthArray {}
        my jset charHeight 0
        my jset displayInfo [::DisplayInfoSingleton::getInstance]
        my jset updateMyFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset myFontProcessor [my jget updateMyFontProcessor]
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        
        my jset inputInfo [[::StringUtil::getInstance] getArrayInstance]
        
        my jset titleBeginWidth 0
        my jset beginWidthArray [[::NullUtil::getInstance] jget NULL_INT_ARRAY]
        my jset charHeight 0
        return
    }
    

    constructor {title backgroundBasicColor basicColor} {
        next
        my initFields_HelpPaintable
        my jset title $title
        my jset basicColor $basicColor
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset titleBeginWidth ([expr {[$font stringWidth [my jget title]] >> 1}])
        my jset charHeight [$font getHeight]
        set size [[my jget inputInfo] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [my jget beginWidthArray] set $index ([expr {[$font stringWidth [[my jget inputInfo] get $index]] >> 1}])
        }
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method setInputInfoP {inputInfo} {
        my jset inputInfo $inputInfo
        my jset beginWidthArray [jarray [[my jget inputInfo] length] 0]
        my jset myFontProcessor [my jget updateMyFontProcessor]
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        set halfWidth [[my jget displayInfo] getLastHalfWidth]
        $graphics setColor [[my jget basicColor] intValue]
        $graphics drawString [my jget title] [jint [expr {$halfWidth - [my jget titleBeginWidth]}]] [my jget charHeight] [my jget anchor]
        set size [[my jget inputInfo] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $graphics drawString [[my jget inputInfo] get $index] [jint [expr {$halfWidth - [[my jget beginWidthArray] get $index]}]] [jint [expr {([jint [expr {$index + 3}]]) * [my jget charHeight]}]] [my jget anchor]
        }
    }
}

namespace eval ::HelpPaintable {
}


