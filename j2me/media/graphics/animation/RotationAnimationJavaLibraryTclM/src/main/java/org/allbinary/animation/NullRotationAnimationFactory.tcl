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

oo::class create ::NullRotationAnimationFactory {
    superclass ::JObject
}

oo::define ::NullRotationAnimationFactory {
    method initFields_NullRotationAnimationFactory {} {
        my jset NULL_ROTATION_ANIMATION_ARRAY {}
        my jset NULL_ANIMATION {}
        my jset NULL_ROTATION_ANIMATION_ARRAY [jarray 0 {}]
        my jset NULL_ANIMATION [::NullRotationAnimation2 new]
        return
    }
    

    constructor {} {
        next
        my initFields_NullRotationAnimationFactory
    }
    
    

    method getInstance {instanceId} {
        return [my jget NULL_ANIMATION]
    }
    

    method getInstanceAnimation {animationInterface} {
        return [my jget NULL_ANIMATION]
    }
    

    method setInitialScale {scaleProperties} {
    }
}

namespace eval ::NullRotationAnimationFactory {
    variable NULL_ROTATION_ANIMATION_FACTORYValue {}
    variable NULL_ROTATION_ANIMATION_FACTORYSet 0
    proc staticGet_NULL_ROTATION_ANIMATION_FACTORY {} {
        variable NULL_ROTATION_ANIMATION_FACTORYValue
        variable NULL_ROTATION_ANIMATION_FACTORYSet
        if {!$NULL_ROTATION_ANIMATION_FACTORYSet} {
            set NULL_ROTATION_ANIMATION_FACTORYSet 1
            set NULL_ROTATION_ANIMATION_FACTORYValue [::NullRotationAnimationFactory new]
        }
        return $NULL_ROTATION_ANIMATION_FACTORYValue
    }
    proc staticSet_NULL_ROTATION_ANIMATION_FACTORY {value} {
        variable NULL_ROTATION_ANIMATION_FACTORYValue
        variable NULL_ROTATION_ANIMATION_FACTORYSet
        set NULL_ROTATION_ANIMATION_FACTORYSet 1
        set NULL_ROTATION_ANIMATION_FACTORYValue $value
    }
    proc getFactoryInstance {} {
        return [::NullRotationAnimationFactory::staticGet_NULL_ROTATION_ANIMATION_FACTORY]
    }
}


