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
# package org.allbinary.game.configuration.event

oo::class create ::GameFeatureListenerInterface {
    superclass ::JObject
}

oo::define ::GameFeatureListenerInterface {
    method initFields_GameFeatureListenerInterface {} {
        return
    }
    

    method onGameFeatureChange {gameFeatureEvent} {
        error [jexception AbstractMethodError onGameFeatureChange]
    }
}

namespace eval ::GameFeatureListenerInterface {
}


