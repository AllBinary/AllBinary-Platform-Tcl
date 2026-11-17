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
# package org.allbinary.game.configuration

oo::class create ::GameConfigurationGauge {
    superclass ::Gauge
}

oo::define ::GameConfigurationGauge {
    method initFields_GameConfigurationGauge {} {
        return
    }
    

    constructor {gameConfiguration} {
        next [$gameConfiguration getName] [[$gameConfiguration isModifiable] booleanValue] [expr {[[$gameConfiguration getMaxValue] intValue] - [[$gameConfiguration getMinValue] intValue]}] [expr {[[$gameConfiguration getValue] intValue] - [[$gameConfiguration getMinValue] intValue]}]
        my initFields_GameConfigurationGauge
    }
}

namespace eval ::GameConfigurationGauge {
}


