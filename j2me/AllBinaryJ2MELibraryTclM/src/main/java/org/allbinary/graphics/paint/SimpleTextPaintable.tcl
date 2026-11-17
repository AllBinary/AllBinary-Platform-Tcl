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
# package org.allbinary.graphics.paint

oo::class create ::SimpleTextPaintable {
    superclass ::Paintable
}

oo::define ::SimpleTextPaintable {
    method initFields_SimpleTextPaintable {} {
        my jset displayInfoSingleton {}
        my jset updateMyFontProcessor {}
        my jset myFontProcessor {}
        my jset text {}
        my jset basicColor {}
        my jset topScoresWidth 0
        my jset fontHeight 0
        my jset anchor 0
        my jset displayInfoSingleton [::DisplayInfoSingleton::getInstance]
        my jset updateMyFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset myFontProcessor [my jget updateMyFontProcessor]
        
        
        my jset topScoresWidth 0
        my jset fontHeight 0
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }
    

    constructor {text basicColor} {
        next
        my initFields_SimpleTextPaintable
        my jset text $text
        my jset basicColor $basicColor
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset topScoresWidth ([expr {[$font stringWidth [my jget text]] >> 1}])
        my jset fontHeight [$font getHeight]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        set width [[[my jget displayInfoSingleton] getLast] get [[my jget displayInfoSingleton] jget WIDTH]]
        $graphics setColor [[my getBasicColorP] intValue]
        $graphics drawString [my jget text] [jint [expr {([expr {$width >> 1}]) - [my jget topScoresWidth]}]] [my jget fontHeight] [my jget anchor]
    }
    

    method setBasicColorP {basicColor} {
        my jset basicColor $basicColor
    }
    

    method getBasicColorP {} {
        return [my jget basicColor]
    }
    

    method setText {text} {
        my jset text $text
        my jset myFontProcessor [my jget updateMyFontProcessor]
    }
    

    method getText {} {
        return [my jget text]
    }
}

namespace eval ::SimpleTextPaintable {
}


