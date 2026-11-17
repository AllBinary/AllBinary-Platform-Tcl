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

oo::class create ::LayerManagerEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::LayerManagerEvent {
    method initFields_LayerManagerEvent {} {
        my jset layerInterface {}
        my jset crud {}
        my jset layerInterface [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER]
        
        return
    }
    

    constructor {layerManager crud} {
        next $layerManager
        my initFields_LayerManagerEvent
        my jset crud $crud
    }
    

    method getLayerInterface {} {
        return [my jget layerInterface]
    }
    

    method setLayerInterface {layerInterface} {
        my jset layerInterface $layerInterface
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "LayerManagerEvent: \n"
        $stringBuffer append "LayerInterface: "
        $stringBuffer append [[my getLayerInterface] toString]
        $stringBuffer append "\nCRUD: "
        $stringBuffer append [my jget crud]
        return [$stringBuffer toString]
    }
}

namespace eval ::LayerManagerEvent {
}


