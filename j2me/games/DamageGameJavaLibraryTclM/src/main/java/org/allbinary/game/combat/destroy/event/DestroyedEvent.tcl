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
# package org.allbinary.game.combat.destroy.event

oo::class create ::DestroyedEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::DestroyedEvent {
    method initFields_DestroyedEvent {} {
        my jset allBinaryGameCanvas {}
        my jset allBinaryLayerInterface {}
        my jset allBinaryGameCanvas [::NullGameCanvas::getInstance]
        my jset allBinaryLayerInterface [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER]
        return
    }
    

    constructor {combatGameCanvas} {
        next [::DestroyedEventHandler::getInstance]
        my initFields_DestroyedEvent
        my setAllBinaryGameCanvas $combatGameCanvas
    }
    

    method getAllBinaryGameCanvas {} {
        return [my jget allBinaryGameCanvas]
    }
    

    method getLayerInterface {} {
        return [my jget allBinaryLayerInterface]
    }
    

    method setAllBinaryGameCanvas {allBinaryGameCanvas} {
        my jset allBinaryGameCanvas $allBinaryGameCanvas
    }
    

    method setLayerInterfaceForCircularStaticPool {allBinaryLayerInterface} {
        my jset allBinaryLayerInterface $allBinaryLayerInterface
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "DestroyedEvent: \n"
        $stringBuffer append "AllBinaryLayerInterface: "
        $stringBuffer append [[my jget allBinaryLayerInterface] toString]
        $stringBuffer append "\nAllBinaryGameCanvas: "
        $stringBuffer append [[::StringUtil::getInstance] toString1 [my getAllBinaryGameCanvas]]
        return [$stringBuffer toString]
    }
}

namespace eval ::DestroyedEvent {
}


