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
# package org.allbinary.logic.util.event.handler

oo::class create ::BasicEventHandlerInterface {
    superclass ::JObject
}

oo::define ::BasicEventHandlerInterface {
    method initFields_BasicEventHandlerInterface {} {
        return
    }
    

    method addListenerInterface {eventListenerInterface} {
        error [jexception AbstractMethodError addListenerInterface]
    }
    

    method addListeners {basicArrayList} {
        error [jexception AbstractMethodError addListeners]
    }
    

    method fireEvent {eventObject} {
        error [jexception AbstractMethodError fireEvent]
    }
    

    method removeAllListeners {} {
        error [jexception AbstractMethodError removeAllListeners]
    }
    

    method removeListener {eventListenerInterface} {
        error [jexception AbstractMethodError removeListener]
    }
}

namespace eval ::BasicEventHandlerInterface {
}


