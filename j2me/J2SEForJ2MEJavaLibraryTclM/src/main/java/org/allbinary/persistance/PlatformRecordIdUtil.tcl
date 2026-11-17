# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.persistance

oo::class create ::PlatformRecordIdUtil {
    superclass ::JObject
}

oo::define ::PlatformRecordIdUtil {
    method initFields_PlatformRecordIdUtil {} {
        my jset PLATFORM_SHORT_NAME {}
        my jset PLATFORM_SHORT_NAME "JSE"
        return
    }

    constructor {} {
        next
        my initFields_PlatformRecordIdUtil
    }
    
    

    method getRecordId {abeClientInformation baseRecordId} {
        return [[[[[[::StringMaker new] append [$abeClientInformation toShortString]] append [[::CommonSeps::getInstance] jget UNDERSCORE]] append [my jget PLATFORM_SHORT_NAME]] append $baseRecordId] toString]
    }
}

namespace eval ::PlatformRecordIdUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PlatformRecordIdUtil new]
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
        return [::PlatformRecordIdUtil::staticGet_instance]
    }
}


