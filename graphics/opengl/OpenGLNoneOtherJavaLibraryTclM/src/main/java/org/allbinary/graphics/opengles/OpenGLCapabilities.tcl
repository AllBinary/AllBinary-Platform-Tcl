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
# package org.allbinary.graphics.opengles

oo::class create ::OpenGLCapabilities {
    superclass ::JObject
}

oo::define ::OpenGLCapabilities {
    method initFields_OpenGLCapabilities {} {
        my jset CUSTOM_GL_SURFACE_VIEW false
        my jset VERSION_1_0 {}
        my jset VERSION_1_1 {}
        my jset VERSION_2_0 {}
        my jset VERSION_3_0 {}
        my jset VERSION_3_1 {}
        my jset VERSION_3_2 {}
        my jset VERSION_HIGHER_THAN_EXISTS {}
        my jset glVersion {}
        my jset shaderVersion 0
        my jset glInstanceVersion {}
        my jset maxTextureSize 0
        my jset CUSTOM_GL_SURFACE_VIEW true
        my jset VERSION_1_0 "1.0"
        my jset VERSION_1_1 "1.1"
        my jset VERSION_2_0 "2.0"
        my jset VERSION_3_0 "3.0"
        my jset VERSION_3_1 "3.1"
        my jset VERSION_3_2 "3.2"
        my jset VERSION_HIGHER_THAN_EXISTS "999.999"
        my jset glVersion [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset shaderVersion 0
        my jset glInstanceVersion [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset maxTextureSize 64
        return
    }
    
    

    constructor {} {
        next
        my initFields_OpenGLCapabilities
    }
    

    method isInitialized {} {
        return true
    }
    

    method initCapabilities {gl} {
    }
    

    method isGlExtensionDrawTexture {} {
        return false
    }
    

    method getGlVersion {} {
        return [my jget glVersion]
    }
    

    method isVertexBufferObjectSupport {} {
        return false
    }
    

    method isTextureSizeValid {widthAndHeight} {
        return true
    }
}

namespace eval ::OpenGLCapabilities {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OpenGLCapabilities new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::OpenGLCapabilities::staticGet_instance]
    }
}


