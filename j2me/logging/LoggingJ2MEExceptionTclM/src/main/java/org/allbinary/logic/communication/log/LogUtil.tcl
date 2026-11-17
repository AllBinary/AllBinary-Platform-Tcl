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
oo::class create ::LogUtil {
    superclass ::JObject
}

oo::define ::LogUtil {
    method initFields_LogUtil {} {
        my jset logFormatUtil {}
        my jset LOG_SUCCESS {}
        my jset logFormatUtil [::LogFormatUtil::getInstance]
        my jset LOG_SUCCESS "org.allbinary: "
        return
    }
    
    

    constructor {} {
        next
        my initFields_LogUtil
    }
    

    method putL {log} {
        if {[expr {$log eq [::LogFactory::staticGet_LOG]}]} {
            return
        }
        set exception [$log getThrowable]
        if {[expr {$exception eq {}}]} {
            return
        }
        set specialMessage [$log getSpecialMessage]
        set anyType [$log getObject]
        set functionName [$log getFunctionName]
        my put $specialMessage $anyType $functionName $exception
    }
    

    method putF {specialMessage anyType functionName} {
    }
    

    method putFS {specialMessage className functionName} {
    }
    

    method put {specialMessage anyType functionName exception} {
        set className [[::CommonStrings::getInstance] jget EMPTY]
        if {[expr {[jclassname $anyType] ne {}}]} {
            set className [jclassname $anyType]
        }
        set message [[my jget logFormatUtil] get $className $functionName $specialMessage $exception]
        puts [jstr [my jget LOG_SUCCESS]]
        puts [jstr $message]
    }
}

namespace eval ::LogUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LogUtil new]
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
        return [::LogUtil::staticGet_instance]
    }
}


