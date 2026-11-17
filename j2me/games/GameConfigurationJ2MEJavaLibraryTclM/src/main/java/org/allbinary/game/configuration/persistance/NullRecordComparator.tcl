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

oo::class create ::NullRecordComparator {
    superclass ::JObject
}

oo::define ::NullRecordComparator {
    method initFields_NullRecordComparator {} {
        return
    }

    constructor {} {
        next
        my initFields_NullRecordComparator
    }
    

    method compare {rec1 rec2} {
        return 0
    }
}

namespace eval ::NullRecordComparator {
    variable NULL_RECORD_COMPARATORValue {}
    variable NULL_RECORD_COMPARATORSet 0
    proc staticGet_NULL_RECORD_COMPARATOR {} {
        variable NULL_RECORD_COMPARATORValue
        variable NULL_RECORD_COMPARATORSet
        if {!$NULL_RECORD_COMPARATORSet} {
            set NULL_RECORD_COMPARATORSet 1
            set NULL_RECORD_COMPARATORValue [::NullRecordComparator new]
        }
        return $NULL_RECORD_COMPARATORValue
    }
    proc staticSet_NULL_RECORD_COMPARATOR {value} {
        variable NULL_RECORD_COMPARATORValue
        variable NULL_RECORD_COMPARATORSet
        set NULL_RECORD_COMPARATORSet 1
        set NULL_RECORD_COMPARATORValue $value
    }
}


