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
# package org.allbinary.debug

oo::class create ::DebugInterface {
    superclass ::JObject
}

oo::define ::DebugInterface {
    method initFields_DebugInterface {} {
        return
    }
    

    method start {} {
        error [jexception AbstractMethodError start]
    }
    

    method stop {} {
        error [jexception AbstractMethodError stop]
    }
    

    method getStartTime {} {
        error [jexception AbstractMethodError getStartTime]
    }
    

    method getMaxTime {} {
        error [jexception AbstractMethodError getMaxTime]
    }
    

    method isRunning {} {
        error [jexception AbstractMethodError isRunning]
    }
}

namespace eval ::DebugInterface {
}


