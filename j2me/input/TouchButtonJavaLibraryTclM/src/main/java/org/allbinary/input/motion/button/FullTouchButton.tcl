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

oo::class create ::FullTouchButton {
    superclass ::TouchButton
}

oo::define ::FullTouchButton {
    method initFields_FullTouchButton {} {
        return
    }
    
    

    constructor {touchButtonInput animationInterface hintAnimationInterface rawRectangle cellPosition xBorder yBorder} {
        next $touchButtonInput $animationInterface $hintAnimationInterface $rawRectangle $cellPosition $xBorder $yBorder
        my initFields_FullTouchButton
    }
    

    method updateRectangle {} {
        try {
            set pointFactory [::PointFactory::getInstance]
            set x [expr {[[my jget rawRectangle] getWidth] * [[my jget cellPositionP] getColumn]}]
            set y [expr {[[my jget rawRectangle] getHeight] * [[my jget cellPositionP] getRow]}]
            my jset rectangleP [::Rectangle new [$pointFactory createXY $x $y] [expr {[[my jget rawRectangle] getWidth] + ([expr {2 * [my jget xBorder]}])}] [expr {[[my jget rawRectangle] getHeight] + ([expr {2 * [my jget yBorder]}])}]]
            set point [[my jget rectangleP] getPoint]
            my jset animationX [expr {[$point getX] + [my jget xBorder]}]
            my jset animationY [expr {[$point getY] + [my jget yBorder]}]
            my jset hintAnimationY [expr {[expr {[my jget animationY] - [[my jget rectangleP] getHeight]}] >> 1}]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "updateRectangle" $e
        }
    }
}

namespace eval ::FullTouchButton {
    proc createButton {touchButtonInput touchButtonResource rawRectangle cellPosition xBorder yBorder} {
        return [::FullTouchButton new $touchButtonInput [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] get [$touchButtonResource jget RESOURCE]] getInstance 0] [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] get [$touchButtonResource jget HINT]] getInstance 0] $rawRectangle $cellPosition $xBorder $yBorder]
    }
}


