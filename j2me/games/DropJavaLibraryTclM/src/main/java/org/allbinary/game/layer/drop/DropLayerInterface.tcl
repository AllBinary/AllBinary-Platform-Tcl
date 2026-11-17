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
# package org.allbinary.game.layer.drop

oo::class create ::DropLayerInterface {
    superclass ::JObject
}

oo::define ::DropLayerInterface {
    method initFields_DropLayerInterface {} {
        return
    }
    

    method getDroppedLayer {} {
        error [jexception AbstractMethodError getDroppedLayer]
    }
}

namespace eval ::DropLayerInterface {
}


