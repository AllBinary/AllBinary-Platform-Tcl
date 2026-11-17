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

oo::class create ::ColorChangeEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::ColorChangeEventHandler {
    method initFields_ColorChangeEventHandler {} {
        return
    }
    

    constructor {} {
        next
        my initFields_ColorChangeEventHandler
    }
    
}

namespace eval ::ColorChangeEventHandler {
    variable eventHandlerValue {}
    variable eventHandlerSet 0
    proc staticGet_eventHandler {} {
        variable eventHandlerValue
        variable eventHandlerSet
        if {!$eventHandlerSet} {
            set eventHandlerSet 1
            set eventHandlerValue [::ColorChangeEventHandler new]
        }
        return $eventHandlerValue
    }
    proc staticSet_eventHandler {value} {
        variable eventHandlerValue
        variable eventHandlerSet
        set eventHandlerSet 1
        set eventHandlerValue $value
    }
    proc getInstance {} {
        return [::ColorChangeEventHandler::staticGet_eventHandler]
    }
}


