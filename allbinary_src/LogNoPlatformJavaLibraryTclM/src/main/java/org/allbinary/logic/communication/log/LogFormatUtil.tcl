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
# package org.allbinary.logic.communication.log

#NoPlatform
oo::class create ::LogFormatUtil {
    superclass ::JObject
}

oo::define ::LogFormatUtil {
    method initFields_LogFormatUtil {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_LogFormatUtil
    }
    

    method get {className functionName specialMessage exception} {
        error [jexception RuntimeException {}]
    }
    

    method getS {className functionName specialMessage} {
        error [jexception RuntimeException {}]
    }
    

    method getO {exception} {
        error [jexception RuntimeException {}]
    }
}

namespace eval ::LogFormatUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LogFormatUtil new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::LogFormatUtil::staticGet_instance]
    }
}


