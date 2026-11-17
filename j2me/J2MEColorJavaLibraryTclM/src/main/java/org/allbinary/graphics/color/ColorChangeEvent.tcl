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
# package org.allbinary.graphics.color

oo::class create ::ColorChangeEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::ColorChangeEvent {
    method initFields_ColorChangeEvent {} {
        my jset basicColor {}
        my jset basicColor [[::BasicColorFactory::getInstance] jget WHITE]
        return
    }
    

    constructor {anyType} {
        next $anyType
        my initFields_ColorChangeEvent
    }
    

    method setBasicColorP {basicColor} {
        my jset basicColor $basicColor
    }
    

    method getBasicColorP {} {
        return [my jget basicColor]
    }
}

namespace eval ::ColorChangeEvent {
}


