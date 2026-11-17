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
# package org.allbinary.animation

oo::class create ::IndexedAnimationBehaviorFactory {
    superclass ::AnimationBehaviorFactory
}

oo::define ::IndexedAnimationBehaviorFactory {
    method initFields_IndexedAnimationBehaviorFactory {} {
        my jset frameDelayTime 0
        my jset loopTotal 0
        
        
        return
    }
    

    constructor {loopTotal frameDelayTime} {
        next
        my initFields_IndexedAnimationBehaviorFactory
        my jset loopTotal $loopTotal
        my jset frameDelayTime $frameDelayTime
    }
    

    method getOrCreateInstance {} {
        return [::IndexedAnimationBehavior new [my jget loopTotal] [my jget frameDelayTime]]
    }
}

namespace eval ::IndexedAnimationBehaviorFactory {
}


