# Generated Code Do Not Modify
# package org.allbinary.game.layer.weapon

oo::class create ::TempExplosionWeaponLayer {
    superclass ::SimpleWeaponLayer
}

oo::define ::TempExplosionWeaponLayer {
    method initFields_TempExplosionWeaponLayer {} {
        my jset weaponProperties {}
        my jset timeDelayHelper {}
        my jset weaponProperties [::WeaponProperties new [expr {-1}] [expr {-1}] 0 1000 [jshort 0]]
        my jset timeDelayHelper [::TimeDelayHelper new 0]
        return
    }
    

    constructor {name movement animationInterface rectangle viewPosition timeDelay} {
        next $name [::RemoteInfo::staticGet_REMOTE_INFO] [expr {-1}] $movement $animationInterface [::SimpleWeaponLayer::createDestroyed] $rectangle $viewPosition
        my initFields_TempExplosionWeaponLayer
        [my jget timeDelayHelper] jset delay $timeDelay
    }
    

    method processTick {allBinaryLayerManager} {
        if {[[my jget timeDelayHelper] isTime [[::GameTickTimeDelayHelperFactory::getInstance] jget startTime]]} {
            [my getCollidableInferface] collide [self] [self]
            my jset totalDamage [expr {[my getInitDamage] + 1}]
        }
        next $allBinaryLayerManager
    }
}

namespace eval ::TempExplosionWeaponLayer {
}


