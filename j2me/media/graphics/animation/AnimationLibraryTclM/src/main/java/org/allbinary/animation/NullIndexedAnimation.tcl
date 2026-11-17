# Generated Code Do Not Modify
# package org.allbinary.animation

oo::class create ::NullIndexedAnimation {
    superclass ::IndexedAnimation
}

oo::define ::NullIndexedAnimation {
    method initFields_NullIndexedAnimation {} {
        return
    }
    

    constructor {animationBehavior} {
        next $animationBehavior
        my initFields_NullIndexedAnimation
    }
    

    method getAnimationSize {} {
        return 0
    }
}

namespace eval ::NullIndexedAnimation {
}


