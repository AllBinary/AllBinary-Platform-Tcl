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
# package org.allbinary.logic.io

oo::class create ::NullCloseable {
    superclass ::JObject
}

oo::define ::NullCloseable {
    method initFields_NullCloseable {} {
        return
    }

    constructor {} {
        next
        my initFields_NullCloseable
    }
    

    method close {} {
    }
}

namespace eval ::NullCloseable {
    variable NULL_CLOSEABLEValue {}
    variable NULL_CLOSEABLESet 0
    proc staticGet_NULL_CLOSEABLE {} {
        variable NULL_CLOSEABLEValue
        variable NULL_CLOSEABLESet
        if {!$NULL_CLOSEABLESet} {
            set NULL_CLOSEABLESet 1
            set NULL_CLOSEABLEValue [::NullCloseable new]
        }
        return $NULL_CLOSEABLEValue
    }
    proc staticSet_NULL_CLOSEABLE {value} {
        variable NULL_CLOSEABLEValue
        variable NULL_CLOSEABLESet
        set NULL_CLOSEABLESet 1
        set NULL_CLOSEABLEValue $value
    }
}


