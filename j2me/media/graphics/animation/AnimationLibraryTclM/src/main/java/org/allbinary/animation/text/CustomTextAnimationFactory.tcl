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

oo::class create ::CustomTextAnimationFactory {
    superclass ::JObject
}

oo::define ::CustomTextAnimationFactory {
    method initFields_CustomTextAnimationFactory {} {
        my jset logUtil {}
        my jset animationBehaviorFactory {}
        my jset basicColor {}
        my jset text {}
        my jset initScaleHeight 0
        my jset dx 0
        my jset dy 0
        my jset font {}
        my jset scaleProperties {}
        my jset logUtil [::LogUtil::getInstance]
        
        my jset basicColor [[::BasicColorFactory::getInstance] jget BLACK]
        
        
        my jset dx 0
        my jset dy 0
        
        
        return
    }
    
    

    constructor {text fontSize animationBehaviorFactory} {
        next
        my initFields_CustomTextAnimationFactory
        my jset scaleProperties [::ScaleProperties new]
        my jset text $text
        [my jget scaleProperties] jset scaleHeight [jint [expr {$fontSize - ([jdiv $fontSize 4])}]]
        my jset initScaleHeight [[my jget scaleProperties] jget scaleHeight]
        my jset animationBehaviorFactory $animationBehaviorFactory
        my jset font [::Font::getFont [::Font::staticGet_FACE_SYSTEM] [::Font::staticGet_STYLE_PLAIN] [my jget initScaleHeight]]
    }
    

    method getInstance {instanceId} {
        set customTextAnimation {}
        if {[expr {[expr {[my jget dx] != 0}] || [expr {[my jget dy] != 0}]}]} {
            set customTextAnimation [::AdjustCustomTextAnimation new [my jget text] [[my jget scaleProperties] jget scaleHeight] [my jget dx] [my jget dy] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        } else {
            set customTextAnimation [::CustomTextAnimation new [my jget text] [[my jget scaleProperties] jget scaleHeight] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        }
        $customTextAnimation setBasicColorP [my jget basicColor]
        return $customTextAnimation
    }
    

    method setInitialScale {scaleProperties} {
    }
    

    method getWidth {} {
        return [[my jget font] stringWidth [my jget text]]
    }
    

    method getHeight {} {
        return [[my jget font] getHeight]
    }
}

namespace eval ::CustomTextAnimationFactory {
    proc createDXY {text fontSize dx dy animationBehaviorFactory} {
        set customTextAnimationFactory [::CustomTextAnimationFactory new $text $fontSize $animationBehaviorFactory]
        $customTextAnimationFactory jset dx $dx
        $customTextAnimationFactory jset dy $dy
        return $customTextAnimationFactory
    }
}


