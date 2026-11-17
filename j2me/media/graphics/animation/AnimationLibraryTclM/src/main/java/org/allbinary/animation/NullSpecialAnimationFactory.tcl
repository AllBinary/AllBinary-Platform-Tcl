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

oo::class create ::NullSpecialAnimationFactory {
    superclass ::JObject
}

oo::define ::NullSpecialAnimationFactory {
    method initFields_NullSpecialAnimationFactory {} {
        return
    }
    

    constructor {} {
        next
        my initFields_NullSpecialAnimationFactory
    }
    
    

    method getInstance {instanceId} {
        return [::SpecialAnimation::getInstance]
    }
    

    method getInstanceAnimation {animationInterface} {
        return [::SpecialAnimation::getInstance]
    }
    

    method setInitialScale {scaleProperties} {
    }
}

namespace eval ::NullSpecialAnimationFactory {
    variable NULL_SPECIAL_ANIMATION_FACTORYValue {}
    variable NULL_SPECIAL_ANIMATION_FACTORYSet 0
    proc staticGet_NULL_SPECIAL_ANIMATION_FACTORY {} {
        variable NULL_SPECIAL_ANIMATION_FACTORYValue
        variable NULL_SPECIAL_ANIMATION_FACTORYSet
        if {!$NULL_SPECIAL_ANIMATION_FACTORYSet} {
            set NULL_SPECIAL_ANIMATION_FACTORYSet 1
            set NULL_SPECIAL_ANIMATION_FACTORYValue [::NullSpecialAnimationFactory new]
        }
        return $NULL_SPECIAL_ANIMATION_FACTORYValue
    }
    proc staticSet_NULL_SPECIAL_ANIMATION_FACTORY {value} {
        variable NULL_SPECIAL_ANIMATION_FACTORYValue
        variable NULL_SPECIAL_ANIMATION_FACTORYSet
        set NULL_SPECIAL_ANIMATION_FACTORYSet 1
        set NULL_SPECIAL_ANIMATION_FACTORYValue $value
    }
    proc getFactoryInstance {} {
        return [::NullSpecialAnimationFactory::staticGet_NULL_SPECIAL_ANIMATION_FACTORY]
    }
}


