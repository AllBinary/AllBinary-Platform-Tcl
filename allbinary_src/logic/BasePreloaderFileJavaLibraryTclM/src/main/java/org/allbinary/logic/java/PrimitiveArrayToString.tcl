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
# package org.allbinary.logic.java

oo::class create ::PrimitiveArrayToString {
    superclass ::JObject
}

oo::define ::PrimitiveArrayToString {
    method initFields_PrimitiveArrayToString {} {
        return
    }

    constructor {} {
        next
        my initFields_PrimitiveArrayToString
    }
    
}

namespace eval ::PrimitiveArrayToString {
    proc toString {floats} {
        set stringBuffer [::StringMaker new]
        for {set index 0} {[expr {$index < [$floats length]}]} {jpostincr index 1} {
            $stringBuffer appendfloat [$floats get $index]
        }
        return [$stringBuffer toString]
    }
}


