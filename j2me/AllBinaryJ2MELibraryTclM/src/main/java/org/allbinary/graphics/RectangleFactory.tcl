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
# package org.allbinary.graphics

oo::class create ::RectangleFactory {
    superclass ::JObject
}

oo::define ::RectangleFactory {
    method initFields_RectangleFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_RectangleFactory
    }
}

namespace eval ::RectangleFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::Rectangle new [[::PointFactory::getInstance] jget ZERO_ZERO] 0 0]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    variable ARRAY_OF_ARRAYSValue {}
    variable ARRAY_OF_ARRAYSSet 0
    proc staticGet_ARRAY_OF_ARRAYS {} {
        variable ARRAY_OF_ARRAYSValue
        variable ARRAY_OF_ARRAYSSet
        if {!$ARRAY_OF_ARRAYSSet} {
            set ARRAY_OF_ARRAYSSet 1
            set ARRAY_OF_ARRAYSValue [jarrayof 0 {jarray 0 {}}]
        }
        return $ARRAY_OF_ARRAYSValue
    }
    proc staticSet_ARRAY_OF_ARRAYS {value} {
        variable ARRAY_OF_ARRAYSValue
        variable ARRAY_OF_ARRAYSSet
        set ARRAY_OF_ARRAYSSet 1
        set ARRAY_OF_ARRAYSValue $value
    }
}


