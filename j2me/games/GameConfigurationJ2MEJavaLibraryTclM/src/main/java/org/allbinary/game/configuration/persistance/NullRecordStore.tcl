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

oo::class create ::NullRecordStore {
    superclass ::RecordStore
}

oo::define ::NullRecordStore {
    method initFields_NullRecordStore {} {
        return
    }

    constructor {} {
        next
        my initFields_NullRecordStore
    }
}

namespace eval ::NullRecordStore {
    variable NULL_RECORD_STOREValue {}
    variable NULL_RECORD_STORESet 0
    proc staticGet_NULL_RECORD_STORE {} {
        variable NULL_RECORD_STOREValue
        variable NULL_RECORD_STORESet
        if {!$NULL_RECORD_STORESet} {
            set NULL_RECORD_STORESet 1
            set NULL_RECORD_STOREValue [::NullRecordStore new]
        }
        return $NULL_RECORD_STOREValue
    }
    proc staticSet_NULL_RECORD_STORE {value} {
        variable NULL_RECORD_STOREValue
        variable NULL_RECORD_STORESet
        set NULL_RECORD_STORESet 1
        set NULL_RECORD_STOREValue $value
    }
}


