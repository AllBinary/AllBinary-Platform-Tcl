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
# package org.allbinary.logic.java.bool

oo::class create ::BooleanUtil {
    superclass ::JObject
}

oo::define ::BooleanUtil {
    method initFields_BooleanUtil {} {
        my jset tsUtil {}
        my jset tsUtil [::TsUtil::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_BooleanUtil
    }
    

    method getFromString {booleanString} {
        set stringValidationUtil [::StringValidationUtil::getInstance]
        set booleanFactory [::BooleanFactory::getInstance]
        if {[$stringValidationUtil isEmpty $booleanString]} {
            return false
        }
        set booleanStringLowerCase [string tolower $booleanString]
        if {[expr {[[my jget tsUtil] compareTo $booleanStringLowerCase [$booleanFactory jget TRUE_STRING]] == 0}]} {
            return true
        } elseif {[expr {[[my jget tsUtil] compareTo $booleanStringLowerCase [$booleanFactory jget FALSE_STRING]] == 0}]} {
            return false
        } else {
            error [jexception Exception "Invalid booleanString - Must be true or false"]
        }
    }
    

    method isStringBoolean {booleanString} {
        set booleanFactory [::BooleanFactory::getInstance]
        set booleanStringLowerCase [string tolower $booleanString]
        if {[expr {[expr {[jcompareto $booleanStringLowerCase [$booleanFactory jget TRUE_STRING]] == 0}] || [expr {[jcompareto $booleanStringLowerCase [$booleanFactory jget FALSE_STRING]] == 0}]}]} {
            return true
        }
        return false
    }
    

    method toStringFromBooleanArray {booleanArray} {
        set stringMaker [::StringMaker new]
        set size [$booleanArray length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $stringMaker appendboolean [$booleanArray get $index]
        }
        return [$stringMaker toString]
    }
}

namespace eval ::BooleanUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BooleanUtil new]
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
        return [::BooleanUtil::staticGet_instance]
    }
}


