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

oo::class create ::OpenGLESImageProperties {
    superclass ::JObject
}

oo::define ::OpenGLESImageProperties {
    method initFields_OpenGLESImageProperties {} {
        my jset textureID 0
        my jset scaleX 0.0
        my jset scaleY 0.0
        my jset scaleX2 0.0
        my jset scaleY2 0.0
        my jset angle 0
        my jset redf 0.0
        my jset greenf 0.0
        my jset bluef 0.0
        my jset alphaf 0.0
        my jset textureID [expr {-1}]
        my jset scaleX 1.0
        my jset scaleY 1.0
        my jset scaleX2 1.0
        my jset scaleY2 1.0
        my jset angle 0
        my jset redf 1.0
        my jset greenf 1.0
        my jset bluef 1.0
        my jset alphaf 0.0
        return
    }

    constructor {} {
        next
        my initFields_OpenGLESImageProperties
    }
}

namespace eval ::OpenGLESImageProperties {
}


