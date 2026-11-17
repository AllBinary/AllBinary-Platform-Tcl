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
# package org.allbinary.graphics.displayable.command

oo::class create ::MyCommandInterface {
    superclass ::JObject
}

oo::define ::MyCommandInterface {
    method initFields_MyCommandInterface {} {
        return
    }
    

    method addCommand {command} {
        error [jexception AbstractMethodError addCommand]
    }
    

    method removeAllCommands {} {
        error [jexception AbstractMethodError removeAllCommands]
    }
}

namespace eval ::MyCommandInterface {
}


