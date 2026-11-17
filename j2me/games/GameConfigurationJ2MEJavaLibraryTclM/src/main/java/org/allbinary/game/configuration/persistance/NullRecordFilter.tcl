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
# package org.allbinary.game.configuration.persistance

oo::class create ::NullRecordFilter {
    superclass ::JObject
}

oo::define ::NullRecordFilter {
    method initFields_NullRecordFilter {} {
        return
    }

    constructor {} {
        next
        my initFields_NullRecordFilter
    }
    

    method matches {candidate} {
        return true
    }
}

namespace eval ::NullRecordFilter {
    variable NULL_RECORD_FILTERValue {}
    variable NULL_RECORD_FILTERSet 0
    proc staticGet_NULL_RECORD_FILTER {} {
        variable NULL_RECORD_FILTERValue
        variable NULL_RECORD_FILTERSet
        if {!$NULL_RECORD_FILTERSet} {
            set NULL_RECORD_FILTERSet 1
            set NULL_RECORD_FILTERValue [::NullRecordFilter new]
        }
        return $NULL_RECORD_FILTERValue
    }
    proc staticSet_NULL_RECORD_FILTER {value} {
        variable NULL_RECORD_FILTERValue
        variable NULL_RECORD_FILTERSet
        set NULL_RECORD_FILTERSet 1
        set NULL_RECORD_FILTERValue $value
    }
}


