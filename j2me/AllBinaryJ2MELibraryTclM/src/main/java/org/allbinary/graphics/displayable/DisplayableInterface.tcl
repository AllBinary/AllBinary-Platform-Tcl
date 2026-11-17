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
# package org.allbinary.graphics.displayable

oo::class create ::DisplayableInterface {
    superclass ::JObject
}

oo::define ::DisplayableInterface {
    method initFields_DisplayableInterface {} {
        return
    }
    

    method addCommand {cmd} {
        error [jexception AbstractMethodError addCommand]
    }
    

    method getHeight {} {
        error [jexception AbstractMethodError getHeight]
    }
    

    method getWidth {} {
        error [jexception AbstractMethodError getWidth]
    }
    

    method removeCommand {cmd} {
        error [jexception AbstractMethodError removeCommand]
    }
    

    method setCommandListener {l} {
        error [jexception AbstractMethodError setCommandListener]
    }
}

namespace eval ::DisplayableInterface {
}


