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
# package javax.microedition.lcdui

oo::class create ::NullImage {
    superclass ::JObject
}

oo::define ::NullImage {
    method initFields_NullImage {} {
        return
    }

    constructor {} {
        next
        my initFields_NullImage
    }
}

namespace eval ::NullImage {
    variable NULL_IMAGE_ARRAYValue {}
    variable NULL_IMAGE_ARRAYSet 0
    proc staticGet_NULL_IMAGE_ARRAY {} {
        variable NULL_IMAGE_ARRAYValue
        variable NULL_IMAGE_ARRAYSet
        if {!$NULL_IMAGE_ARRAYSet} {
            set NULL_IMAGE_ARRAYSet 1
            set NULL_IMAGE_ARRAYValue [jarray 0 {}]
        }
        return $NULL_IMAGE_ARRAYValue
    }
    proc staticSet_NULL_IMAGE_ARRAY {value} {
        variable NULL_IMAGE_ARRAYValue
        variable NULL_IMAGE_ARRAYSet
        set NULL_IMAGE_ARRAYSet 1
        set NULL_IMAGE_ARRAYValue $value
    }
    variable NULL_IMAGEValue {}
    variable NULL_IMAGESet 0
    proc staticGet_NULL_IMAGE {} {
        variable NULL_IMAGEValue
        variable NULL_IMAGESet
        if {!$NULL_IMAGESet} {
            set NULL_IMAGESet 1
            set NULL_IMAGEValue [::Image new]
        }
        return $NULL_IMAGEValue
    }
    proc staticSet_NULL_IMAGE {value} {
        variable NULL_IMAGEValue
        variable NULL_IMAGESet
        set NULL_IMAGESet 1
        set NULL_IMAGEValue $value
    }
}


