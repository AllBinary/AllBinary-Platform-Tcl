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
# package org.allbinary.emulator.device

oo::class create ::TrueTypeFontUtil {
    superclass ::TrueTypeFontUtilBase
}

oo::define ::TrueTypeFontUtil {
    method initFields_TrueTypeFontUtil {} {
        my jset fontImage {}
        my jset fontImage [::OpenGLESImage::staticGet_NULL_OPENGL_IMAGE]
        return
    }
    
    

    constructor {} {
        next 1
        my initFields_TrueTypeFontUtil
    }
    

    method getAsTextureSize {textureSize} {
        error [jexception RuntimeException {}]
    }
    

    method getCellSize {cellSize} {
        error [jexception RuntimeException {}]
    }
    

    method getFontBitmap {filename fontSize cellSize basicColor} {
        error [jexception RuntimeException {}]
    }
    

    method saveFontAtlasAsFile {} {
    }
    

    method getFontBitmapGL {gl filename cellSize basicColor} {
        error [jexception RuntimeException {}]
    }
    

    method getFontWidths {filename fontSize} {
        error [jexception RuntimeException {}]
    }
}

namespace eval ::TrueTypeFontUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::TrueTypeFontUtil new]
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
        return [::TrueTypeFontUtil::staticGet_instance]
    }
}


