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
# package org.allbinary.game.ag.layer.pickup

oo::class create ::FallingPickupLayerFactory {
    superclass ::JObject
}

oo::define ::FallingPickupLayerFactory {
    method initFields_FallingPickupLayerFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_FallingPickupLayerFactory
    }
    

    method getInstance {} {
        return [::FallingPickupLayer new [::RemoteInfo::staticGet_REMOTE_INFO]]
    }
}

namespace eval ::FallingPickupLayerFactory {
}


