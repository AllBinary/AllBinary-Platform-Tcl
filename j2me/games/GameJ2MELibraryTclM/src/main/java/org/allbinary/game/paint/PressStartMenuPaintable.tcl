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

oo::class create ::PressStartMenuPaintable {
    superclass ::Paintable
}

oo::define ::PressStartMenuPaintable {
    method initFields_PressStartMenuPaintable {} {
        my jset displayInfo {}
        my jset PRESS_START {}
        my jset KEY_START {}
        my jset MENU_START {}
        my jset myFontProcessor {}
        my jset startString {}
        my jset timeDelayHelper {}
        my jset flash false
        my jset anchor 0
        my jset beginWidth 0
        my jset line 0
        my jset displayInfo [::DisplayInfoSingleton::getInstance]
        my jset PRESS_START "Press Screen To Start"
        my jset KEY_START "Press or Click F2 To Begin"
        my jset MENU_START "Press Start From The Menu To Begin"
        my jset myFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset startString [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset timeDelayHelper [::TimeDelayHelper new 1100]
        my jset flash false
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        my jset beginWidth 0
        my jset line 0
        return
    }
    

    constructor {} {
        next
        my initFields_PressStartMenuPaintable
        if {[[::TouchScreenFactory::getInstance] isTouch]} {
            my jset startString [my jget PRESS_START]
        } elseif {[::AppletUtil::isAppletLoader [self]]} {
            my jset startString [my jget KEY_START]
        } else {
            my jset startString [my jget MENU_START]
        }
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset beginWidth ([expr {[[$graphics getFont] stringWidth [my jget startString]] >> 1}])
        my jset line [expr {([expr {4 * [::MyFontProcessor::defaultCharWidth $font]}]) + ([expr {[$font getHeight] >> 1}])}]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method paint {graphics} {
        if {[[my jget timeDelayHelper] isTimeTNT]} {
            if {[my isFlash]} {
                my setFlash false
            } else {
                my setFlash true
            }
        }
        if {[my isFlash]} {
            [my jget myFontProcessor] process $graphics
            $graphics drawString [my jget startString] [expr {[[my jget displayInfo] getLastHalfWidth] - [my jget beginWidth]}] [expr {[[my jget displayInfo] getLastHeight] - [my jget line]}] [my jget anchor]
        }
    }
    

    method setFlash {flash} {
        my jset flash $flash
    }
    

    method isFlash {} {
        return [my jget flash]
    }
}

namespace eval ::PressStartMenuPaintable {
}


