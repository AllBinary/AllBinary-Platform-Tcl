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

oo::class create ::StringValidationUtil {
    superclass ::JObject
}

oo::define ::StringValidationUtil {
    method initFields_StringValidationUtil {} {
        my jset stringUtil {}
        my jset tsUtil {}
        my jset stringUtil [::StringUtil::getInstance]
        my jset tsUtil [::TsUtil::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_StringValidationUtil
    }
    

    method containsSpaces {value} {
        if {[expr {[string first [scan " " %c] $value] >= 0}]} {
            return true
        }
        return false
    }
    

    method isNumber {value} {
        set numberOfDecimalPoints 0
        for {set index 0} {[expr {$index < [string length $value]}]} {jpostincr index 1} {
            set digit [scan [string index $value $index] %c]
            if {[expr {[expr {![my isNumberFromChar $digit]}] && [expr {$digit != [scan "." %c]}]}]} {
                return false
            }
            if {[expr {$digit == [scan "." %c]}]} {
                jpostincr numberOfDecimalPoints 1
                if {[expr {$numberOfDecimalPoints > 1}]} {
                    return false
                }
            }
        }
        return true
    }
    

    method isNumberFromChar {digit} {
        if {[expr {[expr {[expr {[expr {[expr {[expr {[expr {[expr {[expr {[expr {$digit != [scan "0" %c]}] && [expr {$digit != [scan "1" %c]}]}] && [expr {$digit != [scan "2" %c]}]}] && [expr {$digit != [scan "3" %c]}]}] && [expr {$digit != [scan "4" %c]}]}] && [expr {$digit != [scan "5" %c]}]}] && [expr {$digit != [scan "6" %c]}]}] && [expr {$digit != [scan "7" %c]}]}] && [expr {$digit != [scan "8" %c]}]}] && [expr {$digit != [scan "9" %c]}]}]} {
            return false
        }
        return true
    }
    

    method isValidRequired {value min max} {
        if {[expr {[expr {[string length $value] < $min}] || [expr {[string length $value] > $max}]}]} {
            return false
        }
        return true
    }
    

    method isValidRequiredNumber {value min max} {
        if {[expr {[expr {[my isEmpty $value] || [expr {[string length $value] < $min}]}] || [expr {[string length $value] > $max}]}]} {
            return false
        }
        if {[expr {![my isNumber $value]}]} {
            return false
        }
        return true
    }
    

    method isValidNotRequired {value min max} {
        if {[expr {[string length $value] > 0}]} {
            if {[expr {[expr {[string length $value] < $min}] || [expr {[string length $value] > $max}]}]} {
                return false
            }
        }
        return true
    }
    

    method isValidNotRequiredNumber {value min max} {
        if {[expr {[string length $value] > 0}]} {
            if {[expr {[expr {[expr {[[my jget tsUtil] compareTo $value [[my jget stringUtil] jget NULL_STRING]] == 0}] || [expr {[string length $value] < $min}]}] || [expr {[string length $value] > $max}]}]} {
                return false
            }
            if {[expr {![my isNumber $value]}]} {
                return false
            }
        }
        return true
    }
    

    method isEmpty {string} {
        if {[expr {[expr {[[my jget tsUtil] compareTo $string [[my jget stringUtil] jget NULL_STRING]] != 0}] && [expr {[[my jget tsUtil] compareTo $string [[my jget stringUtil] jget EMPTY_STRING]] != 0}]}]} {
            return false
        } else {
            return true
        }
    }
}

namespace eval ::StringValidationUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::StringValidationUtil new]
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
        return [::StringValidationUtil::staticGet_instance]
    }
}


