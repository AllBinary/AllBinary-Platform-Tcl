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
# package org.allbinary.game.tracking

oo::class create ::TrackingEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::TrackingEvent {
    method initFields_TrackingEvent {} {
        my jset layerInterface {}
        my jset layerInterface [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER]
        return
    }
    

    constructor {allBinaryLayerInterface} {
        next $allBinaryLayerInterface
        my initFields_TrackingEvent
        if {[expr {$allBinaryLayerInterface ne [::TrackingEventHandler::getInstance]}]} {
            my setLayerInterface $allBinaryLayerInterface
        }
    }
    

    method init {anyType} {
        my setSource $anyType
    }
    

    method getLayerInterface {} {
        return [my jget layerInterface]
    }
    

    method setLayerInterface {layerInterface} {
        my jset layerInterface $layerInterface
    }
    

    method setLayerInterfaceForCircularStaticPool {layerInterface} {
        my jset layerInterface $layerInterface
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "TrackingEvent: \n"
        $stringBuffer append "LayerInterface: "
        $stringBuffer append [[my jget layerInterface] toString]
        return [$stringBuffer toString]
    }
}

namespace eval ::TrackingEvent {
}


