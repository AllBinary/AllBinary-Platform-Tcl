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

oo::class create ::Log {
    superclass ::JObject
}

oo::define ::Log {
    method initFields_Log {} {
        my jset logFormatUtil {}
        my jset specialMessage {}
        my jset anyType {}
        my jset functionName {}
        my jset exception {}
        my jset logFormatUtil [::LogFormatUtil::getInstance]
        
        
        
        
        return
    }
    

    constructor {specialMessage anyType functionName exception} {
        next
        my initFields_Log
        my jset specialMessage $specialMessage
        my jset anyType $anyType
        my jset functionName $functionName
        my jset exception $exception
    }
    

    method getSpecialMessage {} {
        return [my jget specialMessage]
    }
    

    method getObject {} {
        return [my jget anyType]
    }
    

    method getFunctionName {} {
        return [my jget functionName]
    }
    

    method getThrowable {} {
        return [my jget exception]
    }
    

    method toString {} {
        set className [[::CommonStrings::getInstance] jget EMPTY]
        set clazz [jclassname [my jget anyType]]
        if {[expr {[$clazz getName] ne {}}]} {
            set className [$clazz getName]
        }
        return [[my jget logFormatUtil] get $className [my jget functionName] [my jget specialMessage] [my jget exception]]
    }
}

namespace eval ::Log {
}


