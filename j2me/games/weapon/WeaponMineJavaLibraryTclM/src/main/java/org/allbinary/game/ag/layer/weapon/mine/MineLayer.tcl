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
# package org.allbinary.game.ag.layer.weapon.mine

oo::class create ::MineLayer {
    superclass ::SimpleWeaponLayer
}

oo::define ::MineLayer {
    method initFields_MineLayer {} {
        my jset viewPositionEventHandler {}
        my jset viewPositionEventHandler [::ViewPositionEventHandler::getInstance]
        return
    }
    

    constructor {viewPosition} {
        next [::MineLayer::staticGet_NAME] [::RemoteInfo::staticGet_REMOTE_INFO] [expr {-1}] [[::NoMovementFactory::getInstance] getMovmentInstance] [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] get [[::MineWeaponResources::getInstance] jget RESOURCE]] getInstance 0] [::SimpleWeaponLayer::createDestroyed] [::Rectangle new [[::PointFactory::getInstance] jget ZERO_ZERO] 10 10] $viewPosition
        my initFields_MineLayer
    }
    

    method initXYZ {x y z} {
        my setPosition [jint [expr {$x + 5}]] [jint [expr {$y + 5}]] $z
        [my jget viewPositionEventHandler] addListener [self]
        [::SecondaryPlayerQueueFactory::getInstance] add [::DropWeaponSound::getInstance]
    }
    

    method damage {damage damageType} {
        my jset totalDamage [expr {[my getInitDamage] + 1}]
    }
    

    method getDamage {damageType} {
        next $damageType
        return [my getInitDamage]
    }
    

    method setDestroyed {destroyed} {
        next $destroyed
        if {[my isDestroyed]} {
            [my jget viewPositionEventHandler] removeListener [self]
        }
    }
}

namespace eval ::MineLayer {
    variable NAMEValue {}
    variable NAMESet 0
    proc staticGet_NAME {} {
        variable NAMEValue
        variable NAMESet
        if {!$NAMESet} {
            set NAMESet 1
            set NAMEValue "MineLayer"
        }
        return $NAMEValue
    }
    proc staticSet_NAME {value} {
        variable NAMEValue
        variable NAMESet
        set NAMESet 1
        set NAMEValue $value
    }
}


