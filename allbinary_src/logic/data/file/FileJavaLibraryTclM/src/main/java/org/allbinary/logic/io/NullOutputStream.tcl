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

oo::class create ::NullOutputStream {
    superclass ::OutputStream
}

oo::define ::NullOutputStream {
    method initFields_NullOutputStream {} {
        return
    }

    constructor {} {
        next
        my initFields_NullOutputStream
    }
    

    method write {b} {
    }
    

    method write {b off len} {
    }
    

    method close {} {
    }
}

namespace eval ::NullOutputStream {
    variable NULL_OUTPUT_STREAMValue {}
    variable NULL_OUTPUT_STREAMSet 0
    proc staticGet_NULL_OUTPUT_STREAM {} {
        variable NULL_OUTPUT_STREAMValue
        variable NULL_OUTPUT_STREAMSet
        if {!$NULL_OUTPUT_STREAMSet} {
            set NULL_OUTPUT_STREAMSet 1
            set NULL_OUTPUT_STREAMValue [::NullOutputStream new]
        }
        return $NULL_OUTPUT_STREAMValue
    }
    proc staticSet_NULL_OUTPUT_STREAM {value} {
        variable NULL_OUTPUT_STREAMValue
        variable NULL_OUTPUT_STREAMSet
        set NULL_OUTPUT_STREAMSet 1
        set NULL_OUTPUT_STREAMValue $value
    }
}


