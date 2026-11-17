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
# package org.allbinary.logic.math

oo::class create ::Orientation {
    superclass ::JObject
}

oo::define ::Orientation {
    method initFields_Orientation {} {
        my jset yaw {}
        my jset pitch {}
        my jset roll {}
        my jset yaw [::BasicDecimal new 0]
        my jset pitch [::BasicDecimal new 0]
        my jset roll [::BasicDecimal new 0]
        return
    }
    
    

    constructor {yaw pitch roll} {
        next
        my initFields_Orientation
        [my jget yaw] setint $yaw
        [my jget pitch] setint $pitch
        [my jget roll] setint $roll
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Y: "
        $stringBuffer append [[my jget yaw] toString]
        $stringBuffer append " P: "
        $stringBuffer append [[my jget pitch] toString]
        $stringBuffer append " R: "
        $stringBuffer append [[my jget roll] toString]
        return [$stringBuffer toString]
    }
}

namespace eval ::Orientation {
    variable NONEValue {}
    variable NONESet 0
    proc staticGet_NONE {} {
        variable NONEValue
        variable NONESet
        if {!$NONESet} {
            set NONESet 1
            set NONEValue [::Orientation new 0 0 0]
        }
        return $NONEValue
    }
    proc staticSet_NONE {value} {
        variable NONEValue
        variable NONESet
        set NONESet 1
        set NONEValue $value
    }
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::Orientation new 0 0 0]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {yaw pitch roll} {
        [[::Orientation::staticGet_SINGLETON] jget yaw] setint $yaw
        [[::Orientation::staticGet_SINGLETON] jget pitch] setint $pitch
        [[::Orientation::staticGet_SINGLETON] jget roll] setint $roll
        return [::Orientation::staticGet_SINGLETON]
    }
}


