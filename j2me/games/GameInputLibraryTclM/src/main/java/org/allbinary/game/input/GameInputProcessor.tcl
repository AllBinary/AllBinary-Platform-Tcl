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

oo::class create ::GameInputProcessor {
    superclass ::JObject
}

oo::define ::GameInputProcessor {
    method initFields_GameInputProcessor {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_GameInputProcessor
    }
    

    method processEvent {allbinaryLayerManager gameKeyEvent} {
    }
    

    method processReleasedEvent {allbinaryLayerManager gameKeyEvent} {
    }
    

    method processAnalog {allbinaryLayerManager gameKeyEvent analogValue} {
    }
    

    method process {allbinaryLayerManager keyAsInteger} {
    }
    

    method processReleased {allbinaryLayerManager keyAsInteger} {
    }
}

namespace eval ::GameInputProcessor {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameInputProcessor new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::GameInputProcessor::staticGet_instance]
    }
}


