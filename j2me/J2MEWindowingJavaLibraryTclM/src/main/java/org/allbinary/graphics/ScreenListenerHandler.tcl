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
# package org.allbinary.graphics

oo::class create ::ScreenListenerHandler {
    superclass ::JObject
}

oo::define ::ScreenListenerHandler {
    method initFields_ScreenListenerHandler {} {
        my jset screenListenerInterface {}
        my jset screenListenerInterface [::ScreenEmptyListener new]
        return
    }

    constructor {} {
        next
        my initFields_ScreenListenerHandler
    }
    
    

    method setListener {screenListenerInterface} {
        my jset screenListenerInterface $screenListenerInterface
    }
    

    method fireWithState {isFullScreen} {
        [my jget screenListenerInterface] onFullScreen $isFullScreen
    }
    

    method fire {} {
        [my jget screenListenerInterface] onFullScreenDisplay
    }
}

namespace eval ::ScreenListenerHandler {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ScreenListenerHandler new]
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
        return [::ScreenListenerHandler::staticGet_instance]
    }
}


