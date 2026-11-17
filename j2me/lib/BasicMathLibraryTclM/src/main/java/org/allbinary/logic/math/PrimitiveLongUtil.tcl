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
# package org.allbinary.logic.math

oo::class create ::PrimitiveLongUtil {
    superclass ::JObject
}

oo::define ::PrimitiveLongUtil {
    method initFields_PrimitiveLongUtil {} {
        my jset logUtil {}
        my jset powerOfTen 0
        my jset maxValue 0
        my jset maxDigits 0
        my jset charArray {}
        my jset currentTotalDigits 0
        my jset primitiveLongSingleton {}
        my jset logUtil [::LogUtil::getInstance]
        
        
        
        
        my jset currentTotalDigits 0
        my jset primitiveLongSingleton [::PrimitiveLongSingleton::getInstance]
        return
    }
    
    

    constructor {powerOfTen unused} {
        next
        my initFields_PrimitiveLongUtil
        my jset maxDigits [[::MathUtil::getInstance] getTotalDigits $powerOfTen]
        my jset powerOfTen $powerOfTen
        my jset maxValue [jint [expr {([jint [expr {$powerOfTen * 10}]]) - 1}]]
        my jset charArray [jarray [my jget maxDigits] 0]
    }
    

    method getCharArray {value} {
        if {[expr {$value < 10}]} {
            my setCurrentTotalDigits 1
            return [[[my jget primitiveLongSingleton] jget NUMBER_CHAR_ARRAYS] get $value]
        }
        if {[expr {$value > [my jget maxValue]}]} {
            my setCurrentTotalDigits 3
            return [[my jget primitiveLongSingleton] jget UNK]
        }
        set index 0
        set div [my jget powerOfTen]
        set lastValue 0
        while {[expr {$div >= 1}]} {
            set digit [jdiv ([jint [expr {$value - $lastValue}]]) $div]
            if {[expr {[expr {$digit >= 0}] && [expr {$digit < 10}]}]} {
                if {[expr {[expr {$digit == 0}] && [expr {$index == 0}]}]} {
                } else {
                    [my jget charArray] set [jpostincr index 1] [[[my jget primitiveLongSingleton] jget NUMBER_CHAR_ARRAY] get $digit]
                }
                set lastValue [jint [expr {$lastValue + [jint [expr {$digit * $div}]]}]]
            }
            set div [jdiv $div 10]
        }
        my setCurrentTotalDigits $index
        return [my jget charArray]
    }
    

    method setCurrentTotalDigits {currentTotalDigits} {
        my jset currentTotalDigits $currentTotalDigits
    }
    

    method getCurrentTotalDigits {} {
        return [my jget currentTotalDigits]
    }
    

    method getMaxDigits {} {
        return [my jget maxDigits]
    }
}

namespace eval ::PrimitiveLongUtil {
    proc createPowerOfTen {powerOfTen} {
        set primitiveLongUtil [::PrimitiveLongUtil new $powerOfTen [[::NullUtil::getInstance] jget NULL_OBJECT]]
        if {[expr {[jrem $powerOfTen 10] != 0}]} {
            set logUtil [::LogUtil::getInstance]
            set commonStrings [::CommonStrings::getInstance]
            $logUtil put [$commonStrings jget EXCEPTION] $primitiveLongUtil [$commonStrings jget CONSTRUCTOR] [jexception Exception "Max must be power of 10"]
        }
        return $primitiveLongUtil
    }
}


