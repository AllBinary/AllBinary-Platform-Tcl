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

oo::class create ::OpenGLImageUtilBase {
    superclass ::JObject
}

oo::define ::OpenGLImageUtilBase {
    method initFields_OpenGLImageUtilBase {} {
        return
    }

    constructor {} {
        next
        my initFields_OpenGLImageUtilBase
    }
    

    method paint {alphaBitmap originalBitmap index} {
        error [jexception RuntimeException {}]
    }
    

    method paint {colorBitmap originalBitmap alpha basicColor} {
        error [jexception RuntimeException {}]
    }
    

    method createImage {name} {
        error [jexception RuntimeException {}]
    }
    

    method createImageFromInputStream {inputStream} {
        error [jexception RuntimeException {}]
    }
}

namespace eval ::OpenGLImageUtilBase {
}


