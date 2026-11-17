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
# package org.allbinary.logic.system.security.crypt.jcehelper

oo::class create ::SecretComposite {
    superclass ::BaseSecretComposite
}

oo::define ::SecretComposite {
    method initFields_SecretComposite {} {
        my jset byteUtil {}
        my jset cipher {}
        my jset secretKey {}
        my jset key {}
        my jset byteUtil [::ByteUtil::getInstance]
        
        
        
        return
    }
    

    constructor {secretKey cipher key} {
        next
        my initFields_SecretComposite
        my jset secretKey $secretKey
        my jset cipher $cipher
        my jset key $key
    }
    

    method encrypt {array} {
        set array [my mutilate $array]
        [my jget cipher] init [::Cipher::staticGet_ENCRYPT_MODE] [my jget secretKey]
        return [[my jget cipher] doFinal $array]
    }
    

    method decrypt {array} {
        [my jget cipher] init [::Cipher::staticGet_DECRYPT_MODE] [my jget secretKey]
        return [my mutilate [[my jget cipher] doFinal $array]]
    }
    

    method mutilate {array} {
        for {set index 0} {[expr {$index < [[my jget key] length]}]} {jpostincr index 1} {
            set value [[my jget key] get $index]
            if {[expr {[expr {[jint $value] < 8}] && [expr {[jint $value] > 0}]}]} {
                set array [[my jget byteUtil] xorByte $array [jint $value]]
            }
        }
        return $array
    }
}

namespace eval ::SecretComposite {
}


