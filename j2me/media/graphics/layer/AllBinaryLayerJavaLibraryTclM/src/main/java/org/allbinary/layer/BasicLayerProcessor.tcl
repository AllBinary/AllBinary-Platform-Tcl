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

oo::class create ::BasicLayerProcessor {
    superclass ::JObject
}

oo::define ::BasicLayerProcessor {
    method initFields_BasicLayerProcessor {} {
        my jset logUtil {}
        my jset list {}
        my jset logUtil [::LogUtil::getInstance]
        my jset list [::BasicArrayListD new]
        return
    }
    

    constructor {} {
        next
        my initFields_BasicLayerProcessor
    }
    

    method add {layerInterface} {
        if {[expr {![[my jget list] contains $layerInterface]}]} {
            [my jget list] add $layerInterface
        }
    }
    

    method process {allBinaryLayerManager} {
        error [jexception Exception [[::CommonStrings::getInstance] jget NOT_IMPLEMENTED]]
    }
    

    method getList {} {
        return [my jget list]
    }
}

namespace eval ::BasicLayerProcessor {
    variable NULL_LAYER_PROCESSORValue {}
    variable NULL_LAYER_PROCESSORSet 0
    proc staticGet_NULL_LAYER_PROCESSOR {} {
        variable NULL_LAYER_PROCESSORValue
        variable NULL_LAYER_PROCESSORSet
        if {!$NULL_LAYER_PROCESSORSet} {
            set NULL_LAYER_PROCESSORSet 1
            set NULL_LAYER_PROCESSORValue [::BasicLayerProcessor new]
        }
        return $NULL_LAYER_PROCESSORValue
    }
    proc staticSet_NULL_LAYER_PROCESSOR {value} {
        variable NULL_LAYER_PROCESSORValue
        variable NULL_LAYER_PROCESSORSet
        set NULL_LAYER_PROCESSORSet 1
        set NULL_LAYER_PROCESSORValue $value
    }
}


