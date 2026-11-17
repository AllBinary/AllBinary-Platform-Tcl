# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.image.opengles

oo::class create ::OpenGLESDeviceImageTranslate {
    superclass ::OpenGLESImageTranslate
}

oo::define ::OpenGLESDeviceImageTranslate {
    method initFields_OpenGLESDeviceImageTranslate {} {
        my jset translateX 0.0
        my jset translateY 0.0
        my jset translateX2 0.0
        my jset translateY2 0.0
        my jset translateX 0.0
        my jset translateY 0.0
        my jset translateX2 0.0
        my jset translateY2 0.0
        return
    }

    constructor {} {
        next
        my initFields_OpenGLESDeviceImageTranslate
    }
    

    method translate {gl openGLESImage x y} {
        [$openGLESImage jget imageProcessor] translate $gl [expr {[my jget translateX] + ([expr {[[$openGLESImage jget openGLESImageProperties] jget scaleX] * $x}])}] [expr {[my jget translateY] + ([expr {[[$openGLESImage jget openGLESImageProperties] jget scaleY] * $y}])}]
    }
    

    method translate2 {gl openGLESImage} {
        [$openGLESImage jget imageProcessor] translate $gl [my jget translateX2] [my jget translateY2]
    }
}

namespace eval ::OpenGLESDeviceImageTranslate {
}


