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

oo::class create ::HealthBarAnimation {
    superclass ::Animation
}

oo::define ::HealthBarAnimation {
    method initFields_HealthBarAnimation {} {
        my jset basicColorFactory {}
        my jset x2 0
        my jset thickness 0
        my jset location 0
        my jset allbinaryLayer {}
        my jset basicColorFactory [::BasicColorFactory::getInstance]
        my jset x2 0
        my jset thickness 0
        
        
        return
    }
    

    constructor {layerInterface location} {
        next
        my initFields_HealthBarAnimation
        my jset allbinaryLayer $layerInterface
        my jset location $location
        set basicHudFactory [::BasicHudFactory::getInstance]
        if {[expr {[expr {[my jget location] != [$basicHudFactory jget TOPLEFT]}] && [expr {[my jget location] != [$basicHudFactory jget BOTTOMLEFT]}]}]} {
            error [jexception Exception "Location Not Valid"]
        }
        if {[expr {[$layerInterface getWidth] > 40}]} {
            my jset thickness 3
        } elseif {[expr {[$layerInterface getWidth] > 20}]} {
            my jset thickness 2
        } else {
            my jset thickness 1
        }
    }
    

    method onHealthChange {newX2} {
        my jset x2 $newX2
        set quarter ([expr {[[my jget allbinaryLayer] getWidth] >> 2}])
        if {[expr {[my jget x2] > [jint [expr {$quarter * 3}]]}]} {
            my jset basicColor [[my jget basicColorFactory] jget GREEN]
            my jset colorP [[my jget basicColor] intValue]
        } elseif {[expr {[my jget x2] > [jint [expr {$quarter * 2}]]}]} {
            my jset basicColor [[my jget basicColorFactory] jget YELLOW]
            my jset colorP [[my jget basicColor] intValue]
        } elseif {[expr {[my jget x2] > $quarter}]} {
            my jset basicColor [[my jget basicColorFactory] jget ORANGE]
            my jset colorP [[my jget basicColor] intValue]
        } else {
            my jset basicColor [[my jget basicColorFactory] jget RED]
            my jset colorP [[my jget basicColor] intValue]
        }
    }
    

    method getY {} {
        set basicHudFactory [::BasicHudFactory::getInstance]
        if {[expr {[my jget location] == [$basicHudFactory jget TOPLEFT]}]} {
            return [expr {[[[my jget allbinaryLayer] getViewPosition] getY] - 4}]
        } elseif {[expr {[my jget location] == [$basicHudFactory jget BOTTOMLEFT]}]} {
            return [expr {[[[my jget allbinaryLayer] getViewPosition] getY2] + 4}]
        }
        return [expr {-1}]
    }
}

namespace eval ::HealthBarAnimation {
}


