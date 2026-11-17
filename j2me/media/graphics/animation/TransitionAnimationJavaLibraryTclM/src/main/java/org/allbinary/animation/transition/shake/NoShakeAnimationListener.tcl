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
# package org.allbinary.animation.transition.shake

oo::class create ::NoShakeAnimationListener {
    superclass ::ShakeAnimationListener
}

oo::define ::NoShakeAnimationListener {
    method initFields_NoShakeAnimationListener {} {
        return
    }

    constructor {} {
        next
        my initFields_NoShakeAnimationListener
    }
}

namespace eval ::NoShakeAnimationListener {
    variable NO_SHAKE_ANIMATION_LISTENERValue {}
    variable NO_SHAKE_ANIMATION_LISTENERSet 0
    proc staticGet_NO_SHAKE_ANIMATION_LISTENER {} {
        variable NO_SHAKE_ANIMATION_LISTENERValue
        variable NO_SHAKE_ANIMATION_LISTENERSet
        if {!$NO_SHAKE_ANIMATION_LISTENERSet} {
            set NO_SHAKE_ANIMATION_LISTENERSet 1
            set NO_SHAKE_ANIMATION_LISTENERValue [::NoShakeAnimationListener new]
        }
        return $NO_SHAKE_ANIMATION_LISTENERValue
    }
    proc staticSet_NO_SHAKE_ANIMATION_LISTENER {value} {
        variable NO_SHAKE_ANIMATION_LISTENERValue
        variable NO_SHAKE_ANIMATION_LISTENERSet
        set NO_SHAKE_ANIMATION_LISTENERSet 1
        set NO_SHAKE_ANIMATION_LISTENERValue $value
    }
}


