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

oo::class create ::OpenGLFeatureFactory {
    superclass ::JObject
}

oo::define ::OpenGLFeatureFactory {
    method initFields_OpenGLFeatureFactory {} {
        my jset OPENGL_OPTIONS {}
        my jset OPENGL {}
        my jset OPENGL_SURFACE_VIEW {}
        my jset OPENGL_2D {}
        my jset OPENGL_3D {}
        my jset OPENGL_2D_AND_3D {}
        my jset OPENGL_AUTO_SELECT {}
        my jset OPENGL_MINIMUM {}
        my jset OPENGL_AS_GAME_THREAD {}
        my jset OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS {}
        my jset IMAGE_COLOR_DEPTH_4444 {}
        my jset IMAGE_COLOR_DEPTH_8888 {}
        my jset IMAGE_COLOR_DEPTH_565 {}
        my jset OPENGL_COLOR_DEPTH_4444 {}
        my jset OPENGL_COLOR_DEPTH_8888 {}
        my jset OPENGL_COLOR_DEPTH_565 {}
        my jset OPENGL_DRAW_TEXTURE {}
        my jset OPENGL_VERTEX_BUFFER_OBJECT {}
        my jset OPENGL_SIMPLE_OBJECT3D_PROCESSOR {}
        my jset OPENGL_COMPLEX_OBJECT3D_PROCESSOR {}
        my jset OPENGL_SIMPLE_TEXTURE_PROCESSOR {}
        my jset OPENGL_COMPLEX_TEXTURE_PROCESSOR {}
        my jset OPENGL_OPTIONS [::OpenGLFeature new "OpenGL Options"]
        my jset OPENGL [::OpenGLFeature new "OpenGL"]
        my jset OPENGL_SURFACE_VIEW [::OpenGLFeature new "GLSurfaceView"]
        my jset OPENGL_2D [::OpenGLFeature new "OpenGL 2D"]
        my jset OPENGL_3D [::OpenGLFeature new "OpenGL 3D"]
        my jset OPENGL_2D_AND_3D [::OpenGLFeature new "OpenGL 2D/3D"]
        my jset OPENGL_AUTO_SELECT [::OpenGLFeature new "Auto Select"]
        my jset OPENGL_MINIMUM [::OpenGLFeature new "Minimum"]
        my jset OPENGL_AS_GAME_THREAD [::OpenGLFeature new "As game thread"]
        my jset OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS [::OpenGLFeature new "As different threads"]
        my jset IMAGE_COLOR_DEPTH_4444 [::OpenGLFeature new "4444"]
        my jset IMAGE_COLOR_DEPTH_8888 [::OpenGLFeature new "8888"]
        my jset IMAGE_COLOR_DEPTH_565 [::OpenGLFeature new "565"]
        my jset OPENGL_COLOR_DEPTH_4444 [::OpenGLFeature new "4444"]
        my jset OPENGL_COLOR_DEPTH_8888 [::OpenGLFeature new "8888"]
        my jset OPENGL_COLOR_DEPTH_565 [::OpenGLFeature new "565"]
        my jset OPENGL_DRAW_TEXTURE [::OpenGLFeature new "GL_OES_draw_texture"]
        my jset OPENGL_VERTEX_BUFFER_OBJECT [::OpenGLFeature new "vertex_buffer_object"]
        my jset OPENGL_SIMPLE_OBJECT3D_PROCESSOR [::OpenGLFeature new "Simple Object3d Processor"]
        my jset OPENGL_COMPLEX_OBJECT3D_PROCESSOR [::OpenGLFeature new "Complex Object3d Processor"]
        my jset OPENGL_SIMPLE_TEXTURE_PROCESSOR [::OpenGLFeature new "Simple Texture Processor"]
        my jset OPENGL_COMPLEX_TEXTURE_PROCESSOR [::OpenGLFeature new "Complex Texture Processor"]
        return
    }
    
    

    constructor {} {
        next
        my initFields_OpenGLFeatureFactory
    }
}

namespace eval ::OpenGLFeatureFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OpenGLFeatureFactory new]
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
        return [::OpenGLFeatureFactory::staticGet_instance]
    }
}


