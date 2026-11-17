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
# package org.allbinary.game.layer.weapon

oo::class create ::WeaponLayer {
    superclass ::MultiPlayerGameLayer
}

oo::define ::WeaponLayer {
    method initFields_WeaponLayer {} {
        my jset animationInterface {}
        my jset initAnimationInterface {}
        my jset destroyedAnimationInterface {}
        my jset sourceLayerInterface {}
        my jset totalDamage 0
        my jset initDamage 0
        my jset destroyed false
        my jset scoreableInterface {}
        my jset movement {}
        my jset weaponProperties {}
        my jset multiPlayerType 0
        my jset collidableWeaponBehavior {}
        my jset animationInterface [[::NullAnimationFactory::getFactoryInstance] getInstance 0]
        
        
        my jset sourceLayerInterface [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER]
        my jset totalDamage 0
        my jset initDamage 0
        my jset destroyed true
        my jset scoreableInterface [::NoScoreable::getInstance]
        
        my jset weaponProperties [::WeaponProperties::staticGet_NULL_WEAPON_PROPERTIES]
        
        my jset collidableWeaponBehavior [::CollidableWeaponBehavior::getNullInstance]
        return
    }
    

    constructor {name remoteInfo multiPlayerType movement animationInterface destroyedAnimationInterface rectangle viewPosition} {
        next $remoteInfo [[::BasicGroupFactory::getInstance] jget NONE_ARRAY] $name $rectangle $viewPosition
        my initFields_WeaponLayer
        my jset initAnimationInterface $animationInterface
        my setAnimationInterface $animationInterface
        my jset destroyedAnimationInterface $destroyedAnimationInterface
        my jset movement $movement
        my jset multiPlayerType $multiPlayerType
    }
    

    method setCollidableInferface {collidableInferface} {
        next $collidableInferface
        my jset collidableWeaponBehavior [my getCollidableInferface]
    }
    

    method initXYZ {x y z} {
        my jset x $x
        my jset y $y
        my jset z $z
    }
    

    method init {sourceLayerInterface angle otherAngle weaponProperties scoreable} {
        my setWeaponPropertiesP $weaponProperties
        my setReadyForExplosion false
        my setAnimationInterface [my getInitAnimationInterfaceP]
        my setOwnerLayerInterface $sourceLayerInterface
        [my jget collidableWeaponBehavior] init $sourceLayerInterface
        my setGroupInterfaces
        if {[expr {$scoreable ne {}}]} {
            my jset scoreableInterface $scoreable
        }
        my jset totalDamage 0
        my jset initDamage [$weaponProperties getDamage]
        my setDestroyed false
        [my jget movement] init [$weaponProperties getSpeed] $angle $otherAngle
    }
    

    method setGroupInterfaces {} {
        set basicGroupFactory [::BasicGroupFactory::getInstance]
        if {[expr {[[[my jget sourceLayerInterface] getGroupInterface] get 0] == [$basicGroupFactory jget ENEMY]}]} {
            my setGroupInterface [$basicGroupFactory jget ENEMY_ARRAY]
        } else {
            my setGroupInterface [[my jget sourceLayerInterface] getGroupInterface]
        }
    }
    

    method processTick {allBinaryLayerManager} {
        if {[expr {[my isExhausted] && [expr {![my isDestroyed]}]}]} {
            if {[my isReadyForExplosion]} {
                set indexedAnimationInterface [my getAnimationInterface]
                set currentFrame [$indexedAnimationInterface getFrame]
                if {[expr {$currentFrame < [expr {[$indexedAnimationInterface getAnimationSize] - 1}]}]} {
                    $indexedAnimationInterface nextFrame
                } else {
                    my setDestroyed true
                }
            } else {
                set collidableWeaponBehavior [my getCollidableInferface]
                if {[$collidableWeaponBehavior isCollided]} {
                    my setAnimationInterface [my jget destroyedAnimationInterface]
                    [my getMovement] stop
                    my setReadyForExplosion true
                } else {
                    my setDestroyed true
                }
            }
        }
        [my jget movement] process [self]
        my jset totalDamage [jint [expr {[my jget totalDamage] + [[my jget weaponProperties] getDissipation]}]]
    }
    

    method isDestroyed {} {
        return [my jget destroyed]
    }
    

    method damage {damage damageType} {
        my jset totalDamage [jint [expr {[my jget totalDamage] + [jint [expr {$damage * $damage}]]}]]
    }
    

    method givePoints {total} {
        [my jget scoreableInterface] addPoints [expr {[[::GameConfigurationUtil::getInstance] getCompetitionValue] * $total}]
    }
    

    method isExhausted {} {
        if {[expr {[expr {[my jget totalDamage] > [my getInitDamage]}] || [expr {[my jget totalDamage] < 0}]}]} {
            return true
        } else {
            return false
        }
    }
    

    method getDamage {damageType} {
        if {[expr {![my isExhausted]}]} {
            set total [jint [expr {[my getInitDamage] - [my jget totalDamage]}]]
            my givePoints $total
            return $total
        }
        return 0
    }
    

    method setDestroyed {destroyed} {
        my jset destroyed $destroyed
        if {[my isDestroyed]} {
            my jset scoreableInterface [::NoScoreable::getInstance]
            [::DestroyedLayerProcessor::getInstance] add [self]
        }
    }
    

    method getInitDamage {} {
        return [my jget initDamage]
    }
    

    method setAnimationInterface {animationInterface} {
        my jset animationInterface $animationInterface
    }
    

    method getAnimationInterface {} {
        return [my jget animationInterface]
    }
    

    method getInitAnimationInterfaceP {} {
        return [my jget initAnimationInterface]
    }
    

    method setInitAnimationInterfaceP {initAnimationInterface} {
        my jset initAnimationInterface $initAnimationInterface
    }
    

    method getDestroyedAnimationInterface {} {
        return [my jget destroyedAnimationInterface]
    }
    

    method getOwnerLayerInterface {} {
        return [my jget sourceLayerInterface]
    }
    

    method setOwnerLayerInterface {sourceLayerInterface} {
        my jset sourceLayerInterface $sourceLayerInterface
    }
    

    method paint {graphics} {
        set viewPosition [my getViewPosition]
        [my jget animationInterface] paintXY $graphics [expr {[$viewPosition getX] - [my getHalfWidth]}] [expr {[$viewPosition getY] - [my getHalfHeight]}]
    }
    

    method paintThreed {graphics} {
        set viewPosition [my getViewPosition]
        [my jget animationInterface] paintThreedXYZ $graphics [expr {[$viewPosition getX] - [my getHalfWidth]}] [expr {[$viewPosition getY] - [my getHalfHeight]}] [expr {[$viewPosition getZ] - [my getHalfDepth]}]
    }
    

    method getMovement {} {
        return [my jget movement]
    }
    

    method setMovement {movement} {
        my jset movement $movement
    }
    

    method getType {} {
        return [::WeaponLayer::getStaticType]
    }
    
    

    method getMultiPlayerType {} {
        return [my jget multiPlayerType]
    }
    

    method setWeaponPropertiesP {weaponProperties} {
        my jset weaponProperties $weaponProperties
    }
    

    method getWeaponPropertiesP {} {
        return [my jget weaponProperties]
    }
    

    method implmentsTickableInterface {} {
        return true
    }
    

    method set {gl} {
        [my jget initAnimationInterface] set $gl
    }
}

namespace eval ::WeaponLayer {
    proc getStaticType {} {
        return 0
    }
}


