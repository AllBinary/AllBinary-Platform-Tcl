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
# package org.allbinary.logic.io

oo::class create ::StreamUtil {
    superclass ::JObject
}

oo::define ::StreamUtil {
    method initFields_StreamUtil {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_StreamUtil
    }
    

    method get {inputStream outputStream buffer} {
        set len 0
        while {true} {
            set len [$inputStream read $buffer 0 [$buffer length]]
            if {[expr {$len != [expr {-1}]}]} {
            } else {
                break
            }
            $outputStream write $buffer 0 $len
        }
        return $outputStream
    }
    

    method getByteArray {inputStream outputStream2 byteArray} {
        set outputStream $outputStream2
        try {
            my get $inputStream $outputStream $byteArray
            return [$outputStream toByteArray]
        } on error {e} {
            error $e
        } finally {
            my close $outputStream
        }
    }
    

    method close {closeable} {
        try {
            if {[expr {$closeable ne {}}]} {
                $closeable close
            }
            return true
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget CLOSE] $e
            return false
        }
    }
}

namespace eval ::StreamUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::StreamUtil new]
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
        return [::StreamUtil::staticGet_instance]
    }
}


