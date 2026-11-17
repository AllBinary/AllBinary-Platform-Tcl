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

oo::class create ::NumberTextFieldItemValidator {
    superclass ::ValidatorBase
}

oo::define ::NumberTextFieldItemValidator {
    method initFields_NumberTextFieldItemValidator {} {
        my jset textFieldItem {}
        my jset min 0
        my jset max 0
        my jset maxChars 0
        
        
        
        
        return
    }
    

    constructor {textFieldItem maxChars min max} {
        next
        my initFields_NumberTextFieldItemValidator
        my jset textFieldItem $textFieldItem
        my jset min $min
        my jset max $max
        my jset maxChars $maxChars
    }
    

    method isNumberValid {value} {
        return [[::BooleanFactory::getInstance] jget TRUE]
    }
    

    method toNumberVector {value} {
        return [::BasicArrayListD new]
    }
    

    method isValid {} {
        set result [[::BooleanFactory::getInstance] jget TRUE]
        set string [[my jget textFieldItem] getString]
        set textLength [string length $string]
        if {[expr {[expr {$textLength > 0}] && [expr {$textLength < [my jget maxChars]}]}]} {
            try {
                string trim [[my jget textFieldItem] getString]
            } on error {e} {
                set result [[::BooleanFactory::getInstance] jget FALSE]
            }
        } else {
            if {[expr {$textLength < 1}]} {
                set result [[::BooleanFactory::getInstance] jget FALSE]
            } elseif {[expr {$textLength > [my jget maxChars]}]} {
                set result [[::BooleanFactory::getInstance] jget FALSE]
            }
        }
        return $result
    }
    

    method toList {} {
        set list [::BasicArrayListD new]
        set string [[my jget textFieldItem] getString]
        set textLength [string length $string]
        set label [[my jget textFieldItem] getLabel]
        set name [jsubstring $label 0 [jint [expr {[string length $label] - 2}]]]
        set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
        set stringMaker [::StringMaker new]
        if {[expr {[expr {$textLength > 0}] && [expr {$textLength < [my jget maxChars]}]}]} {
            try {
                set number [$smallIntegerSingletonFactory createInstance [string trim [[my jget textFieldItem] getString]]]
                if {[expr {[$number intValue] > [my jget min]}]} {
                    $stringMaker delete 0 [$stringMaker length]
                    $list add [[[$stringMaker append $name] append " is to small"] toString]
                } elseif {[expr {[$number intValue] > [my jget max]}]} {
                    $stringMaker delete 0 [$stringMaker length]
                    $list add [[[$stringMaker append $name] append " is to large"] toString]
                }
            } on error {e} {
                $stringMaker delete 0 [$stringMaker length]
                $list add [[[$stringMaker append $name] append " is not a number"] toString]
            }
        } else {
            if {[expr {$textLength < 1}]} {
                $stringMaker delete 0 [$stringMaker length]
                $list add [[[$stringMaker append $name] append " is to short"] toString]
            } elseif {[expr {$textLength > [my jget maxChars]}]} {
                $stringMaker delete 0 [$stringMaker length]
                $list add [[[$stringMaker append $name] append " is to long"] toString]
            }
        }
        return $list
    }
}

namespace eval ::NumberTextFieldItemValidator {
}


