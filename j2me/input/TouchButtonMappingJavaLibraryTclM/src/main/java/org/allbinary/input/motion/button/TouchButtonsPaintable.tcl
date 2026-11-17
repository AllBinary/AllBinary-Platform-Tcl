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
# package org.allbinary.input.motion.button

oo::class create ::TouchButtonsPaintable {
    superclass ::Paintable
}

oo::define ::TouchButtonsPaintable {
    method initFields_TouchButtonsPaintable {} {
        my jset foregroundBasicColor {}
        my jset foregroundColor 0
        my jset basicSetColorUtil {}
        my jset touchButtonFactory {}
        
        
        my jset basicSetColorUtil [::BasicColorSetUtil::getInstance]
        my jset touchButtonFactory [::TouchButtonFactory::getInstance]
        return
    }
    

    constructor {basicColor} {
        next
        my initFields_TouchButtonsPaintable
        my jset foregroundBasicColor $basicColor
        my jset foregroundColor [$basicColor intValue]
    }
    

    method paint {graphics} {
        set list [[my jget touchButtonFactory] getList]
        [my jget basicSetColorUtil] setBasicColorP3 $graphics [my jget foregroundBasicColor] [my jget foregroundColor]
        set touchButton {}
        for {set index [$list size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set touchButton [[$list jget objectArray] get $index]
            $touchButton paint $graphics
        }
        for {set index [$list size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set touchButton [[$list jget objectArray] get $index]
            $touchButton paintHint $graphics
        }
    }
}

namespace eval ::TouchButtonsPaintable {
}


