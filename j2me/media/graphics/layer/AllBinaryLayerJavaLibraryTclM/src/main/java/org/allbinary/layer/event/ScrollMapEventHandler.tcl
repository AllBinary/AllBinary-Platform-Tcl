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

oo::class create ::ScrollMapEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::ScrollMapEventHandler {
    method initFields_ScrollMapEventHandler {} {
        return
    }
    

    constructor {} {
        next
        my initFields_ScrollMapEventHandler
    }
    
    

    method process {eventObject eventListenerInterface} {
        set scrollMapEventListenerInterface ($eventListenerInterface)
        $scrollMapEventListenerInterface onMoveEvent $eventObject
    }
}

namespace eval ::ScrollMapEventHandler {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::ScrollMapEventHandler new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::ScrollMapEventHandler::staticGet_SINGLETON]
    }
}


