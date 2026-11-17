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

oo::class create ::TextItemVisitor {
    superclass ::Visitor
}

oo::define ::TextItemVisitor {
    method initFields_TextItemVisitor {} {
        return
    }
    

    constructor {} {
        next
        my initFields_TextItemVisitor
    }
    

    method visit {anyType} {
        set value $anyType
        if {[expr {[string length $value] < 2}]} {
            return [[::BooleanFactory::getInstance] jget TRUE]
        } else {
            return [[::BooleanFactory::getInstance] jget FALSE]
        }
    }
}

namespace eval ::TextItemVisitor {
}


