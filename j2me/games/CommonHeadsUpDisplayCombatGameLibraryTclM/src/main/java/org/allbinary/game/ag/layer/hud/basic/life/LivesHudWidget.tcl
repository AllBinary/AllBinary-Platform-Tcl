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
# package org.allbinary.game.ag.layer.hud.basic.life

oo::class create ::LivesHudWidget {
    superclass ::BasicHud
}

oo::define ::LivesHudWidget {
    method initFields_LivesHudWidget {} {
        my jset lifeInterface {}
        my jset xArray {}
        my jset animationInterface {}
        
        
        
        return
    }
    

    constructor {animationInterface lifeInterface location direction} {
        next $location $direction 2 [[::BasicColorFactory::getInstance] jget WHITE]
        my initFields_LivesHudWidget
        my jset lifeInterface $lifeInterface
        set size [jint [[my getLifeInterface] getMaxlives]]
        my jset xArray [jarray $size 0]
        my jset animationInterface $animationInterface
        my jset updateMaxWidth [expr {[[my jget lifeInterface] getMaxlives] * 16}]
        my jset updateMaxHeight 16
    }
    

    method updateMeasurement {graphics} {
        next $graphics
        set maxLives [jint [[my getLifeInterface] getMaxlives]]
        for {set index 0} {[expr {$index < $maxLives}]} {jpostincr index 1} {
            [my jget xArray] set $index [expr {[my getX] + ([jint [expr {$index * 16}]])}]
        }
    }
    

    method onDisplayChangeEvent {displayChangeEvent} {
        next $displayChangeEvent
        my jset myFontProcessor [my jget updateMyFontProcessor]
    }
    

    method setX {x} {
        next $x
        my jset myFontProcessor [my jget updateMyFontProcessor]
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        for {set index [jint [[my getLifeInterface] get]]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [my jget animationInterface] paintXY $graphics [[my jget xArray] get $index] [my getY]
        }
    }
    

    method paintThreed {graphics} {
    }
    

    method getLifeInterface {} {
        return [my jget lifeInterface]
    }
}

namespace eval ::LivesHudWidget {
}


