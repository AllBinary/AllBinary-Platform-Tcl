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
# package org.allbinary.game.ag.layer.hud.basic

oo::class create ::NextUnremoveableProcessor {
    superclass ::Processor
}

oo::define ::NextUnremoveableProcessor {
    method initFields_NextUnremoveableProcessor {} {
        my jset updateMeasurementProcessor {}
        
        return
    }
    

    constructor {updateMeasurementProcessor} {
        next
        my initFields_NextUnremoveableProcessor
        my jset updateMeasurementProcessor $updateMeasurementProcessor
    }
    

    method process {} {
        [my jget updateMeasurementProcessor] setNextUnremoveableProcess
    }
}

namespace eval ::NextUnremoveableProcessor {
}


