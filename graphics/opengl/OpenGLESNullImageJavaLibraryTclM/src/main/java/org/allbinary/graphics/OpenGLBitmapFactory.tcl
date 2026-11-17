# Generated Code Do Not Modify
# package org.allbinary.graphics

oo::class create ::OpenGLBitmapFactory {
    superclass ::PlatformBitmapBaseFactory
}

oo::define ::OpenGLBitmapFactory {
    method initFields_OpenGLBitmapFactory {} {
        my jset ARGB_8888 {}
        my jset ARGB_8888 [::OpenGLBitmapConfig new [[::NullUtil::getInstance] jget NULL_OBJECT]]
        return
    }

    constructor {} {
        next
        my initFields_OpenGLBitmapFactory
    }
    
    

    method createBitmap {width height config} {
        return [::OpenGLBitmap new [[::NullUtil::getInstance] jget NULL_OBJECT]]
    }
    

    method decodeStream {inputStream} {
        return [::OpenGLBitmap new [[::NullUtil::getInstance] jget NULL_OBJECT]]
    }
    

    method createBitmap {image} {
        return [::OpenGLBitmap new [[::NullUtil::getInstance] jget NULL_OBJECT]]
    }
}

namespace eval ::OpenGLBitmapFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OpenGLBitmapFactory new]
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
        return [::OpenGLBitmapFactory::staticGet_instance]
    }
}


