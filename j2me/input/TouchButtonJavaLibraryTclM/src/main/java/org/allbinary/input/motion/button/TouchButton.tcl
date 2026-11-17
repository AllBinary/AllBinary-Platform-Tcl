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

oo::class create ::TouchButton {
    superclass ::Paintable
}

oo::define ::TouchButton {
    method initFields_TouchButton {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset touchButtonInput {}
        my jset animationInterface {}
        my jset hintAnimationInterface {}
        my jset rawRectangle {}
        my jset xBorder 0
        my jset yBorder 0
        my jset rectangleP {}
        my jset cellPositionP {}
        my jset animationX 0
        my jset animationY 0
        my jset hintAnimationY 0
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        
        
        
        
        my jset rectangleP [::RectangleFactory::staticGet_SINGLETON]
        
        my jset animationX 0
        my jset animationY 0
        my jset hintAnimationY 0
        return
    }
    
    

    constructor {touchButtonInput animationInterface hintAnimationInterface rawRectangle cellPosition xBorder yBorder} {
        next
        my initFields_TouchButton
        my jset touchButtonInput $touchButtonInput
        my jset animationInterface $animationInterface
        my jset hintAnimationInterface $hintAnimationInterface
        my jset rawRectangle $rawRectangle
        my jset cellPositionP $cellPosition
        my jset xBorder $xBorder
        my jset yBorder $yBorder
        my updateRectangle
        [my jget logUtil] putF [[[[::StringMaker new] append "Created: "] append [my toString]] toString] [self] [[my jget commonStrings] jget CONSTRUCTOR]
    }
    

    method paintHint {graphics} {
        [my jget hintAnimationInterface] paintXY $graphics [my jget animationX] [my jget hintAnimationY]
    }
    

    method paint {graphics} {
        [my jget animationInterface] paintXY $graphics [my jget animationX] [my jget animationY]
    }
    

    method updateRectangle {} {
        try {
            set pointFactory [::PointFactory::getInstance]
            set x [expr {[[my jget rawRectangle] getWidth] * [[my jget cellPositionP] getColumn]}]
            set y [expr {[[my jget rawRectangle] getHeight] * [[my jget cellPositionP] getRow]}]
            my jset rectangleP [::Rectangle new [$pointFactory createXY [jint [expr {$x + [my jget xBorder]}]] [jint [expr {$y + [my jget yBorder]}]]] [[my jget rawRectangle] getWidth] [[my jget rawRectangle] getHeight]]
            set point [[my jget rectangleP] getPoint]
            my jset animationX [$point getX]
            my jset animationY [$point getY]
            my jset hintAnimationY [jint [expr {[my jget animationY] - 32}]]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "updateRectangle" $e
        }
    }
    

    method getCellPosition {} {
        return [my jget cellPositionP]
    }
    

    method getRectangle {} {
        return [my jget rectangleP]
    }
    

    method getTouchButtonInput {} {
        return [my jget touchButtonInput]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        set stringUtil [::StringUtil::getInstance]
        $stringBuffer append "TouchButton: "
        $stringBuffer append [$stringUtil toString1 [my getRectangle]]
        $stringBuffer append " CellPosition: "
        $stringBuffer append [$stringUtil toString1 [my jget cellPositionP]]
        $stringBuffer append " xBorder: "
        $stringBuffer appendint [my jget xBorder]
        $stringBuffer append " yBorder: "
        $stringBuffer appendint [my jget yBorder]
        return [$stringBuffer toString]
    }
}

namespace eval ::TouchButton {
    proc createButton {touchButtonInput touchButtonResource rawRectangle cellPosition xBorder yBorder} {
        return [::TouchButton new $touchButtonInput [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] get [$touchButtonResource jget RESOURCE]] getInstance 0] [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] get [$touchButtonResource jget HINT]] getInstance 0] $rawRectangle $cellPosition $xBorder $yBorder]
    }
}


