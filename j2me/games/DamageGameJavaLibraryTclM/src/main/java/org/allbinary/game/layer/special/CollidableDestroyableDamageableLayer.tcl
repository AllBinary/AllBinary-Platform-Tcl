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
# package org.allbinary.game.layer.special

oo::class create ::CollidableDestroyableDamageableLayer {
    superclass ::CollidableCompositeLayer
}

oo::define ::CollidableDestroyableDamageableLayer {
    method initFields_CollidableDestroyableDamageableLayer {} {
        my jset groupInterface {}
        my jset readyForExplosion false
        my jset initWidth 0
        my jset initHeight 0
        my jset initX 0
        my jset initY 0
        my jset initZ 0
        my jset partInterfaceArrayP {}
        my jset pickupBehavior {}
        my jset allBinaryGameLayerManagerP {}
        my jset isDraggable false
        my jset isDragged false
        my jset isDropped false
        
        my jset readyForExplosion false
        
        
        my jset initX 0
        my jset initY 0
        my jset initZ 0
        my jset partInterfaceArrayP [::PartInterfaceUtil::getZeroArray]
        
        my jset allBinaryGameLayerManagerP [::AllBinaryGameLayerManager::getNullInstance]
        my jset isDraggable false
        my jset isDragged false
        my jset isDropped false
        return
    }
    
    

    constructor {groupInterface name layerInfo viewPosition} {
        next $name $layerInfo $viewPosition [::CollidableNeverCollideBehaviorFactory::getInstance]
        my initFields_CollidableDestroyableDamageableLayer
        my jset initWidth [$layerInfo getWidth]
        my jset initHeight [$layerInfo getHeight]
        my jset groupInterface $groupInterface
        my jset pickupBehavior [::PickupBehavior::getNullInstance]
    }
    

    method initPosition {} {
        my setPosition [my jget initX] [my jget initY] [my jget initZ]
    }
    

    method initPositionXYZ {x y z} {
        my jset initX $x
        my jset initY $y
        my jset initZ $z
    }
    

    method paint {graphics} {
        next $graphics
    }
    

    method damage {damage damageType} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method getDamage {damageType} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method isDestroyed {} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method getGroupInterface {} {
        return [my jget groupInterface]
    }
    

    method setGroupInterface {teamInterface} {
        my jset groupInterface $teamInterface
    }
    

    method setAllBinaryGameLayerManager {allBinaryGameLayerManager} {
        my jset allBinaryGameLayerManagerP $allBinaryGameLayerManager
        if {[expr {[my jget allBinaryGameLayerManagerP] eq {}}]} {
            error [jexception RuntimeException {}]
        }
    }
    

    method isReadyForExplosion {} {
        return [my jget readyForExplosion]
    }
    

    method setReadyForExplosion {isReadyForExplosion} {
        my jset readyForExplosion $isReadyForExplosion
    }
    

    method getInitWidth {} {
        return [my jget initWidth]
    }
    

    method getInitHeight {} {
        return [my jget initHeight]
    }
    

    method getInitX {} {
        return [my jget initX]
    }
    

    method getInitY {} {
        return [my jget initY]
    }
    

    method up {} {
    }
    

    method down {} {
    }
    

    method right {} {
    }
    

    method left {} {
    }
    

    method strafeLeft {} {
    }
    

    method strafeRight {} {
    }
    

    method fire {layerManager gameKeyEvent} {
    }
    

    method special1 {layerManager gameKeyEvent} {
    }
    

    method special2 {layerManager gameKeyEvent} {
    }
    

    method special3 {layerManager gameKeyEvent} {
    }
    

    method special4 {layerManager gameKeyEvent} {
    }
    

    method special5 {layerManager gameKeyEvent} {
    }
    

    method upAnalog {yAnalogValue} {
    }
    

    method downAnalog {yAnalogValue} {
    }
    

    method rightAnalog {xAnalogValue} {
    }
    

    method leftAnalog {xAnalogValue} {
    }
    

    method rightTrigger {layerManager gameKeyEvent xAnalogValue} {
    }
    

    method leftTrigger {layerManager gameKeyEvent xAnalogValue} {
    }
    

    method onDestroyed {destroyedEvent} {
    }
    

    method getPickupBehavior {} {
        return [my jget pickupBehavior]
    }
    

    method setPickupBehavior {pickupBehavior} {
        my jset pickupBehavior $pickupBehavior
    }
    

    method addPart {pickedUpLayerInterfaceFactoryInterface} {
    }
    

    method setPartInterfaceArray {partInterfaceArray} {
        my jset partInterfaceArrayP $partInterfaceArray
    }
    

    method getPartInterfaceArray {} {
        return [my jget partInterfaceArrayP]
    }
    

    method toStringAppend {stringBuffer} {
        set commonSeps [::CommonSeps::getInstance]
        set positionStrings [::PositionStrings::getInstance]
        next $stringBuffer
        $stringBuffer append [$commonSeps jget NEW_LINE]
        set groupInterfaceArray [my getGroupInterface]
        set size [$groupInterfaceArray length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $stringBuffer append [[$groupInterfaceArray get $index] toString]
            $stringBuffer append [$commonSeps jget COMMA]
        }
        set pickupBehavior [my getPickupBehavior]
        if {[expr {$pickupBehavior ne {}}]} {
            $stringBuffer append [$commonSeps jget NEW_LINE]
            $stringBuffer append [$pickupBehavior toString]
        }
        $stringBuffer append [$commonSeps jget NEW_LINE]
        $stringBuffer append [::CollidableDestroyableDamageableLayer::staticGet_READYFOREXPLOSION]
        $stringBuffer appendboolean [my jget readyForExplosion]
        $stringBuffer append [$commonSeps jget NEW_LINE]
        $stringBuffer append [[my jget commonStrings] jget INIT]
        $stringBuffer append [$commonSeps jget SPACE]
        $stringBuffer append [$positionStrings jget X_LABEL]
        $stringBuffer appendint [my jget initX]
        $stringBuffer append [$positionStrings jget Y_LABEL]
        $stringBuffer appendint [my jget initX]
        $stringBuffer append [$positionStrings jget Z_LABEL]
        $stringBuffer appendint [my jget initZ]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        my toStringAppend $stringBuffer
        return [$stringBuffer toString]
    }
}

namespace eval ::CollidableDestroyableDamageableLayer {
    variable NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue {}
    variable NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet 0
    proc staticGet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER {} {
        variable NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue
        variable NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet
        if {!$NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet} {
            set NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet 1
            set NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue
    }
    proc staticSet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER {value} {
        variable NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue
        variable NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet
        set NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet 1
        set NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue $value
    }
    variable READYFOREXPLOSIONValue {}
    variable READYFOREXPLOSIONSet 0
    proc staticGet_READYFOREXPLOSION {} {
        variable READYFOREXPLOSIONValue
        variable READYFOREXPLOSIONSet
        if {!$READYFOREXPLOSIONSet} {
            set READYFOREXPLOSIONSet 1
            set READYFOREXPLOSIONValue "ReadyForExplosion: "
        }
        return $READYFOREXPLOSIONValue
    }
    proc staticSet_READYFOREXPLOSION {value} {
        variable READYFOREXPLOSIONValue
        variable READYFOREXPLOSIONSet
        set READYFOREXPLOSIONSet 1
        set READYFOREXPLOSIONValue $value
    }
    proc getNullInstance {} {
        if {[expr {[::CollidableDestroyableDamageableLayer::staticGet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::CollidableDestroyableDamageableLayer::staticSet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER [::CollidableDestroyableDamageableLayer new [[::BasicGroupFactory::getInstance] jget NONE_ARRAY] [[::StringUtil::getInstance] jget EMPTY_STRING] [::RectangleFactory::staticGet_SINGLETON] [::ViewPositionBase::staticGet_NULL_VIEW_POSITION]]
        }
        return [::CollidableDestroyableDamageableLayer::staticGet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER]
    }
}


