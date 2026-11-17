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

oo::class create ::SingleLayerLayerProcessor {
    superclass ::LayerProcessor
}

oo::define ::SingleLayerLayerProcessor {
    method initFields_SingleLayerLayerProcessor {} {
        return
    }
    

    constructor {} {
        next [::SingleLayerLayerManager new]
        my initFields_SingleLayerLayerProcessor
    }
    

    method process {allBinaryLayerManager} {
        set layerManager [my getLayerManager]
        my processAt $allBinaryLayerManager [$layerManager getLayerAt 0] 0
    }
}

namespace eval ::SingleLayerLayerProcessor {
}


