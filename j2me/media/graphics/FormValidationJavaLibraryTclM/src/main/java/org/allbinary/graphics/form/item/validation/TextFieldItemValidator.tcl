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
# package org.allbinary.graphics.form.item.validation

oo::class create ::TextFieldItemValidator {
    superclass ::ValidatorBase
}

oo::define ::TextFieldItemValidator {
    method initFields_TextFieldItemValidator {} {
        my jset textFieldItem {}
        my jset min 0
        my jset max 0
        my jset allowOnEmpty false
        
        
        
        
        return
    }
    

    constructor {textFieldItem min max allowOnEmpty} {
        next
        my initFields_TextFieldItemValidator
        my jset textFieldItem $textFieldItem
        my jset min $min
        my jset max $max
        my jset allowOnEmpty $allowOnEmpty
    }
    

    method isValid {} {
        set booleanFactory [::BooleanFactory::getInstance]
        set result [$booleanFactory jget TRUE]
        set string [[my jget textFieldItem] getString]
        set textLength [string length $string]
        if {[expr {([expr {[expr {$textLength == 0}] && [my jget allowOnEmpty]}]) || [expr {[expr {$textLength > [my jget min]}] && [expr {$textLength < [my jget max]}]}]}]} {
        } else {
            if {[expr {$textLength < [my jget min]}]} {
                set result [$booleanFactory jget FALSE]
            } elseif {[expr {$textLength > [my jget max]}]} {
                set result [$booleanFactory jget FALSE]
            }
        }
        return $result
    }
    

    method toList {} {
        set list [::BasicArrayListD new]
        set string [[my jget textFieldItem] getString]
        set textLength [string length $string]
        if {[expr {[expr {$textLength > [my jget min]}] && [expr {$textLength < [my jget max]}]}]} {
        } else {
            set label [[my jget textFieldItem] getLabel]
            set name [jsubstring $label 0 [jint [expr {[string length $label] - 2}]]]
            if {[expr {$textLength < [my jget min]}]} {
                $list add [[[[::StringMaker new] append $name] append " is to short"] toString]
            } elseif {[expr {$textLength > [my jget max]}]} {
                $list add [[[[::StringMaker new] append $name] append " is to long"] toString]
            }
        }
        return $list
    }
}

namespace eval ::TextFieldItemValidator {
}


