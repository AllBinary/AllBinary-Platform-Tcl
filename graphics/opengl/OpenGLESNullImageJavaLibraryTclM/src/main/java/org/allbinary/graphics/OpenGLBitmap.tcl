# Generated Code Do Not Modify
# package org.allbinary.graphics

oo::class create ::OpenGLBitmap {
    superclass ::PlatformBitmapBase
}

oo::define ::OpenGLBitmap {
    method initFields_OpenGLBitmap {} {
        my jset bitmap {}
        
        return
    }
    

    constructor {bitmap} {
        next
        my initFields_OpenGLBitmap
        my jset bitmap $bitmap
    }
    

    method getPixels {pixels offset stride x y width height} {
    }
    

    method setPixels {pixels offset stride x y width height} {
    }
    

    method recycle {} {
    }
}

namespace eval ::OpenGLBitmap {
}


