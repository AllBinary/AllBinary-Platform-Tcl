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

oo::class create ::CustomTextAnimation {
    superclass ::TextAnimation
}

oo::define ::CustomTextAnimation {
    method initFields_CustomTextAnimation {} {
        my jset fontDebugFactory {}
        my jset fontSize 0
        my jset font {}
        my jset lastText {}
        my jset hasChanged false
        my jset textWidth 0
        my jset fontDebugFactory [::FontDebugFactory::getInstance]
        
        
        my jset lastText [[::StringUtil::getInstance] jget INIT_STRING]
        my jset hasChanged true
        my jset textWidth 0
        return
    }
    

    constructor {text fontSize animationBehavior} {
        next $text $animationBehavior
        my initFields_CustomTextAnimation
        my jset fontSize $fontSize
        my jset font [::Font::getFont [::Font::staticGet_FACE_SYSTEM] [::Font::staticGet_STYLE_PLAIN] $fontSize]
    }
    

    method paintXY {graphics x y} {
        [my jget myFontProcessor] process $graphics
        set existingFont [$graphics getFont]
        [my jget fontDebugFactory] setFont [my jget font] $graphics
        next $graphics $x $y
        [my jget fontDebugFactory] setFont $existingFont $graphics
    }
    

    method setScale {scaleX scaleY} {
        if {[expr {$scaleX != $scaleY}]} {
            error [jexception RuntimeException {}]
        }
        my jset hasChanged true
        my jset font [::Font::getFont [::Font::staticGet_FACE_SYSTEM] [::Font::staticGet_STYLE_PLAIN] [jint [jd2i ([expr {[expr {double([my jget fontSize])}] * $scaleX}])]]]
    }
    

    method setTextWithOnMeasure {text textChangeListener} {
        next $text $textChangeListener
    }
    

    method setText {text} {
        if {[expr {[my jget lastText] ne $text}]} {
            my jset hasChanged true
            my jset lastText $text
            next $text
        }
    }
    

    method getText {} {
        return [my jget lastText]
    }
    

    method getWidth {} {
        if {[my jget hasChanged]} {
            my jset textWidth [[my jget font] stringWidth [[my jget textArrayP] get 0]]
            my jset hasChanged false
        }
        return [my jget textWidth]
    }
    

    method getFontHeight {} {
        return [[my jget font] getHeight]
    }
}

namespace eval ::CustomTextAnimation {
}


