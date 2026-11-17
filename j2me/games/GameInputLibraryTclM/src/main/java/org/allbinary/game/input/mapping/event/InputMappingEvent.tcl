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
# package org.allbinary.game.input.mapping.event

oo::class create ::InputMappingEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::InputMappingEvent {
    method initFields_InputMappingEvent {} {
        my jset inputToGameKeyMapping {}
        my jset inputToGameKeyMapping [::InputToGameKeyMapping::getNullInstance]
        return
    }
    

    constructor {anyType} {
        next $anyType
        my initFields_InputMappingEvent
    }
    

    method setInputToGameKeyMapping {inputToGameKeyMapping} {
        my jset inputToGameKeyMapping $inputToGameKeyMapping
    }
    

    method getInputToGameKeyMapping {} {
        return [my jget inputToGameKeyMapping]
    }
}

namespace eval ::InputMappingEvent {
}


