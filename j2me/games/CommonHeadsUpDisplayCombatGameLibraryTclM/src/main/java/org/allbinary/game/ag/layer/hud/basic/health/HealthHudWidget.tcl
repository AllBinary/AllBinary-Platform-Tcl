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
# package org.allbinary.game.ag.layer.hud.basic.health

oo::class create ::HealthHudWidget {
    superclass ::BasicHud
}

oo::define ::HealthHudWidget {
    method initFields_HealthHudWidget {} {
        my jset healthScale 0
        my jset animationInterface {}
        my jset healthInterface {}
        my jset max 0
        my jset xArray {}
        my jset gameTickTimeDelayHelper {}
        my jset timeDelayHelper {}
        my jset slowBeatTimeDelayHelper {}
        my jset mediumBeatTimeDelayHelper {}
        my jset fastBeatTimeDelayHelper {}
        
        
        
        my jset max 0
        
        my jset gameTickTimeDelayHelper [::GameTickTimeDelayHelperFactory::getInstance]
        my jset timeDelayHelper [::NoTimeDelayHelper::staticGet_SINGLETON]
        my jset slowBeatTimeDelayHelper [::TimeDelayHelper new 1280]
        my jset mediumBeatTimeDelayHelper [::TimeDelayHelper new 640]
        my jset fastBeatTimeDelayHelper [::TimeDelayHelper new 320]
        return
    }
    

    constructor {animationInterface healthInterface location direction} {
        next $location $direction 2 [[::BasicColorFactory::getInstance] jget WHITE]
        my initFields_HealthHudWidget
        my jset animationInterface $animationInterface
        my jset healthInterface $healthInterface
        [my jget healthInterface] addListener [self]
        my jset healthScale [expr {([expr {[[my jget healthInterface] getMaxHealth] / 6}]) + 1}]
        my onHealthChange
        my jset updateMaxWidth [expr {[$healthInterface getMaxHealth] * 16}]
        my jset updateMaxHeight 16
        my jset xArray [jarray 30 0]
        my update
    }
    

    method update {} {
        if {[expr {[my jget xArray] ne {}}]} {
            for {set index 0} {[expr {$index < [[my jget xArray] length]}]} {jpostincr index 1} {
                [my jget xArray] set $index [expr {[my getX] + ([jint [expr {$index * 16}]])}]
            }
        }
    }
    

    method setX {x} {
        next $x
        my update
    }
    

    method onHealthChange {} {
        my jset max ([expr {[[my jget healthInterface] getHealth] / [my jget healthScale]}])
        my jset timeDelayHelper [::NoTimeDelayHelper::staticGet_SINGLETON]
        if {[expr {[expr {[my jget max] <= 1}] && [[my jget healthInterface] isAlive]}]} {
            my jset max 1
            if {[expr {[expr {[my jget healthScale] - [[my jget healthInterface] getHealth]}] > [jdiv ([jint [expr {[my jget healthScale] * 2}]]) 3]}]} {
                my jset timeDelayHelper [my jget slowBeatTimeDelayHelper]
            } elseif {[expr {[expr {[my jget healthScale] - [[my jget healthInterface] getHealth]}] > [jdiv [my jget healthScale] 3]}]} {
                my jset timeDelayHelper [my jget mediumBeatTimeDelayHelper]
            } else {
                my jset timeDelayHelper [my jget fastBeatTimeDelayHelper]
            }
        }
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        for {set index 0} {[expr {$index < [my jget max]}]} {jpostincr index 1} {
            if {[[my jget timeDelayHelper] isTime [[my jget gameTickTimeDelayHelper] jget startTime]]} {
                [my jget animationInterface] paintXY $graphics [[my jget xArray] get $index] [my getY]
            }
        }
    }
    

    method paintThreed {graphics} {
    }
}

namespace eval ::HealthHudWidget {
}


