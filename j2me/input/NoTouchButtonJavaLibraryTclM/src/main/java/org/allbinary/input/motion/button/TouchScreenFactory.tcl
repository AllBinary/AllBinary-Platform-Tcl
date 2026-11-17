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
# package org.allbinary.input.motion.button

oo::class create ::TouchScreenFactory {
    superclass ::JObject
}

oo::define ::TouchScreenFactory {
    method initFields_TouchScreenFactory {} {
        my jset multiTouch false
        my jset touch false
        my jset touchScreenType {}
        my jset multiTouch false
        my jset touch false
        my jset touchScreenType [[::TouchScreenTypesFactory::getInstance] jget NOTOUCH]
        return
    }
    

    constructor {} {
        next
        my initFields_TouchScreenFactory
    }
    
    

    method isMultiTouch {} {
        return [my jget multiTouch]
    }
    

    method setTouch {touch} {
    }
    

    method isTouch {} {
        return [my jget touch]
    }
    

    method getTouchScreenType {} {
        return [my jget touchScreenType]
    }
}

namespace eval ::TouchScreenFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::TouchScreenFactory new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::TouchScreenFactory::staticGet_SINGLETON]
    }
}


