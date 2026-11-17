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

oo::class create ::ResizableListenerInterface {
    superclass ::JObject
}

oo::define ::ResizableListenerInterface {
    method initFields_ResizableListenerInterface {} {
        return
    }
    

    method onResizable {isResizable} {
        error [jexception AbstractMethodError onResizable]
    }
}

namespace eval ::ResizableListenerInterface {
}


