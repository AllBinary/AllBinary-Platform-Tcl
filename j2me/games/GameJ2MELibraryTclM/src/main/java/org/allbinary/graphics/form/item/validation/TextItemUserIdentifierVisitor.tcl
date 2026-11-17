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

oo::class create ::TextItemUserIdentifierVisitor {
    superclass ::Visitor
}

oo::define ::TextItemUserIdentifierVisitor {
    method initFields_TextItemUserIdentifierVisitor {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_TextItemUserIdentifierVisitor
    }
    

    method visit {anyType} {
        set value $anyType
        if {[expr {[string length $value] < 2}]} {
            set charValue [scan [string index $value 0] %c]
            set stringValidationUtil [::StringValidationUtil::getInstance]
            if {[$stringValidationUtil isNumber $value]} {
                return [[::BooleanFactory::getInstance] jget TRUE]
            } elseif {[my isLetter $charValue]} {
                return [[::BooleanFactory::getInstance] jget TRUE]
            } else {
                try {
                    [::TextNotificationUtil::getInstance] fireError "Only Letters & Numbers Allowed"
                } on error {e} {
                    set commonStrings [::CommonStrings::getInstance]
                    [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget VISIT] $e
                }
                return [[::BooleanFactory::getInstance] jget FALSE]
            }
        } else {
            return [[::BooleanFactory::getInstance] jget FALSE]
        }
    }
    

    method isLetter {charValue} {
        set value [jint $charValue]
        return [expr {([expr {[expr {$value > 64}] && [expr {$value < 91}]}]) || ([expr {[expr {$value > 96}] && [expr {$value < 123}]}])}]
    }
}

namespace eval ::TextItemUserIdentifierVisitor {
}


