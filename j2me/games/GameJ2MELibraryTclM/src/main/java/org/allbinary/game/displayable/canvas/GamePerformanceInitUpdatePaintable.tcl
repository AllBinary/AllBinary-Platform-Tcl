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
# package org.allbinary.game.displayable.canvas

oo::class create ::GamePerformanceInitUpdatePaintable {
    superclass ::InitUpdatePaintable
}

oo::define ::GamePerformanceInitUpdatePaintable {
    method initFields_GamePerformanceInitUpdatePaintable {} {
        my jset halfHeight 0
        my jset yArray {}
        my jset myFontProcessor {}
        my jset baseRefreshHelperCharArray {}
        my jset defaultStringWidth 0
        my jset RED 0
        my jset halfHeight [[::DisplayInfoSingleton::getInstance] getLastHalfHeight]
        my jset yArray [jarrayfrom [list [jint [expr {[my jget halfHeight] + 30}]] [jint [expr {[my jget halfHeight] + 30}]] [jint [expr {[jint [expr {[my jget halfHeight] + 30}]] + 15}]] [jint [expr {[jint [expr {[my jget halfHeight] + 30}]] + 15}]] [jint [expr {[jint [expr {[my jget halfHeight] + 30}]] + 30}]] [jint [expr {[jint [expr {[my jget halfHeight] + 30}]] + 30}]] [jint [expr {[jint [expr {[my jget halfHeight] + 30}]] + 45}]] [jint [expr {[jint [expr {[my jget halfHeight] + 30}]] + 45}]]]]
        my jset myFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset baseRefreshHelperCharArray [jarrayof 0 {jarray 0 0}]
        my jset defaultStringWidth 0
        my jset RED [[[::BasicColorFactory::getInstance] jget RED] intValue]
        return
    }

    constructor {} {
        next
        my initFields_GamePerformanceInitUpdatePaintable
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset defaultStringWidth [::MyFontProcessor::defaultStringWidth $font 2]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method init {} {
    }
    

    method update {} {
        my jset baseRefreshHelperCharArray [[::GameStatisticsFactory::getInstance] to2DCharArray]
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        $graphics setColor [my jget RED]
        set charArray {}
        set charArray2 {}
        set size2 0
        set size3 0
        set size [jint [expr {[[my jget baseRefreshHelperCharArray] length] - 2}]]
        for {set index $size} {[expr {$index >= 0}]} {set index [jint [expr {$index - 2}]]} {
            set charArray [[my jget baseRefreshHelperCharArray] get $index]
            set charArray2 [[my jget baseRefreshHelperCharArray] get [jint [expr {$index + 1}]]]
            set size2 [$charArray length]
            set size3 [$charArray2 length]
            $graphics drawChars $charArray 0 $size2 0 [[my jget yArray] get $index] 0
            $graphics drawChars $charArray2 0 $size3 [jint [expr {$size2 * [my jget defaultStringWidth]}]] [[my jget yArray] get [jint [expr {$index + 1}]]] 0
        }
    }
}

namespace eval ::GamePerformanceInitUpdatePaintable {
}


