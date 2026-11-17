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
# package org.allbinary.layer.event

oo::class create ::ScrollMapEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::ScrollMapEvent {
    method initFields_ScrollMapEvent {} {
        my jset dx 0
        my jset dy 0
        my jset dx 0
        my jset dy 0
        return
    }
    

    constructor {anyType} {
        next $anyType
        my initFields_ScrollMapEvent
    }
    

    method setDx {dx} {
        my jset dx $dx
    }
    

    method getDx {} {
        return [my jget dx]
    }
    

    method setDy {dy} {
        my jset dy $dy
    }
    

    method getDy {} {
        return [my jget dy]
    }
    

    method setDxDy {dx dy} {
        my jset dx $dx
        my jset dy $dy
    }
}

namespace eval ::ScrollMapEvent {
}


