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
# package org.allbinary.time

#ActualPlatform
oo::class create ::TimeStampUtil {
    superclass ::JObject
}

oo::define ::TimeStampUtil {
    method initFields_TimeStampUtil {} {
        my jset simpleDataFormat {}
        my jset simpleDataFormat [::SimpleDateFormat new "yyyy-MM-dd HH:mm:ss.SSS"]
        return
    }
    
    

    constructor {} {
        next
        my initFields_TimeStampUtil
    }
    

    method getAsString {} {
        set calendar [::Calendar::getInstance]
        set date [$calendar getTime]
        return [[my jget simpleDataFormat] format $date]
    }
}

namespace eval ::TimeStampUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::TimeStampUtil new]
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
        return [::TimeStampUtil::staticGet_instance]
    }
}


