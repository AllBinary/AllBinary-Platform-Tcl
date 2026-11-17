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
# package org.allbinary.game.layer

oo::class create ::LayerPlacementInterface {
    superclass ::JObject
}

oo::define ::LayerPlacementInterface {
    method initFields_LayerPlacementInterface {} {
        return
    }
    

    method getWidth {} {
        error [jexception AbstractMethodError getWidth]
    }
    

    method getHeight {} {
        error [jexception AbstractMethodError getHeight]
    }
    

    method getLayerType {} {
        error [jexception AbstractMethodError getLayerType]
    }
    

    method getInstance {} {
        error [jexception AbstractMethodError getInstance]
    }
}

namespace eval ::LayerPlacementInterface {
}


