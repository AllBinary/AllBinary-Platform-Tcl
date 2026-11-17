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

oo::class create ::AbCrypt {
    superclass ::JObject
}

oo::define ::AbCrypt {
    method initFields_AbCrypt {} {
        my jset tsUtil {}
        my jset secretComposite {}
        my jset algorithm {}
        my jset tsUtil [::TsUtil::getInstance]
        my jset secretComposite [::BaseSecretComposite::staticGet_NULL_SECRET_COMPOSITE]
        
        return
    }
    

    constructor {algorithm} {
        next
        my initFields_AbCrypt
        my jset algorithm $algorithm
    }
    

    method init {keyAsString} {
        set commonStrings [::CommonStrings::getInstance]
        try {
            try {
                ::Security::addProvider [::BouncyCastleProvider new]
            } on error {e} {
                ::PreLogUtil::putOE [$commonStrings jget EXCEPTION] [self] [$commonStrings jget INIT] $e
            }
            set key [[my jget tsUtil] getByteArray $keyAsString]
            set keySpec [[::KeySpecFactory::getInstance] getInstance [my jget algorithm] $key]
            set keyFactory [::SecretKeyFactory::getInstance [my jget algorithm]]
            set secretKey [$keyFactory generateSecret $keySpec]
            set cipher [::Cipher::getInstance [my jget algorithm]]
            my jset secretComposite [::SecretComposite new $secretKey $cipher $key]
        } on error {e} {
            ::PreLogUtil::putOE "init Failed" [self] [$commonStrings jget INIT] $e
        }
    }
    

    method encrypt {array} {
        try {
            return [[my jget secretComposite] encrypt $array]
        } on error {e} {
            ::PreLogUtil::putOE "Encrypt Failed" [self] "encrypt" $e
            return [[::NullUtil::getInstance] jget NULL_BYTE_ARRAY]
        }
    }
    

    method decrypt {array} {
        try {
            return [[my jget secretComposite] decrypt $array]
        } on error {e} {
            ::PreLogUtil::putOE "decrypt Failed" [self] "decrypt" $e
            return [[::NullUtil::getInstance] jget NULL_BYTE_ARRAY]
        }
    }
}

namespace eval ::AbCrypt {
}


