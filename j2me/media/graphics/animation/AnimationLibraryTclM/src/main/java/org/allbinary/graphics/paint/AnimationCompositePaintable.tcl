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
# package org.allbinary.graphics.paint

oo::class create ::AnimationCompositePaintable {
    superclass ::InitUpdatePaintable
}

oo::define ::AnimationCompositePaintable {
    method initFields_AnimationCompositePaintable {} {
        my jset animationInterface {}
        
        return
    }
    

    constructor {animationInterface} {
        next
        my initFields_AnimationCompositePaintable
        my jset animationInterface $animationInterface
    }
    

    method paint {graphics} {
        [my jget animationInterface] paintXY $graphics 0 0
    }
    

    method paintThreed {graphics} {
        [my jget animationInterface] paintThreedXYZ $graphics 0 0 0
    }
}

namespace eval ::AnimationCompositePaintable {
}


