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
# package org.allbinary.animation.text

oo::class create ::TextAnimation {
    superclass ::IndexedAnimation
}

oo::define ::TextAnimation {
    method initFields_TextAnimation {} {
        my jset updateMyFontProcessor {}
        my jset myFontProcessor {}
        my jset textArrayP {}
        my jset anchor 0
        my jset fontHeight 0
        my jset offsetY 0
        my jset textChangeListener {}
        my jset updateMyFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset myFontProcessor [my jget updateMyFontProcessor]
        my jset textArrayP [[::StringUtil::getInstance] jget ONE_EMPTY_STRING_ARRAY]
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        my jset fontHeight 0
        my jset offsetY 0
        my jset textChangeListener [::TextChangeListener::getInstance]
        return
    }
    

    constructor {text animationBehavior} {
        next $animationBehavior
        my initFields_TextAnimation
        my setText $text
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset fontHeight [$font getHeight]
        set adjustedFontHeight [jint [jd2i [expr {-([expr {[expr {double([my jget fontHeight])}] * 2.00}])}]]]
        my jset offsetY [expr {[[::SWTJOGLProcessor::getInstance] isJOGL] ? $adjustedFontHeight : 0}]
        [my jget textChangeListener] onMeasure
        my jset textChangeListener [::TextChangeListener::getInstance]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method nextFrame {} {
    }
    

    method paintXY {graphics x y} {
        [my jget myFontProcessor] process $graphics
        my paintXYNoUpdate $graphics $x $y
    }
    

    method paintXYNoUpdate {graphics x y} {
        [my jget basicSetColorUtil] setBasicColorP3 $graphics [my getBasicColorP] [my getColor]
        set size [[my jget textArrayP] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $graphics drawString [[my jget textArrayP] get $index] $x [jint [expr {[jint [expr {$y + [my jget offsetY]}]] + ([jint [expr {$index * [my jget fontHeight]}]])}]] [my jget anchor]
        }
    }
    

    method setTextWithOnMeasure {text textChangeListener} {
        my setText $text
        my jset textChangeListener $textChangeListener
    }
    

    method setText {text} {
        set list [::BasicArrayListD new]
        if {[expr {[string length $text] > 0}]} {
            set index 0
            set startIndex 0
            set endIndex 0
            while {[expr {$index >= 0}]} {
                set startIndex $index
                set index [string first [scan "\n" %c] $text]
                set endIndex $index
                if {[expr {$index < 0}]} {
                    set endIndex [string length $text]
                }
                $list add [jsubstring $text $startIndex $endIndex]
                if {[expr {$index < 0}]} {
                    break
                }
                jpostincr index 1
            }
        }
        if {[expr {[$list size] > 0}]} {
            set textArray [jarray [$list size] {}]
            set size [$list size]
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                $textArray set $index [$list get $index]
            }
            my jset textArrayP $textArray
        } else {
            my jset textArrayP [[::StringUtil::getInstance] jget ONE_EMPTY_STRING_ARRAY]
        }
        my jset myFontProcessor [my jget updateMyFontProcessor]
    }
    

    method getTextArray {} {
        return [my jget textArrayP]
    }
    

    method getFontHeight {} {
        return [my jget fontHeight]
    }
}

namespace eval ::TextAnimation {
}


