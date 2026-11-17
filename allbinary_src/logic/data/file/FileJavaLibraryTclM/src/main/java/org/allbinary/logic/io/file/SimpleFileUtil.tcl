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
# package org.allbinary.logic.io.file

oo::class create ::SimpleFileUtil {
    superclass ::JObject
}

oo::define ::SimpleFileUtil {
    method initFields_SimpleFileUtil {} {
        my jset logUtil {}
        my jset NULL_WRITER {}
        my jset NULL_READER {}
        my jset commonStrings {}
        my jset nullUtil {}
        my jset streamUtil {}
        my jset logUtil [::LogUtil::getInstance]
        my jset NULL_WRITER [::SimpleFileUtil::nullWriter]
        my jset NULL_READER [::SimpleFileUtil::nullReader]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset nullUtil [::NullUtil::getInstance]
        my jset streamUtil [::StreamUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_SimpleFileUtil
    }
    
    
    
    
    

    method loadFileAsList {inputStream max byteArray1} {
        return [my loadFileAsListReturnLine $inputStream $max $byteArray1 0]
    }
    

    method loadFileAsListReturnLine {inputStream max byteArray1 includeReturnLine} {
        set stringList [::BasicArrayListD new]
        if {[expr {$inputStream eq {}}]} {
            return $stringList
        }
        set byteArray [[my jget nullUtil] jget NULL_BYTE_ARRAY]
        try {
            set outputStream2 [::ByteArrayOutputStream new $max]
            set byteArray [[my jget streamUtil] getByteArray $inputStream $outputStream2 $byteArray1]
            [my jget streamUtil] close $inputStream
        } on error {e} {
            [my jget streamUtil] close $inputStream
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget ADD] $e
        }
        if {[expr {$byteArray eq {}}]} {
            return $stringList
        }
        set size [$byteArray length]
        set index 0
        set startIndex 0
        set returnLine 0
        while {[expr {$index < $size}]} {
            set startIndex $index
            while {[expr {[expr {$index < [jint [expr {$size - 1}]]}] && [expr {[$byteArray get $index] != [jbyte [scan "\n" %c]]}]}]} {
                jpostincr index 1
            }
            if {[expr {$includeReturnLine == 0}]} {
                if {[expr {[expr {$index > 0}] && [expr {[$byteArray get [jint [expr {$index - 1}]]] == [jbyte [scan "\r" %c]]}]}]} {
                    set returnLine 1
                } else {
                    set returnLine 0
                }
            }
            set s [jfromchars $byteArray $startIndex ([jint [expr {[jint [expr {[jint [expr {$index + $includeReturnLine}]] - $returnLine}]] - $startIndex}]])]
            $stringList add $s
            jpostincr index 1
        }
        return $stringList
    }
    

    method createStringFromArrayOfStrings {stringArray} {
        set stringMaker [::StringMaker new]
        set size [$stringArray length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $stringMaker append [$stringArray get $index]
        }
        return [$stringMaker toString]
    }
}

namespace eval ::SimpleFileUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::SimpleFileUtil new]
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
        return [::SimpleFileUtil::staticGet_instance]
    }
    proc nullOutputStream {} {
        return [::NullOutputStream::staticGet_NULL_OUTPUT_STREAM]
    }
    proc nullWriter {} {
        return [::NullWriter::staticGet_NULL_WRITER]
    }
    proc nullReader {} {
        return [::NullReader::staticGet_NULL_READER]
    }
}


