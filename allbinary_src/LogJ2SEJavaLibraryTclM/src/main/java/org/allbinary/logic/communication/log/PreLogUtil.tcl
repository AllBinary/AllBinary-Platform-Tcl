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

#ActualPlatform
oo::class create ::PreLogUtil {
    superclass ::JObject
}

oo::define ::PreLogUtil {
    method initFields_PreLogUtil {} {
        return
    }
    

    constructor {} {
        next
        my initFields_PreLogUtil
    }
    
    
    
    
}

namespace eval ::PreLogUtil {
    variable LOG_SUCCESSValue {}
    variable LOG_SUCCESSSet 0
    proc staticGet_LOG_SUCCESS {} {
        variable LOG_SUCCESSValue
        variable LOG_SUCCESSSet
        if {!$LOG_SUCCESSSet} {
            set LOG_SUCCESSSet 1
            set LOG_SUCCESSValue "org.allbinary: "
        }
        return $LOG_SUCCESSValue
    }
    proc staticSet_LOG_SUCCESS {value} {
        variable LOG_SUCCESSValue
        variable LOG_SUCCESSSet
        set LOG_SUCCESSSet 1
        set LOG_SUCCESSValue $value
    }
    proc put {specialMessage anyType functionName} {
        ::PreLogUtil::putOE $specialMessage $anyType $functionName [[::NullUtil::getInstance] jget NULL_OBJECT]
    }
    proc putOE {specialMessage anyType functionName exception} {
        set className [[::CommonStrings::getInstance] jget EMPTY]
        if {[expr {[jclassname $anyType] ne {}}]} {
            set className [jclassname $anyType]
        }
        set message [[::LogFormatUtil::getInstance] get $className $functionName $specialMessage $exception]
        puts [jstr [::PreLogUtil::staticGet_LOG_SUCCESS]]
        puts [jstr $message]
    }
    proc putS {specialMessage className functionName} {
        ::PreLogUtil::putSE $specialMessage $className $functionName [[::NullUtil::getInstance] jget NULL_OBJECT]
    }
    proc putSE {specialMessage className functionName exception} {
        set message [[::LogFormatUtil::getInstance] get $className $functionName $specialMessage $exception]
        puts [jstr [::PreLogUtil::staticGet_LOG_SUCCESS]]
        puts [jstr $message]
    }
}


