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
# package org.allbinary.data

oo::class create ::CamelCaseUtil {
    superclass ::JObject
}

oo::define ::CamelCaseUtil {
    method initFields_CamelCaseUtil {} {
        my jset commonSeps {}
        my jset commonSeps [::CommonSeps::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_CamelCaseUtil
    }
    
    

    method getAsCamelCase {string stringBuilder} {
        set stringValidationUtil [::StringValidationUtil::getInstance]
        $stringBuilder delete 0 [$stringBuilder length]
        set list [::BasicArrayListD new]
        set tokenizer [::Tokenizer new [[my jget commonSeps] jget UNDERSCORE]]
        $tokenizer getTokensFromString $string $list
        set size [$list size]
        set word {}
        for {set i 0} {[expr {$i < $size}]} {jpostincr i 1} {
            set word [$list get $i]
            set word [expr {[$stringValidationUtil isEmpty $word] ? $word : [[[[::StringMaker new] appendchar [::Character::toUpperCase [scan [string index $word 0] %c]]] append [string tolower [jsubstring $word 1]]] toString]}]
            $stringBuilder append $word
        }
        return [$stringBuilder toString]
    }
}

namespace eval ::CamelCaseUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CamelCaseUtil new]
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
        return [::CamelCaseUtil::staticGet_instance]
    }
}


