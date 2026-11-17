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

oo::class create ::ResizableListenerHandler {
    superclass ::JObject
}

oo::define ::ResizableListenerHandler {
    method initFields_ResizableListenerHandler {} {
        return
    }

    constructor {} {
        next
        my initFields_ResizableListenerHandler
    }
    
    

    method setListener {resizableListenerInterface} {
    }
    

    method fire {isFullScreen} {
    }
    

    method fireEvent {value} {
    }
}

namespace eval ::ResizableListenerHandler {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ResizableListenerHandler new]
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
        return [::ResizableListenerHandler::staticGet_instance]
    }
}


