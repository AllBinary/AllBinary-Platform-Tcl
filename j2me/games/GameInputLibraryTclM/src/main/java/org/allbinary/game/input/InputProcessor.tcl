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
# package org.allbinary.game.input

oo::class create ::InputProcessor {
    superclass ::JObject
}

oo::define ::InputProcessor {
    method initFields_InputProcessor {} {
        my jset gameInputStrings {}
        my jset gameInputStrings [::GameInputStrings::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_InputProcessor
    }
    

    method keyPressedByDevice {keyCode deviceId} {
    }
    

    method keyReleasedByDevice {canvas keyCode deviceId} {
    }
}

namespace eval ::InputProcessor {
}


