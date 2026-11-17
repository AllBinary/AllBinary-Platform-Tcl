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

oo::class create ::ColorLessVectorAnimation {
    superclass ::VectorAnimation
}

oo::define ::ColorLessVectorAnimation {
    method initFields_ColorLessVectorAnimation {} {
        return
    }
    

    constructor {currentPoints animationBehavior} {
        next $currentPoints [[::BasicColorFactory::getInstance] jget WHITE] $animationBehavior
        my initFields_ColorLessVectorAnimation
    }
    

    method paintXY {graphics x y} {
        my paintVectors $graphics $x $y
    }
}

namespace eval ::ColorLessVectorAnimation {
}


