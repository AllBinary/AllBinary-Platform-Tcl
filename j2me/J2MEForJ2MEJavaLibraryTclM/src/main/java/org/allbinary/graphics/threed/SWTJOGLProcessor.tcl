# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.graphics.threed

#OpenGLNone
oo::class create ::SWTJOGLProcessor {
    superclass ::JObject
}

oo::define ::SWTJOGLProcessor {
    method initFields_SWTJOGLProcessor {} {
        return
    }

    constructor {} {
        next
        my initFields_SWTJOGLProcessor
    }
    
    

    method init {display comp} {
    }
    

    method isHolderCreated {} {
        return true
    }
    

    method setRenderer {renderer} {
    }
    

    method isJOGL {} {
        return false
    }
    

    method createSurface {} {
    }
    

    method onSurfaceCreated {} {
    }
    

    method onSurfaceChangedForEvent {event} {
    }
    

    method onSurfaceChanged {} {
    }
    

    method onSurfaceChangedWH {width height} {
    }
    

    method addListener {} {
    }
    

    method addListeners {midlet} {
    }
    

    method run {} {
    }
    

    method clear {} {
    }
    

    method setCustom {width height ratio} {
    }
    

    method setRatioProcessor {ratioProcessor} {
    }
    

    method isPortraitRatioProcessor {} {
        return true
    }
    

    method charWidth {font ch} {
        error [jexception RuntimeException {}]
    }
    

    method charsWidth {font ch offset length} {
        error [jexception RuntimeException {}]
    }
    

    method stringWidth {font str} {
        error [jexception RuntimeException {}]
    }
    

    method substringWidth {font str offset len} {
        error [jexception RuntimeException {}]
    }
}

namespace eval ::SWTJOGLProcessor {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::SWTJOGLProcessor new]
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
        return [::SWTJOGLProcessor::staticGet_instance]
    }
}


