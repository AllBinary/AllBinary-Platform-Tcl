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
# package org.allbinary.logic.system.security.crypt

oo::class create ::DatabaseEncoder {
    superclass ::JObject
}

oo::define ::DatabaseEncoder {
    method initFields_DatabaseEncoder {} {
        return
    }
    

    constructor {} {
        next
        my initFields_DatabaseEncoder
    }
    
    
}

namespace eval ::DatabaseEncoder {
    proc encode {value} {
        try {
            set array $value
            set stringBuffer [::StringMaker new]
            for {set index 0} {[expr {$index < [$array length]}]} {jpostincr index 1} {
                $stringBuffer append [[$array get $index] toString]
                if {[expr {$index < [jint [expr {[$array length] - 1}]]}]} {
                    $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
                }
            }
            return [$stringBuffer toString]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            ::PreLogUtil::putOE [$commonStrings jget EXCEPTION] "DatabaseEncoder" "decode" $e
            return [[::StringUtil::getInstance] jget EMPTY_STRING]
        }
    }
    proc decode {value} {
        try {
            set tokenizer [::Tokenizer new [[::CommonSeps::getInstance] jget SPACE]]
            set vector [$tokenizer getTokensFromString $value [::BasicArrayListD new]]
            set size [$vector size]
            set decode [jarray $size 0]
            set byteOfData {}
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                set byteOfData [[$vector jget objectArray] get $index]
                $decode set $index [::Byte::parseByte $byteOfData]
            }
            return $decode
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            ::PreLogUtil::putSE [$commonStrings jget EXCEPTION] "DatabaseEncoder" "decode" $e
            return [[::NullUtil::getInstance] jget NULL_BYTE_ARRAY]
        }
    }
}


