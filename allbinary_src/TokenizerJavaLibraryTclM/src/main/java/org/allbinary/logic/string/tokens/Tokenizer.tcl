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
# package org.allbinary.logic.string.tokens

oo::class create ::Tokenizer {
    superclass ::JObject
}

oo::define ::Tokenizer {
    method initFields_Tokenizer {} {
        my jset sep {}
        my jset endSep {}
        
        my jset endSep [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }
    

    constructor {sep} {
        next
        my initFields_Tokenizer
        if {[expr {[[::TsUtil::getInstance] compareTo $sep [[::StringUtil::getInstance] jget EMPTY_STRING]] == 0}]} {
            error [jexception Exception "Sep provided is not valid"]
        }
        my jset sep $sep
    }
    

    method setSep {sep} {
        my jset sep $sep
    }
    

    method setEndSep {endSep} {
        my jset endSep $endSep
    }
    

    method getInsideSep {string} {
        set tokenList [::BasicArrayListD new]
        set index 0
        set size [string length $string]
        while {[expr {$index < $size}]} {
            set index [string first [my jget sep] $string]
            if {[expr {$index != [expr {-1}]}]} {
                set end [string first [my jget endSep] $string]
                if {[expr {$end != [expr {-1}]}]} {
                    $tokenList add [jsubstring $string [jint [expr {$index + [string length [my jget sep]]}]] [jint [expr {$end - ([jint [expr {[string length [my jget endSep]] - 1}]])}]]]
                    set index [jint [expr {$end + [string length [my jget endSep]]}]]
                } else {
                }
            } else {
                break
            }
        }
        return $tokenList
    }
    

    method getTokensFromString {string tokenVector} {
        set index 0
        set end 0
        while {[expr {$index < [string length $string]}]} {
            set end [string first [my jget sep] $string]
            if {[expr {$end != [expr {-1}]}]} {
                $tokenVector add [jsubstring $string $index $end]
                set index [jint [expr {$end + [string length [my jget sep]]}]]
            } else {
                $tokenVector add [jsubstring $string $index [string length $string]]
                break
            }
        }
        return $tokenVector
    }
    

    method getTokens {stringVector} {
        set tokenHashtable [[::StdUtil::getInstance] createHashtable]
        set string [[::StringUtil::getInstance] jget EMPTY_STRING]
        set end 0
        set size [$stringVector size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set string [[$stringVector jget objectArray] get $index]
            set end [string first [my jget sep] $string]
            if {[expr {$end >= 0}]} {
                $tokenHashtable put [jsubstring $string 0 $end] [jsubstring $string [jint [expr {$end + 1}]] [string length $string]]
            }
        }
        return $tokenHashtable
    }
}

namespace eval ::Tokenizer {
}


