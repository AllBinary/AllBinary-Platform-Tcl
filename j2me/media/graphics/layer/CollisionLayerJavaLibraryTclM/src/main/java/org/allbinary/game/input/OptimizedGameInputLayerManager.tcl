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
# package org.allbinary.game.input

oo::class create ::OptimizedGameInputLayerManager {
    superclass ::LayerManager
}

oo::define ::OptimizedGameInputLayerManager {
    method initFields_OptimizedGameInputLayerManager {} {
        return
    }
    

    constructor {} {
        next [::LayerManagerNoDebug::getInstance]
        my initFields_OptimizedGameInputLayerManager
    }
}

namespace eval ::OptimizedGameInputLayerManager {
}


