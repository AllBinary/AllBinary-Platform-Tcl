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
# package org.allbinary.animation.special

oo::class create ::SpecialAnimation {
    superclass ::IndexedAnimation
}

oo::define ::SpecialAnimation {
    method initFields_SpecialAnimation {} {
        return
    }
    
    

    constructor {animationBehavior} {
        next $animationBehavior
        my initFields_SpecialAnimation
    }
    

    method nextFrame {} {
        set indexedAnimationBehavior ([my jget animationBehaviorP])
        $indexedAnimationBehavior jpostinc loopIndex 1
    }
    

    method setLastFrame {} {
    }
    

    method isComplete {} {
        return false
    }
    

    method open {} {
    }
    

    method close {} {
    }
    

    method process {} {
    }
}

namespace eval ::SpecialAnimation {
    variable NULL_SPECIAL_ANIMATIONValue {}
    variable NULL_SPECIAL_ANIMATIONSet 0
    proc staticGet_NULL_SPECIAL_ANIMATION {} {
        variable NULL_SPECIAL_ANIMATIONValue
        variable NULL_SPECIAL_ANIMATIONSet
        if {!$NULL_SPECIAL_ANIMATIONSet} {
            set NULL_SPECIAL_ANIMATIONSet 1
            set NULL_SPECIAL_ANIMATIONValue [::SpecialAnimation new [::IndexedAnimationBehavior new 1 250]]
        }
        return $NULL_SPECIAL_ANIMATIONValue
    }
    proc staticSet_NULL_SPECIAL_ANIMATION {value} {
        variable NULL_SPECIAL_ANIMATIONValue
        variable NULL_SPECIAL_ANIMATIONSet
        set NULL_SPECIAL_ANIMATIONSet 1
        set NULL_SPECIAL_ANIMATIONValue $value
    }
    proc getInstance {} {
        return [::SpecialAnimation::staticGet_NULL_SPECIAL_ANIMATION]
    }
}


