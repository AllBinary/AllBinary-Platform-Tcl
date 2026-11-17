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

oo::class create ::IndexedAnimationBehavior {
    superclass ::AnimationBehavior
}

oo::define ::IndexedAnimationBehavior {
    method initFields_IndexedAnimationBehavior {} {
        my jset frameDelayTime 0
        my jset loopTotal 0
        my jset elapsedTime 0
        my jset loopIndex 0
        
        
        my jset elapsedTime 0
        my jset loopIndex 0
        return
    }
    

    constructor {loopTotal frameDelayTime} {
        next
        my initFields_IndexedAnimationBehavior
        my jset loopTotal $loopTotal
        my jset frameDelayTime $frameDelayTime
    }
    

    method reset {} {
        my jset loopIndex 0
    }
}

namespace eval ::IndexedAnimationBehavior {
}


