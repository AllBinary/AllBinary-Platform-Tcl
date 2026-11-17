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
# package org.allbinary.logic.util.event

oo::class create ::AllBinaryEventObject {
    superclass ::JObject
}

oo::define ::AllBinaryEventObject {
    method initFields_AllBinaryEventObject {} {
        my jset source {}
        
        return
    }
    

    constructor {anyType} {
        next
        my initFields_AllBinaryEventObject
        my jset source $anyType
    }
    

    method getSource {} {
        return [my jget source]
    }
    

    method setSource {source} {
        my jset source $source
    }
}

namespace eval ::AllBinaryEventObject {
    variable NULL_EVENTValue {}
    variable NULL_EVENTSet 0
    proc staticGet_NULL_EVENT {} {
        variable NULL_EVENTValue
        variable NULL_EVENTSet
        if {!$NULL_EVENTSet} {
            set NULL_EVENTSet 1
            set NULL_EVENTValue [::AllBinaryEventObject new [[::NullUtil::getInstance] jget NULL_OBJECT]]
        }
        return $NULL_EVENTValue
    }
    proc staticSet_NULL_EVENT {value} {
        variable NULL_EVENTValue
        variable NULL_EVENTSet
        set NULL_EVENTSet 1
        set NULL_EVENTValue $value
    }
}


