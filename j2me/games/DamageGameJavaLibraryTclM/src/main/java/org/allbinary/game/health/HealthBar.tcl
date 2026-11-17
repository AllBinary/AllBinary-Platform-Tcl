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
# package org.allbinary.game.health

oo::class create ::HealthBar {
    superclass ::Paintable
}

oo::define ::HealthBar {
    method initFields_HealthBar {} {
        my jset animationInterface {}
        my jset healthInterface {}
        my jset allbinaryLayer {}
        
        
        
        return
    }
    

    constructor {layerInterface healthInterface animationInterface direction} {
        next
        my initFields_HealthBar
        my jset allbinaryLayer $layerInterface
        my jset animationInterface $animationInterface
        my jset healthInterface $healthInterface
        [my jget healthInterface] addListener [self]
        my onHealthChange
    }
    

    method onHealthChange {} {
        [my jget animationInterface] onHealthChange [expr {[expr {[[my jget healthInterface] getHealth] * [[my jget allbinaryLayer] getWidth]}] / [[my jget healthInterface] getMaxHealth]}]
    }
    

    method paint {graphics} {
        [my jget animationInterface] paintXY $graphics 0 0
    }
    

    method paintThreed {graphics} {
        [my jget animationInterface] paintThreedXYZ $graphics 0 0 0
    }
}

namespace eval ::HealthBar {
}


