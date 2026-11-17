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
# package org.allbinary.image.opengles

#OpenGLESNullImageJavaLibrary
oo::class create ::OpenGLESImage {
    superclass ::Image
}

oo::define ::OpenGLESImage {
    method initFields_OpenGLESImage {} {
        my jset commonStrings {}
        my jset textureFactory {}
        my jset openGLBitmap {}
        my jset openGLESImageProperties {}
        my jset imageProcessor {}
        my jset openGLESImageTranslate {}
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        my jset openGLESImageProperties [::OpenGLESImageProperties new]
        my jset imageProcessor [::OpenGLESImageProcessor::getInstance]
        my jset openGLESImageTranslate [::OpenGLESImageTranslate::getInstance]
        return
    }
    

    constructor {image bitmapFactory textureFactory} {
        next
        my initFields_OpenGLESImage
        my jset openGLBitmap [$bitmapFactory createBitmap $image]
        my jset textureFactory $textureFactory
    }
    

    method set {gl} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method initTexture {gl} {
        return false
    }
    

    method drawRegion {gl viewHeight x_src y_src width height x y z} {
    }
    

    method draw {gl x y z} {
    }
    

    method getType {} {
        return [::OpenGLESImage::staticGet_TYPE]
    }
}

namespace eval ::OpenGLESImage {
    variable NULL_OPENGL_IMAGEValue {}
    variable NULL_OPENGL_IMAGESet 0
    proc staticGet_NULL_OPENGL_IMAGE {} {
        variable NULL_OPENGL_IMAGEValue
        variable NULL_OPENGL_IMAGESet
        if {!$NULL_OPENGL_IMAGESet} {
            set NULL_OPENGL_IMAGESet 1
            set NULL_OPENGL_IMAGEValue [::OpenGLESImage new [::NullImage::staticGet_NULL_IMAGE] [::PlatformBitmapBaseFactory::staticGet_NULL_PLATFORM_BITMAP_BASE_FACTORY] [::PlatformTextureBaseFactory::staticGet_NULL_PLATFORM_TEXTURE_BASE_FACTORY]]
        }
        return $NULL_OPENGL_IMAGEValue
    }
    proc staticSet_NULL_OPENGL_IMAGE {value} {
        variable NULL_OPENGL_IMAGEValue
        variable NULL_OPENGL_IMAGESet
        set NULL_OPENGL_IMAGESet 1
        set NULL_OPENGL_IMAGEValue $value
    }
    variable texture2dListValue {}
    variable texture2dListSet 0
    proc staticGet_texture2dList {} {
        variable texture2dListValue
        variable texture2dListSet
        if {!$texture2dListSet} {
            set texture2dListSet 1
            set texture2dListValue [::BasicArrayListD new]
        }
        return $texture2dListValue
    }
    proc staticSet_texture2dList {value} {
        variable texture2dListValue
        variable texture2dListSet
        set texture2dListSet 1
        set texture2dListValue $value
    }
    variable TYPEValue {}
    variable TYPESet 0
    proc staticGet_TYPE {} {
        variable TYPEValue
        variable TYPESet
        if {!$TYPESet} {
            set TYPESet 1
            set TYPEValue 4
        }
        return $TYPEValue
    }
    proc staticSet_TYPE {value} {
        variable TYPEValue
        variable TYPESet
        set TYPESet 1
        set TYPEValue $value
    }
}


