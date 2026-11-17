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
# package org.allbinary.init.crypt.jcehelper

oo::class create ::BasicCryptUtil {
    superclass ::JObject
}

oo::define ::BasicCryptUtil {
    method initFields_BasicCryptUtil {} {
        my jset logUtil {}
        my jset tsUtil {}
        my jset XML_START {}
        my jset logUtil [::LogUtil::getInstance]
        my jset tsUtil [::TsUtil::getInstance]
        my jset XML_START "<?xml"
        return
    }

    constructor {} {
        next
        my initFields_BasicCryptUtil
    }
    
    

    method getDecryptedInputStream {inputStream cryptInterface} {
        set buffer [::ByteArrayOutputStream new]
        set ch 0
        while {true} {
            set ch [$inputStream read]
            if {[expr {$ch == [expr {-1}]}]} {
                break
            }
            $buffer write $ch
        }
        set decrypted [$cryptInterface decrypt [$buffer toByteArray]]
        set decryptedString $decrypted
        set index [string first [my jget XML_START] $decryptedString]
        if {[expr {$index > 0}]} {
            set decryptedString [jsubstring $decryptedString $index]
        }
        return [::ByteArrayInputStream new [[my jget tsUtil] getByteArray $decryptedString]]
    }
}

namespace eval ::BasicCryptUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BasicCryptUtil new]
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
        return [::BasicCryptUtil::staticGet_instance]
    }
}


