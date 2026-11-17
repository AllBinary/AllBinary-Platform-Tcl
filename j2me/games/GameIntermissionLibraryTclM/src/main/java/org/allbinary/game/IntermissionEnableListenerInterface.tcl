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
# package org.allbinary.game

oo::class create ::IntermissionEnableListenerInterface {
    superclass ::JObject
}

oo::define ::IntermissionEnableListenerInterface {
    method initFields_IntermissionEnableListenerInterface {} {
        return
    }
    

    method notifyIntermission {enable} {
        error [jexception AbstractMethodError notifyIntermission]
    }
}

namespace eval ::IntermissionEnableListenerInterface {
}


