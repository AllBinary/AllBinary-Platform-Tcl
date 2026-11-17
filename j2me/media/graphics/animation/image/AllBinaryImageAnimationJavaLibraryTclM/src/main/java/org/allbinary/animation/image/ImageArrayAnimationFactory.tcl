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
# package org.allbinary.animation.image

oo::class create ::ImageArrayAnimationFactory {
    superclass ::JObject
}

oo::define ::ImageArrayAnimationFactory {
    method initFields_ImageArrayAnimationFactory {} {
        my jset dx 0
        my jset dy 0
        my jset imageArray {}
        my jset animationBehaviorFactory {}
        my jset dx 0
        my jset dy 0
        
        
        return
    }
    

    constructor {imageArray dx dy animationBehaviorFactory} {
        next
        my initFields_ImageArrayAnimationFactory
        my jset imageArray $imageArray
        my jset animationBehaviorFactory $animationBehaviorFactory
        my jset dx $dx
        my jset dy $dy
    }
    

    method getInstance {instanceId} {
        if {[expr {[expr {[my jget dx] != 0}] || [expr {[my jget dy] != 0}]}]} {
            return [::AdjustedImageArrayAnimation new [my jget imageArray] [my jget dx] [my jget dy] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        } else {
            return [::ImageArrayAnimation new [my jget imageArray] [::AnimationBehavior::getInstance]]
        }
    }
    

    method setInitialScale {scaleProperties} {
    }
}

namespace eval ::ImageArrayAnimationFactory {
}


