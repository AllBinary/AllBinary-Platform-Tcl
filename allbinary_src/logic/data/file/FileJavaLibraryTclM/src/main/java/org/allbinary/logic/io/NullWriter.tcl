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

oo::class create ::NullWriter {
    superclass ::Writer
}

oo::define ::NullWriter {
    method initFields_NullWriter {} {
        return
    }

    constructor {} {
        next
        my initFields_NullWriter
    }
    

    method write {c} {
    }
    

    method write {cbuf off len} {
    }
    

    method write {str} {
    }
    

    method write {str off len} {
    }
    

    method flush {} {
    }
    

    method close {} {
    }
}

namespace eval ::NullWriter {
    variable NULL_WRITERValue {}
    variable NULL_WRITERSet 0
    proc staticGet_NULL_WRITER {} {
        variable NULL_WRITERValue
        variable NULL_WRITERSet
        if {!$NULL_WRITERSet} {
            set NULL_WRITERSet 1
            set NULL_WRITERValue [::NullWriter new]
        }
        return $NULL_WRITERValue
    }
    proc staticSet_NULL_WRITER {value} {
        variable NULL_WRITERValue
        variable NULL_WRITERSet
        set NULL_WRITERSet 1
        set NULL_WRITERValue $value
    }
}


