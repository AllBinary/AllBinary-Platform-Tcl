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

oo::class create ::AllCommandsVisitor {
    superclass ::Visitor
}

oo::define ::AllCommandsVisitor {
    method initFields_AllCommandsVisitor {} {
        return
    }
    

    constructor {} {
        next
        my initFields_AllCommandsVisitor
    }
    

    method visit {anyType} {
        return [[::BooleanFactory::getInstance] jget TRUE]
    }
}

namespace eval ::AllCommandsVisitor {
}


