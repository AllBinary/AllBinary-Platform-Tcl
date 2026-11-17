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

oo::class create ::DropLayerProcessor {
    superclass ::BasicLayerProcessor
}

oo::define ::DropLayerProcessor {
    method initFields_DropLayerProcessor {} {
        return
    }
    

    constructor {} {
        next
        my initFields_DropLayerProcessor
    }
    
    

    method process {allBinaryLayerManager} {
        set list [my getList]
        set size [$list size]
        set layerInterface {}
        set dropLayerInterface {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set layerInterface [[$list jget objectArray] get $index]
            set dropLayerInterface $layerInterface
            set layerInterface [$dropLayerInterface getDroppedLayer]
            $allBinaryLayerManager append $layerInterface
        }
        $list clear
    }
}

namespace eval ::DropLayerProcessor {
    variable LAYER_PROCESSORValue {}
    variable LAYER_PROCESSORSet 0
    proc staticGet_LAYER_PROCESSOR {} {
        variable LAYER_PROCESSORValue
        variable LAYER_PROCESSORSet
        if {!$LAYER_PROCESSORSet} {
            set LAYER_PROCESSORSet 1
            set LAYER_PROCESSORValue [::DropLayerProcessor new]
        }
        return $LAYER_PROCESSORValue
    }
    proc staticSet_LAYER_PROCESSOR {value} {
        variable LAYER_PROCESSORValue
        variable LAYER_PROCESSORSet
        set LAYER_PROCESSORSet 1
        set LAYER_PROCESSORValue $value
    }
    proc getInstance {} {
        return [::DropLayerProcessor::staticGet_LAYER_PROCESSOR]
    }
}


