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
# package org.allbinary.animation

oo::class create ::IndexedAnimation {
    superclass ::Animation
}

oo::define ::IndexedAnimation {
    method initFields_IndexedAnimation {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset animationBehaviorP {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        return
    }
    

    constructor {animationBehavior} {
        next
        my initFields_IndexedAnimation
        my jset animationBehaviorP $animationBehavior
    }
    

    method getAnimationBehavior {} {
        return [my jget animationBehaviorP]
    }
    

    method reset {} {
        [my jget animationBehaviorP] reset
        my setFrame 0
    }
    

    method setFrame {index} {
    }
    

    method getFrame {} {
        return 0
    }
    

    method getAnimationSize {} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method getSize {} {
        return 0
    }
    

    method previousFrame {} {
    }
    

    method isLastFrame {} {
        if {[expr {[my getFrame] == [jint [expr {[my getSize] - 1}]]}]} {
            return true
        } else {
            return false
        }
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method setState {indexedAnimation} {
        my setFrame [$indexedAnimation getFrame]
        my setDx [$indexedAnimation getDx]
        my setDy [$indexedAnimation getDy]
    }
    

    method getWidth {} {
        return 0
    }
    

    method getHeight {} {
        return 0
    }
}

namespace eval ::IndexedAnimation {
}


