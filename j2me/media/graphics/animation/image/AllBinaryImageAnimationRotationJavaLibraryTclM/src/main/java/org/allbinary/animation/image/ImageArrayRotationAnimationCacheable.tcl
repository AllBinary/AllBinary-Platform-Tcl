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
# package org.allbinary.animation.image

oo::class create ::ImageArrayRotationAnimationCacheable {
    superclass ::AdjustedImageArrayRotationAnimation
}

oo::define ::ImageArrayRotationAnimationCacheable {
    method initFields_ImageArrayRotationAnimationCacheable {} {
        return
    }
    

    constructor {anyType animationBehavior} {
        next [($anyType) getImageArray] [($anyType) getAngleInfoP] [($anyType) getTotalAngle] [($anyType) getDx] [($anyType) getDy] $animationBehavior
        my initFields_ImageArrayRotationAnimationCacheable
    }
    

    method getKey {} {
        return [[::NullUtil::getInstance] jget NULL_OBJECT]
    }
    

    method toString {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
}

namespace eval ::ImageArrayRotationAnimationCacheable {
}


