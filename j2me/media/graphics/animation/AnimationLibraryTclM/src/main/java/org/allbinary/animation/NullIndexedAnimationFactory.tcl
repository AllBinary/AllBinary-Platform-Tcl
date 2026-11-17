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

oo::class create ::NullIndexedAnimationFactory {
    superclass ::JObject
}

oo::define ::NullIndexedAnimationFactory {
    method initFields_NullIndexedAnimationFactory {} {
        my jset NULL_ANIMATION {}
        my jset NULL_ANIMATION [::NullIndexedAnimationInner new]
        return
    }
    

    constructor {} {
        next
        my initFields_NullIndexedAnimationFactory
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

namespace eval ::NullIndexedAnimationFactory {
    variable NULL_INDEXED_ANIMATION_ARRAYValue {}
    variable NULL_INDEXED_ANIMATION_ARRAYSet 0
    proc staticGet_NULL_INDEXED_ANIMATION_ARRAY {} {
        variable NULL_INDEXED_ANIMATION_ARRAYValue
        variable NULL_INDEXED_ANIMATION_ARRAYSet
        if {!$NULL_INDEXED_ANIMATION_ARRAYSet} {
            set NULL_INDEXED_ANIMATION_ARRAYSet 1
            set NULL_INDEXED_ANIMATION_ARRAYValue [jarray 0 {}]
        }
        return $NULL_INDEXED_ANIMATION_ARRAYValue
    }
    proc staticSet_NULL_INDEXED_ANIMATION_ARRAY {value} {
        variable NULL_INDEXED_ANIMATION_ARRAYValue
        variable NULL_INDEXED_ANIMATION_ARRAYSet
        set NULL_INDEXED_ANIMATION_ARRAYSet 1
        set NULL_INDEXED_ANIMATION_ARRAYValue $value
    }
    variable NULL_INDEXED_ANIMATION_FACTORYValue {}
    variable NULL_INDEXED_ANIMATION_FACTORYSet 0
    proc staticGet_NULL_INDEXED_ANIMATION_FACTORY {} {
        variable NULL_INDEXED_ANIMATION_FACTORYValue
        variable NULL_INDEXED_ANIMATION_FACTORYSet
        if {!$NULL_INDEXED_ANIMATION_FACTORYSet} {
            set NULL_INDEXED_ANIMATION_FACTORYSet 1
            set NULL_INDEXED_ANIMATION_FACTORYValue [::NullIndexedAnimationFactory new]
        }
        return $NULL_INDEXED_ANIMATION_FACTORYValue
    }
    proc staticSet_NULL_INDEXED_ANIMATION_FACTORY {value} {
        variable NULL_INDEXED_ANIMATION_FACTORYValue
        variable NULL_INDEXED_ANIMATION_FACTORYSet
        set NULL_INDEXED_ANIMATION_FACTORYSet 1
        set NULL_INDEXED_ANIMATION_FACTORYValue $value
    }
    proc getFactoryInstance {} {
        return [::NullIndexedAnimationFactory::staticGet_NULL_INDEXED_ANIMATION_FACTORY]
    }
}


