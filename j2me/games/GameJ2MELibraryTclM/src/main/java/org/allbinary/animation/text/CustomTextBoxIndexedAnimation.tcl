# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

oo::class create ::CustomTextBoxIndexedAnimation {
    superclass ::IndexedAnimation
}

oo::define ::CustomTextBoxIndexedAnimation {
    method initFields_CustomTextBoxIndexedAnimation {} {
        my jset customTextBox {}
        my jset lastText {}
        my jset hasChanged false
        my jset textChangeListener {}
        
        my jset lastText [[::StringUtil::getInstance] jget INIT_STRING]
        my jset hasChanged true
        my jset textChangeListener [::TextChangeListener::getInstance]
        return
    }
    

    constructor {customTextBox} {
        next [::AnimationBehavior::getInstance]
        my initFields_CustomTextBoxIndexedAnimation
        my jset customTextBox $customTextBox
    }
    

    method setBasicColorP {basicColor} {
        [[my jget customTextBox] getTextFieldItem] setForegroundBasicColorP $basicColor
    }
    

    method setBackgroundBasicColorP {basicColor} {
        [[my jget customTextBox] getTextFieldItem] setBackgroundBasicColorP $basicColor
    }
    

    method setTextWithOnMeasure {text textChangeListener} {
        my setText $text
        my jset textChangeListener $textChangeListener
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        [my jget textChangeListener] onMeasure
        my jset textChangeListener [::TextChangeListener::getInstance]
    }
    

    method setText {text} {
        if {[expr {[my jget lastText] ne $text}]} {
            my jset hasChanged true
            my jset lastText $text
            [[my jget customTextBox] getTextFieldItem] setString $text
        }
    }
    

    method getText {} {
        return [[[my jget customTextBox] getTextFieldItem] getString]
    }
    

    method onEventRaw {keyCode deviceId repeated} {
        [my jget customTextBox] onEventRaw $keyCode $deviceId $repeated
    }
    

    method getFontHeight {} {
        return [[[my jget customTextBox] getTextFieldItem] getFontHeight]
    }
    

    method paintXY {graphics x y} {
        [my jget customTextBox] paintXY $graphics $x $y
    }
    

    method paintThreedXYZ {graphics x y z} {
    }
    

    method getWidth {} {
        return [next]
    }
}

namespace eval ::CustomTextBoxIndexedAnimation {
}


