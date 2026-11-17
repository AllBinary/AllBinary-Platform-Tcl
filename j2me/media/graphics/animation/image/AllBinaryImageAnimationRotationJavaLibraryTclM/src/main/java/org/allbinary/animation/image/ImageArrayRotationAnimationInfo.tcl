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

oo::class create ::ImageArrayRotationAnimationInfo {
    superclass ::JObject
}

oo::define ::ImageArrayRotationAnimationInfo {
    method initFields_ImageArrayRotationAnimationInfo {} {
        my jset imageArray {}
        my jset angleIncrement 0
        my jset totalAngle 0
        my jset dx 0
        my jset dy 0
        
        
        
        
        
        return
    }
    

    constructor {imageArray angleIncrement totalAngle dx dy} {
        next
        my initFields_ImageArrayRotationAnimationInfo
        my jset imageArray $imageArray
        my jset angleIncrement $angleIncrement
        my jset totalAngle $totalAngle
        my jset dx $dx
        my jset dy $dy
    }
    

    method setImageArray {imageArray} {
        my jset imageArray $imageArray
    }
    

    method getImageArray {} {
        return [my jget imageArray]
    }
    

    method getAngleInfoP {} {
        return [::AngleInfo::getInstance [jshort [my jget angleIncrement]]]
    }
    

    method setTotalAngle {totalAngle} {
        my jset totalAngle $totalAngle
    }
    

    method getTotalAngle {} {
        return [my jget totalAngle]
    }
    

    method setDx {dx} {
        my jset dx $dx
    }
    

    method getDx {} {
        return [my jget dx]
    }
    

    method setDy {dy} {
        my jset dy $dy
    }
    

    method getDy {} {
        return [my jget dy]
    }
}

namespace eval ::ImageArrayRotationAnimationInfo {
}


