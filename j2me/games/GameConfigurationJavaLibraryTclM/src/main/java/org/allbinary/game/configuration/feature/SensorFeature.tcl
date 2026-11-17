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

oo::class create ::SensorFeature {
    superclass ::Feature
}

oo::define ::SensorFeature {
    method initFields_SensorFeature {} {
        return
    }
    

    constructor {name} {
        next $name
        my initFields_SensorFeature
    }
}

namespace eval ::SensorFeature {
}


