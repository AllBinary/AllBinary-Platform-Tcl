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
# package org.allbinary.game.input.mapping

oo::class create ::MotionInputMappingEventListener {
    superclass ::JObject
}

oo::define ::MotionInputMappingEventListener {
    method initFields_MotionInputMappingEventListener {} {
        return
    }

    constructor {} {
        next
        my initFields_MotionInputMappingEventListener
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onInputMappingEvent {inputMappingEvent} {
        [::GameKeyCompleteMotionGestureInputEventFactory::getInstance] updateAll
        [::BasicTouchInputFactory::getInstance] updateAll [$inputMappingEvent getInputToGameKeyMapping]
    }
}

namespace eval ::MotionInputMappingEventListener {
}


