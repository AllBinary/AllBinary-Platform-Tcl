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

oo::class create ::NullAnimationFactory {
    superclass ::JObject
}

oo::define ::NullAnimationFactory {
    method initFields_NullAnimationFactory {} {
        my jset NULL_ANIMATION {}
        my jset EMPTY_ARRAY {}
        my jset NULL_ANIMATION [::Animation new]
        my jset EMPTY_ARRAY [jarray 0 {}]
        return
    }
    

    constructor {} {
        next
        my initFields_NullAnimationFactory
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

namespace eval ::NullAnimationFactory {
    variable NULL_NOT_FOR_USE_ANIMATION_FACTORYValue {}
    variable NULL_NOT_FOR_USE_ANIMATION_FACTORYSet 0
    proc staticGet_NULL_NOT_FOR_USE_ANIMATION_FACTORY {} {
        variable NULL_NOT_FOR_USE_ANIMATION_FACTORYValue
        variable NULL_NOT_FOR_USE_ANIMATION_FACTORYSet
        if {!$NULL_NOT_FOR_USE_ANIMATION_FACTORYSet} {
            set NULL_NOT_FOR_USE_ANIMATION_FACTORYSet 1
            set NULL_NOT_FOR_USE_ANIMATION_FACTORYValue [::NullAnimationFactory new]
        }
        return $NULL_NOT_FOR_USE_ANIMATION_FACTORYValue
    }
    proc staticSet_NULL_NOT_FOR_USE_ANIMATION_FACTORY {value} {
        variable NULL_NOT_FOR_USE_ANIMATION_FACTORYValue
        variable NULL_NOT_FOR_USE_ANIMATION_FACTORYSet
        set NULL_NOT_FOR_USE_ANIMATION_FACTORYSet 1
        set NULL_NOT_FOR_USE_ANIMATION_FACTORYValue $value
    }
    variable NULL_ANIMATION_FACTORYValue {}
    variable NULL_ANIMATION_FACTORYSet 0
    proc staticGet_NULL_ANIMATION_FACTORY {} {
        variable NULL_ANIMATION_FACTORYValue
        variable NULL_ANIMATION_FACTORYSet
        if {!$NULL_ANIMATION_FACTORYSet} {
            set NULL_ANIMATION_FACTORYSet 1
            set NULL_ANIMATION_FACTORYValue [::NullAnimationFactory new]
        }
        return $NULL_ANIMATION_FACTORYValue
    }
    proc staticSet_NULL_ANIMATION_FACTORY {value} {
        variable NULL_ANIMATION_FACTORYValue
        variable NULL_ANIMATION_FACTORYSet
        set NULL_ANIMATION_FACTORYSet 1
        set NULL_ANIMATION_FACTORYValue $value
    }
    proc getFactoryInstance {} {
        return [::NullAnimationFactory::staticGet_NULL_ANIMATION_FACTORY]
    }
}


