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
# package org.allbinary.game.paint

#J2MEForJ2ME
oo::class create ::AboutPaintable {
    superclass ::Paintable
}

oo::define ::AboutPaintable {
    method initFields_AboutPaintable {} {
        my jset displayInfoSingleton {}
        my jset ABOUT {}
        my jset info {}
        my jset developers {}
        my jset paintableArray {}
        my jset myFontProcessor {}
        my jset charHeight 0
        my jset aboutBeginWidth 0
        my jset infoBeginWidth {}
        my jset developersBeginWidth {}
        my jset anchor 0
        my jset displayInfoSingleton [::DisplayInfoSingleton::getInstance]
        my jset ABOUT [[::CanvasStrings::getInstance] jget ABOUT]
        
        
        my jset paintableArray [jarrayfrom [list [self]]]
        my jset myFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset charHeight 0
        my jset aboutBeginWidth 0
        
        
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }
    
    

    constructor {info developers} {
        next
        my initFields_AboutPaintable
        my jset info $info
        my jset infoBeginWidth [jarray [[my jget info] length] 0]
        my jset developers $developers
        my jset developersBeginWidth [jarray [[my jget developers] length] 0]
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset charHeight [$font getHeight]
        my jset aboutBeginWidth ([expr {[$font stringWidth [my jget ABOUT]] >> 1}])
        set infoSize [[my jget info] length]
        for {set index 0} {[expr {$index < $infoSize}]} {jpostincr index 1} {
            [my jget infoBeginWidth] set $index ([expr {[$font stringWidth [[my jget info] get $index]] >> 1}])
        }
        set size [[my jget developers] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [my jget developersBeginWidth] set $index ([expr {[$font stringWidth [[my jget developers] get $index]] >> 1}])
        }
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method getPaintableArrayInstance {} {
        return [my jget paintableArray]
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        set halfWidth [[my jget displayInfoSingleton] getLastHalfWidth]
        $graphics drawString [my jget ABOUT] [jint [expr {$halfWidth - [my jget aboutBeginWidth]}]] [jint [expr {2 * [my jget charHeight]}]] [my jget anchor]
        set infoSize [[my jget info] length]
        for {set index 0} {[expr {$index < $infoSize}]} {jpostincr index 1} {
            $graphics drawString [[my jget info] get $index] [jint [expr {$halfWidth - [[my jget infoBeginWidth] get $index]}]] [jint [expr {([jint [expr {4 + $index}]]) * [my jget charHeight]}]] [my jget anchor]
        }
        set size [[my jget developers] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $graphics drawString [[my jget developers] get $index] [jint [expr {$halfWidth - [[my jget developersBeginWidth] get $index]}]] [jint [expr {([jint [expr {[jint [expr {5 + $infoSize}]] + $index}]]) * [my jget charHeight]}]] [my jget anchor]
        }
    }
}

namespace eval ::AboutPaintable {
    proc getInstance {info developers} {
        return [::AboutPaintable new $info $developers]
    }
}


