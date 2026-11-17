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

oo::class create ::TimedVectorAnimation {
    superclass ::VectorAnimation
}

oo::define ::TimedVectorAnimation {
    method initFields_TimedVectorAnimation {} {
        my jset timeElapsedHelper {}
        my jset timeElapsedHelper [::TimeDelayHelper new 200]
        return
    }
    

    constructor {currentPoints basicColor animationBehavior} {
        next $currentPoints $basicColor $animationBehavior
        my initFields_TimedVectorAnimation
    }
    

    method nextFrame {} {
        if {[[my jget timeElapsedHelper] isTime [[::GameTickTimeDelayHelperFactory::getInstance] jget startTime]]} {
            next
        }
    }
}

namespace eval ::TimedVectorAnimation {
}


