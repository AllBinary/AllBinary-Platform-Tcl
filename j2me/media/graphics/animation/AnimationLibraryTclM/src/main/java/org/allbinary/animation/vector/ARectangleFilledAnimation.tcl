# Generated Code Do Not Modify
# package org.allbinary.animation.vector

oo::class create ::ARectangleFilledAnimation {
    superclass ::RectangleFilledAnimation
}

oo::define ::ARectangleFilledAnimation {
    method initFields_ARectangleFilledAnimation {} {
        my jset x 0
        my jset y 0
        my jset x 0
        my jset y 0
        return
    }
    

    constructor {} {
        next 0 0 [[::BasicColorFactory::getInstance] jget BLACK]
        my initFields_ARectangleFilledAnimation
    }
    

    method nextFrame {} {
    }
    

    method paintXY {graphics unusedX unusedY} {
        next $graphics [my jget x] [my jget y]
    }
}

namespace eval ::ARectangleFilledAnimation {
}


