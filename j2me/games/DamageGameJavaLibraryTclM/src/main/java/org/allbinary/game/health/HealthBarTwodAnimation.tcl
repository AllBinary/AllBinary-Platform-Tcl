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

oo::class create ::HealthBarTwodAnimation {
    superclass ::HealthBarAnimation
}

oo::define ::HealthBarTwodAnimation {
    method initFields_HealthBarTwodAnimation {} {
        return
    }
    

    constructor {layerInterface location} {
        next $layerInterface $location
        my initFields_HealthBarTwodAnimation
    }
    

    method paintXY {graphics x y} {
        set ax [[[my jget allbinaryLayer] getViewPosition] getX]
        [my jget basicSetColorUtil] setBasicColorP3 $graphics [my jget basicColor] [my jget colorP]
        $graphics fillRect $ax [expr {[my getY] - 1}] [my jget x2] [my jget thickness]
    }
}

namespace eval ::HealthBarTwodAnimation {
}


