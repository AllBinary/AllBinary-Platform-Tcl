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
# package org.allbinary.game.combat.destroy

oo::class create ::DestroyedLayerProcessor {
    superclass ::BasicLayerProcessor
}

oo::define ::DestroyedLayerProcessor {
    method initFields_DestroyedLayerProcessor {} {
        return
    }
    

    constructor {} {
        next
        my initFields_DestroyedLayerProcessor
    }
    
    
    

    method process {allBinaryLayerManager} {
        set list [my getList]
        set size [$list size]
        set destroyedEventHandler [::DestroyedEventHandler::getInstance]
        set destroyEventCircularStaticPool [::DestroyEventCircularStaticPool::getInstance]
        set destroyedEvent {}
        set layerInterface {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set layerInterfaceCanBeNull [[$list jget objectArray] get $index]
            if {[expr {$layerInterfaceCanBeNull ne {}}]} {
                set layerInterface $layerInterfaceCanBeNull
                $allBinaryLayerManager remove $layerInterface
                set destroyedEvent [$destroyEventCircularStaticPool getInstanceForLayer $layerInterface]
                $destroyedEventHandler fireEvent $destroyedEvent
            } else {
                set commonStrings [::CommonStrings::getInstance]
            }
        }
        $list clear
    }
}

namespace eval ::DestroyedLayerProcessor {
    variable DESTROYED_LAYER_PROCESSORValue {}
    variable DESTROYED_LAYER_PROCESSORSet 0
    proc staticGet_DESTROYED_LAYER_PROCESSOR {} {
        variable DESTROYED_LAYER_PROCESSORValue
        variable DESTROYED_LAYER_PROCESSORSet
        if {!$DESTROYED_LAYER_PROCESSORSet} {
            set DESTROYED_LAYER_PROCESSORSet 1
            set DESTROYED_LAYER_PROCESSORValue [::BasicLayerProcessor::staticGet_NULL_LAYER_PROCESSOR]
        }
        return $DESTROYED_LAYER_PROCESSORValue
    }
    proc staticSet_DESTROYED_LAYER_PROCESSOR {value} {
        variable DESTROYED_LAYER_PROCESSORValue
        variable DESTROYED_LAYER_PROCESSORSet
        set DESTROYED_LAYER_PROCESSORSet 1
        set DESTROYED_LAYER_PROCESSORValue $value
    }
    proc init {} {
        ::DestroyedLayerProcessor::staticSet_DESTROYED_LAYER_PROCESSOR [::DestroyedLayerProcessor new]
    }
    proc getInstance {} {
        return [::DestroyedLayerProcessor::staticGet_DESTROYED_LAYER_PROCESSOR]
    }
}


