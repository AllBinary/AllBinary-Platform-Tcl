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

oo::class create ::OpenGLImageFactory {
    superclass ::JObject
}

oo::define ::OpenGLImageFactory {
    method initFields_OpenGLImageFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_OpenGLImageFactory
    }
    

    method getInstance {image bitmapFactory textureFactory} {
        error [jexception RuntimeException {}]
    }
}

namespace eval ::OpenGLImageFactory {
    variable NULL_OPENGL_IMAGE_FACTORYValue {}
    variable NULL_OPENGL_IMAGE_FACTORYSet 0
    proc staticGet_NULL_OPENGL_IMAGE_FACTORY {} {
        variable NULL_OPENGL_IMAGE_FACTORYValue
        variable NULL_OPENGL_IMAGE_FACTORYSet
        if {!$NULL_OPENGL_IMAGE_FACTORYSet} {
            set NULL_OPENGL_IMAGE_FACTORYSet 1
            set NULL_OPENGL_IMAGE_FACTORYValue [::OpenGLImageFactory new]
        }
        return $NULL_OPENGL_IMAGE_FACTORYValue
    }
    proc staticSet_NULL_OPENGL_IMAGE_FACTORY {value} {
        variable NULL_OPENGL_IMAGE_FACTORYValue
        variable NULL_OPENGL_IMAGE_FACTORYSet
        set NULL_OPENGL_IMAGE_FACTORYSet 1
        set NULL_OPENGL_IMAGE_FACTORYValue $value
    }
}


