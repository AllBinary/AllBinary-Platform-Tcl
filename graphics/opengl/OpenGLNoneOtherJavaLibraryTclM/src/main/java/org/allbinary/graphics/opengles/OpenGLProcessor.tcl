# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

oo::class create ::OpenGLProcessor {
    superclass ::JObject
}

oo::define ::OpenGLProcessor {
    method initFields_OpenGLProcessor {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_OpenGLProcessor
    }
    

    method process {gl} {
    }
}

namespace eval ::OpenGLProcessor {
}


