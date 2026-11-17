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
# package org.allbinary.graphics.displayable.event

oo::class create ::DisplayChangeEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::DisplayChangeEvent {
    method initFields_DisplayChangeEvent {} {
        return
    }
    

    constructor {anyType} {
        next $anyType
        my initFields_DisplayChangeEvent
    }
}

namespace eval ::DisplayChangeEvent {
}


