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
# package org.allbinary.graphics.draw

oo::class create ::CanvasDrawLineString {
    superclass ::JObject
}

oo::define ::CanvasDrawLineString {
    method initFields_CanvasDrawLineString {} {
        my jset drawStringUtil {}
        my jset myFontProcessor {}
        my jset x 0
        my jset y 0
        my jset fontHeight 0
        my jset drawStringUtil [::DrawStringUtil::getInstance]
        my jset myFontProcessor [::UpdateMyFontProcessor new [self]]
        
        
        my jset fontHeight 0
        return
    }
    

    constructor {x y} {
        next
        my initFields_CanvasDrawLineString
        my jset x $x
        my jset y $y
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset fontHeight [$font getHeight]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method paint {graphics string line} {
        [my jget myFontProcessor] process $graphics
        [my jget drawStringUtil] drawCenterString $graphics $string 0 [string length $string] [my jget x] [jint [expr {[my jget y] + ([jint [expr {$line * [my jget fontHeight]}]])}]]
    }
}

namespace eval ::CanvasDrawLineString {
    variable NULL_CANVAS_DRAW_LINE_STRINGValue {}
    variable NULL_CANVAS_DRAW_LINE_STRINGSet 0
    proc staticGet_NULL_CANVAS_DRAW_LINE_STRING {} {
        variable NULL_CANVAS_DRAW_LINE_STRINGValue
        variable NULL_CANVAS_DRAW_LINE_STRINGSet
        if {!$NULL_CANVAS_DRAW_LINE_STRINGSet} {
            set NULL_CANVAS_DRAW_LINE_STRINGSet 1
            set NULL_CANVAS_DRAW_LINE_STRINGValue [::CanvasDrawLineString new 0 0]
        }
        return $NULL_CANVAS_DRAW_LINE_STRINGValue
    }
    proc staticSet_NULL_CANVAS_DRAW_LINE_STRING {value} {
        variable NULL_CANVAS_DRAW_LINE_STRINGValue
        variable NULL_CANVAS_DRAW_LINE_STRINGSet
        set NULL_CANVAS_DRAW_LINE_STRINGSet 1
        set NULL_CANVAS_DRAW_LINE_STRINGValue $value
    }
}


