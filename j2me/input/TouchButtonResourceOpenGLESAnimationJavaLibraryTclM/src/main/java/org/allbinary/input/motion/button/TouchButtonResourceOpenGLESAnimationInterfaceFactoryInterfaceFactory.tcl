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
# package org.allbinary.input.motion.button

oo::class create ::TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory {
    superclass ::TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
}

oo::define ::TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory {
    method initFields_TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory {} {
        return
    }
    

    constructor {} {
        next "OpenGL TouchButton Animations"
        my initFields_TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory
    }
    

    method init {level} {
        next [::OpenGLImageCacheFactory::getInstance] $level
    }
    

    method isFeature {} {
        if {[[::Features::getInstance] isDefault [[::OpenGLFeatureFactory::getInstance] jget OPENGL]]} {
            return true
        } else {
            return false
        }
    }
}

namespace eval ::TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory {
}


