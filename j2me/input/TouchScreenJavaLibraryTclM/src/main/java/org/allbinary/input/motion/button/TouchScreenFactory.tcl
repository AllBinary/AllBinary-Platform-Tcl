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
        my jset logUtil {}
        my jset touch false
        my jset multiTouch false
        my jset multiTouchDistinct false
        my jset touchScreenType {}
        my jset logUtil [::LogUtil::getInstance]
        my jset touch false
        my jset multiTouch false
        my jset multiTouchDistinct false
        my jset touchScreenType [[::TouchScreenTypesFactory::getInstance] jget NOTOUCH]
        return
    }
    

    constructor {} {
        next
        my initFields_TouchScreenFactory
        try {
            my setTouch true
            my setMultiTouch false
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [::TouchScreenFactory::staticGet_SINGLETON] [$commonStrings jget GET_INSTANCE] $e
        }
    }
    
    

    method setMultiTouch {multiTouch} {
        my jset multiTouch $multiTouch
    }
    

    method isMultiTouch {} {
        return [my jget multiTouch]
    }
    

    method setTouch {touch} {
        my jset touch $touch
    }
    

    method isTouch {} {
        return [my jget touch]
    }
    

    method setMultiTouchDistinct {multiTouchDistinct} {
        my jset multiTouchDistinct $multiTouchDistinct
    }
    

    method isMultiTouchDistinct {} {
        return [my jget multiTouchDistinct]
    }
    

    method setTouchScreenType {touchScreenType} {
        my jset touchScreenType $touchScreenType
    }
    

    method getTouchScreenType {} {
        return [my jget touchScreenType]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "TouchScreen: "
        $stringBuffer appendboolean [my isTouch]
        $stringBuffer append " MultiTouch: "
        $stringBuffer appendboolean [my isMultiTouch]
        $stringBuffer append " Distinct MultiTouch: "
        $stringBuffer appendboolean [my isMultiTouchDistinct]
        $stringBuffer append " TouchScreenType: "
        $stringBuffer append [[::StringUtil::getInstance] toString1 [my getTouchScreenType]]
        return [$stringBuffer toString]
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


