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
# package org.allbinary.animation.vector

oo::class create ::LineAnimationFactory {
    superclass ::JObject
}

oo::define ::LineAnimationFactory {
    method initFields_LineAnimationFactory {} {
        my jset basicColor {}
        
        return
    }
    

    constructor {basicColor} {
        next
        my initFields_LineAnimationFactory
        my jset basicColor $basicColor
    }
    

    method getInstance {instanceId} {
        return [::LineAnimation new [my jget basicColor]]
    }
    

    method setInitialScale {scaleProperties} {
    }
}

namespace eval ::LineAnimationFactory {
}


