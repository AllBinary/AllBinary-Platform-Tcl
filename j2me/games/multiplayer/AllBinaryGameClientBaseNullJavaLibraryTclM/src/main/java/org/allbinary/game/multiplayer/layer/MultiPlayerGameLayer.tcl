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
# package org.allbinary.game.multiplayer.layer

oo::class create ::MultiPlayerGameLayer {
    superclass ::CollidableDestroyableDamageableLayer
}

oo::define ::MultiPlayerGameLayer {
    method initFields_MultiPlayerGameLayer {} {
        return
    }
    

    constructor {remoteInfo groupInterface name layerInfo viewPosition} {
        next $groupInterface $name $layerInfo $viewPosition
        my initFields_MultiPlayerGameLayer
    }
    

    method getMultiplayerBehavior {} {
        return [::MultiplayerBehavior::staticGet_NULL_MULTIPLAYER_BEHAVIOR]
    }
    

    method setPingInfo {show} {
    }
    

    method setFiring {firing} {
    }
    

    method getFiring {} {
        return 0
    }
}

namespace eval ::MultiPlayerGameLayer {
}


