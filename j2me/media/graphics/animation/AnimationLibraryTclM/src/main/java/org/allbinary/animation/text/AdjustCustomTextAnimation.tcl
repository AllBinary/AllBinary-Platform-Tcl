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

oo::class create ::AdjustCustomTextAnimation {
    superclass ::CustomTextAnimation
}

oo::define ::AdjustCustomTextAnimation {
    method initFields_AdjustCustomTextAnimation {} {
        my jset dx 0
        my jset dy 0
        
        
        return
    }
    

    constructor {text fontSize dx dy animationBehavior} {
        next $text $fontSize $animationBehavior
        my initFields_AdjustCustomTextAnimation
        my jset dx $dx
        my jset dy $dy
    }
    

    method getDx {} {
        return [my jget dx]
    }
    

    method setDx {dx} {
        my jset dx $dx
    }
    

    method getDy {} {
        return [my jget dy]
    }
    

    method setDy {dy} {
        my jset dy $dy
    }
    

    method paintXY {graphics x y} {
        next $graphics [jint [expr {$x + [my jget dx]}]] [jint [expr {$y + [my jget dy]}]]
    }
}

namespace eval ::AdjustCustomTextAnimation {
}


