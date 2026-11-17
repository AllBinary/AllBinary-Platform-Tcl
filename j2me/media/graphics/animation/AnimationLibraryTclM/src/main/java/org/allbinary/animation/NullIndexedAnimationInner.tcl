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

oo::class create ::NullIndexedAnimationInner {
    superclass ::NullIndexedAnimation
}

oo::define ::NullIndexedAnimationInner {
    method initFields_NullIndexedAnimationInner {} {
        return
    }
    

    constructor {} {
        next [::IndexedAnimationBehavior new 1 250]
        my initFields_NullIndexedAnimationInner
    }
    

    method paintXY {graphics x y} {
    }
}

namespace eval ::NullIndexedAnimationInner {
}


