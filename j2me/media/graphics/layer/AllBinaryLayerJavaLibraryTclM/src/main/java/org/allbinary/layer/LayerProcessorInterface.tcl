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
# package org.allbinary.layer

oo::class create ::LayerProcessorInterface {
    superclass ::JObject
}

oo::define ::LayerProcessorInterface {
    method initFields_LayerProcessorInterface {} {
        return
    }
    

    method getLayerManager {} {
        error [jexception AbstractMethodError getLayerManager]
    }
    

    method processAt {allBinaryLayerManager layerInterface index} {
        error [jexception AbstractMethodError processAt]
    }
    

    method isProcessorLayer {layerInterface} {
        error [jexception AbstractMethodError isProcessorLayer]
    }
}

namespace eval ::LayerProcessorInterface {
}


