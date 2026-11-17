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
# package org.allbinary.game.ag.life

oo::class create ::HealthIncludingLifeBar {
    superclass ::Paintable
}

oo::define ::HealthIncludingLifeBar {
    method initFields_HealthIncludingLifeBar {} {
        my jset animationInterface {}
        my jset life {}
        my jset healthInterface {}
        my jset allbinaryLayer {}
        
        
        
        
        return
    }
    
    

    constructor {layerInterface life healthInterface animationInterface direction} {
        next
        my initFields_HealthIncludingLifeBar
        my jset allbinaryLayer $layerInterface
        my jset animationInterface $animationInterface
        my jset life $life
        my jset healthInterface $healthInterface
        [my jget healthInterface] addListener [self]
        my onHealthChange
    }
    

    method onHealthChange {} {
        [my jget animationInterface] onHealthChange [expr {([expr {([expr {[[my jget healthInterface] getHealth] + ([expr {[[my jget healthInterface] getMaxHealth] * [[my jget life] get]}])}]) * [[my jget allbinaryLayer] getWidth]}]) / ([expr {[[my jget healthInterface] getMaxHealth] + ([expr {[[my jget healthInterface] getMaxHealth] * [[my jget life] getStartLives]}])}])}]
    }
    

    method paint {graphics} {
        [my jget animationInterface] paintXY $graphics 0 0
    }
    

    method paintThreed {graphics} {
        [my jget animationInterface] paintThreedXYZ $graphics 0 0 0
    }
}

namespace eval ::HealthIncludingLifeBar {
    proc createHealthIncludingLifeBar {layerInterface life healthInterface location direction} {
        return [::HealthIncludingLifeBar new $layerInterface $life $healthInterface [::HealthBarTwodAnimation new $layerInterface $location] $direction]
    }
}


