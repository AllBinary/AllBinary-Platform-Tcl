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
# package org.allbinary.bounds.event

oo::class create ::BoundsChangeEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::BoundsChangeEvent {
    method initFields_BoundsChangeEvent {} {
        return
    }
    

    constructor {rectangle} {
        next $rectangle
        my initFields_BoundsChangeEvent
    }
    

    method getRectangle {} {
        return [my getSource]
    }
}

namespace eval ::BoundsChangeEvent {
}


