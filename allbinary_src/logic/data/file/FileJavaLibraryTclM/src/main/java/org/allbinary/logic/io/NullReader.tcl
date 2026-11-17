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

oo::class create ::NullReader {
    superclass ::Reader
}

oo::define ::NullReader {
    method initFields_NullReader {} {
        return
    }

    constructor {} {
        next
        my initFields_NullReader
    }
    

    method read {} {
        return [expr {-1}]
    }
    

    method read {cbuf off len} {
        return [expr {-1}]
    }
    

    method ready {} {
        return false
    }
    

    method skip {n} {
        return 0
    }
    

    method close {} {
    }
}

namespace eval ::NullReader {
    variable NULL_READERValue {}
    variable NULL_READERSet 0
    proc staticGet_NULL_READER {} {
        variable NULL_READERValue
        variable NULL_READERSet
        if {!$NULL_READERSet} {
            set NULL_READERSet 1
            set NULL_READERValue [::NullReader new]
        }
        return $NULL_READERValue
    }
    proc staticSet_NULL_READER {value} {
        variable NULL_READERValue
        variable NULL_READERSet
        set NULL_READERSet 1
        set NULL_READERValue $value
    }
}


