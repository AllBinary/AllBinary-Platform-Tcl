# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

oo::class create ::ABStringComponent {
    superclass ::JObject
}

oo::define ::ABStringComponent {
    method initFields_ABStringComponent {} {
        return
    }
    

    method getBackgroundBasicColor {} {
        return [[::BasicColorFactory::getInstance] jget WHITE]
    }
    

    constructor {backgroundBasicColor foregroundBasicColor} {
        next
        my initFields_ABStringComponent
    }
    

    method getForegroundBasicColor {} {
        return [[::BasicColorFactory::getInstance] jget WHITE]
    }
    

    method setForegroundBasicColor {foregroundBasicColor} {
    }
}

namespace eval ::ABStringComponent {
    variable NULL_STRING_COMPONENTValue {}
    variable NULL_STRING_COMPONENTSet 0
    proc staticGet_NULL_STRING_COMPONENT {} {
        variable NULL_STRING_COMPONENTValue
        variable NULL_STRING_COMPONENTSet
        if {!$NULL_STRING_COMPONENTSet} {
            set NULL_STRING_COMPONENTSet 1
            set NULL_STRING_COMPONENTValue [::ABStringComponent new [[::BasicColorFactory::getInstance] jget BLACK] [[::BasicColorFactory::getInstance] jget WHITE]]
        }
        return $NULL_STRING_COMPONENTValue
    }
    proc staticSet_NULL_STRING_COMPONENT {value} {
        variable NULL_STRING_COMPONENTValue
        variable NULL_STRING_COMPONENTSet
        set NULL_STRING_COMPONENTSet 1
        set NULL_STRING_COMPONENTValue $value
    }
}


