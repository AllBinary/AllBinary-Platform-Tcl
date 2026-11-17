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
# package org.allbinary.logic.system.security.crypt.jcehelper

oo::class create ::BasicCrypt {
    superclass ::JObject
}

oo::define ::BasicCrypt {
    method initFields_BasicCrypt {} {
        my jset byteUtil {}
        my jset key {}
        my jset byteUtil [::ByteUtil::getInstance]
        
        return
    }
    

    constructor {keyAsString} {
        next
        my initFields_BasicCrypt
        set key [[::NullUtil::getInstance] jget NULL_BYTE_ARRAY]
        try {
            set key [[::TsUtil::getInstance] getByteArray $keyAsString]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            ::PreLogUtil::putOE [$commonStrings jget EXCEPTION] [self] "AbCrypt(alg,key)" $e
        }
        my jset key $key
    }
    

    method encrypt {array} {
        try {
            return [my mutilate $array]
        } on error {e} {
            ::PreLogUtil::putOE "Encrypt Failed" [self] "encrypt" $e
            return [[::NullUtil::getInstance] jget NULL_BYTE_ARRAY]
        }
    }
    

    method decrypt {array} {
        try {
            return [my mutilate $array]
        } on error {e} {
            ::PreLogUtil::putOE "decrypt Failed" [self] "decrypt" $e
            return [[::NullUtil::getInstance] jget NULL_BYTE_ARRAY]
        }
    }
    

    method mutilate {array} {
        set value 0
        for {set index 0} {[expr {$index < [[my jget key] length]}]} {jpostincr index 1} {
            set value [[my jget key] get $index]
            set array [[my jget byteUtil] xor $array $value]
        }
        return $array
    }
}

namespace eval ::BasicCrypt {
}


