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
# package org.allbinary.game.configuration.feature

oo::class create ::GameFeatureControlledInterface {
    superclass ::JObject
}

oo::define ::GameFeatureControlledInterface {
    method initFields_GameFeatureControlledInterface {} {
        return
    }
    

    method init {level} {
        error [jexception AbstractMethodError init]
    }
    

    method isFeature {} {
        error [jexception AbstractMethodError isFeature]
    }
    

    method isLoadingLevel {level} {
        error [jexception AbstractMethodError isLoadingLevel]
    }
}

namespace eval ::GameFeatureControlledInterface {
}


