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
# package org.allbinary.logic.string

oo::class create ::StringValidationJSEUtil {
    superclass ::JObject
}

oo::define ::StringValidationJSEUtil {
    method initFields_StringValidationJSEUtil {} {
        return
    }
    

    constructor {} {
        next
        my initFields_StringValidationJSEUtil
    }
    
}

namespace eval ::StringValidationJSEUtil {
    proc isBlank {string} {
        set len [string length $string]
        for {set i 0} {[expr {$i < $len}]} {jpostincr i 1} {
            set c [scan [string index $string $i] %c]
            if {[expr {[::Character::isWhitespace $c] == false}]} {
                return false
            }
        }
        return true
    }
}


