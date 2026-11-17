# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

oo::class create ::NullInputMappingEventListener {
    superclass ::JObject
}

oo::define ::NullInputMappingEventListener {
    method initFields_NullInputMappingEventListener {} {
        return
    }

    constructor {} {
        next
        my initFields_NullInputMappingEventListener
    }
    

    method onInputMappingEvent {inputMappingEvent} {
    }
    

    method onEvent {eventObject} {
    }
}

namespace eval ::NullInputMappingEventListener {
    variable NULL_INPUT_MAPPING_EVENT_LISTENERValue {}
    variable NULL_INPUT_MAPPING_EVENT_LISTENERSet 0
    proc staticGet_NULL_INPUT_MAPPING_EVENT_LISTENER {} {
        variable NULL_INPUT_MAPPING_EVENT_LISTENERValue
        variable NULL_INPUT_MAPPING_EVENT_LISTENERSet
        if {!$NULL_INPUT_MAPPING_EVENT_LISTENERSet} {
            set NULL_INPUT_MAPPING_EVENT_LISTENERSet 1
            set NULL_INPUT_MAPPING_EVENT_LISTENERValue [::NullInputMappingEventListener new]
        }
        return $NULL_INPUT_MAPPING_EVENT_LISTENERValue
    }
    proc staticSet_NULL_INPUT_MAPPING_EVENT_LISTENER {value} {
        variable NULL_INPUT_MAPPING_EVENT_LISTENERValue
        variable NULL_INPUT_MAPPING_EVENT_LISTENERSet
        set NULL_INPUT_MAPPING_EVENT_LISTENERSet 1
        set NULL_INPUT_MAPPING_EVENT_LISTENERValue $value
    }
}


