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
oo::class create ::LogFormatUtil {
    superclass ::JObject
}

oo::define ::LogFormatUtil {
    method initFields_LogFormatUtil {} {
        my jset timeStampUtil {}
        my jset commonSeps {}
        my jset NONE {}
        my jset LOG_ERROR {}
        my jset EMPTY {}
        my jset STACK_TRACE {}
        my jset TIME {}
        my jset CLASS_NAME {}
        my jset FUNCTION_CALL {}
        my jset SPECIAL_MESSAGE {}
        my jset stringUtil {}
        my jset exceptionUtil {}
        my jset nullUtil {}
        my jset timeStampUtil [::TimeStampUtil::getInstance]
        my jset commonSeps [::CommonSeps::getInstance]
        my jset NONE "None"
        my jset LOG_ERROR "\nLog-Error: "
        my jset EMPTY "Empty"
        my jset STACK_TRACE "\nStack Trace: "
        my jset TIME "Time: "
        my jset CLASS_NAME [[my jget commonSeps] jget SPACE]
        my jset FUNCTION_CALL [[::CommonLabels::getInstance] jget COLON_SEP]
        my jset SPECIAL_MESSAGE "> "
        my jset stringUtil [::StringUtil::getInstance]
        my jset exceptionUtil [::ExceptionUtil::getInstance]
        my jset nullUtil [::NullUtil::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_LogFormatUtil
    }
    

    method get {className functionName specialMessage exception} {
        set stringBuffer [my getF $className $functionName]
        $stringBuffer append [my getO $exception]
        $stringBuffer append [my jget SPECIAL_MESSAGE]
        $stringBuffer append $specialMessage
        $stringBuffer append [[my jget commonSeps] jget NEW_LINE]
        return [$stringBuffer toString]
    }
    

    method getS {className functionName specialMessage} {
        set stringBuffer [my getF $className $functionName]
        $stringBuffer append [my jget SPECIAL_MESSAGE]
        $stringBuffer append $specialMessage
        $stringBuffer append [[my jget commonSeps] jget NEW_LINE]
        return [$stringBuffer toString]
    }
    

    method getF {className functionName} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [my jget TIME]
        $stringBuffer append [[my jget timeStampUtil] getAsString]
        $stringBuffer append [my jget CLASS_NAME]
        $stringBuffer append $className
        $stringBuffer append [my jget FUNCTION_CALL]
        $stringBuffer append $functionName
        return $stringBuffer
    }
    

    method getO {exception} {
        if {[expr {$exception ne [[my jget nullUtil] jget NULL_OBJECT]}]} {
            set stringBuffer [::StringMaker new]
            $stringBuffer append [my jget LOG_ERROR]
            set exceptionAsString [$exception toString]
            $stringBuffer append $exceptionAsString
            $stringBuffer append [my jget STACK_TRACE]
            if {[expr {$exception ne [[my jget nullUtil] jget NULL_OBJECT]}]} {
                $stringBuffer append [[my jget exceptionUtil] getStackTrace $exception]
            } else {
                $stringBuffer append [[my jget stringUtil] jget NULL_STRING]
            }
            return [$stringBuffer toString]
        } else {
            return [[::StringUtil::getInstance] jget EMPTY_STRING]
        }
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


