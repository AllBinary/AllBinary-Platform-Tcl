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
# package org.allbinary.game.layer.pickup

oo::class create ::PickupBehavior {
    superclass ::JObject
}

oo::define ::PickupBehavior {
    method initFields_PickupBehavior {} {
        my jset logUtil {}
        my jset countedIndex 0
        my jset ownerLayerInterface {}
        my jset logUtil [::LogUtil::getInstance]
        
        
        return
    }
    
    

    constructor {ownerLayerInterface countedIndex} {
        next
        my initFields_PickupBehavior
        my jset ownerLayerInterface $ownerLayerInterface
        my jset countedIndex $countedIndex
    }
    

    method doPickup {pickupProcessorInterface} {
        try {
            set healthInterfaceCompositeInterface [my jget ownerLayerInterface]
            if {[[$healthInterfaceCompositeInterface getHealthInterface] isAlive]} {
                $pickupProcessorInterface process [my jget ownerLayerInterface]
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] "doPickup" $e
        }
    }
    

    method doPickupLayer {pickupLayerInterface} {
        try {
            set pickedUpLayerInterfaceFactoryInterface [$pickupLayerInterface getPickedUpLayerInterfaceFactoryInterface]
            set pickedUpLayerType [$pickedUpLayerInterfaceFactoryInterface getPickedUpLayerType]
            set pickedUpLayerTypeFactory [::PickedUpLayerTypeFactory::getInstance]
            if {[expr {[expr {[expr {[expr {$pickedUpLayerType eq [$pickedUpLayerTypeFactory jget BEAM]}] || [expr {$pickedUpLayerType eq [$pickedUpLayerTypeFactory jget MINE]}]}] || [expr {$pickedUpLayerType eq [$pickedUpLayerTypeFactory jget PROJECTILE]}]}] || [expr {$pickedUpLayerType eq [$pickedUpLayerTypeFactory jget ENHANCEMENT]}]}]} {
                my add $pickedUpLayerInterfaceFactoryInterface
            } elseif {[expr {[$pickedUpLayerInterfaceFactoryInterface getPickedUpLayerType] == [$pickedUpLayerTypeFactory jget PART]}]} {
                set collidableDestroyableDamageableLayer [my jget ownerLayerInterface]
                $collidableDestroyableDamageableLayer addPart $pickedUpLayerInterfaceFactoryInterface
            } elseif {[expr {$pickedUpLayerType eq [$pickedUpLayerTypeFactory jget NONE]}]} {
            } else {
                set pickupProcessorInterface $pickedUpLayerInterfaceFactoryInterface
                my doPickup $pickupProcessorInterface
            }
            $pickupLayerInterface setPickedUp
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            ::PreLogUtil::putOE [$commonStrings jget EXCEPTION] [self] "doPickup" $e
        }
    }
    

    method add {countedPickedUpLayerInterfaceFactoryInterface} {
        set partIndex [expr {[$countedPickedUpLayerInterfaceFactoryInterface getId] + [my jget countedIndex]}]
        my addAt $countedPickedUpLayerInterfaceFactoryInterface $partIndex
    }
    

    method addAt {countedPickedUpLayerInterfaceFactoryInterface partIndex} {
        set collidableDestroyableDamageableLayer [my jget ownerLayerInterface]
        set countedLayerInterfaceFactory [[$collidableDestroyableDamageableLayer getPartInterfaceArray] get $partIndex]
        $countedLayerInterfaceFactory setTotal [expr {[$countedLayerInterfaceFactory getTotal] + [$countedPickedUpLayerInterfaceFactoryInterface getTotal]}]
    }
    

    method getFirstAvailableCountedLayerInterfaceFactory {pickedUpLayerTypeArray} {
        set collidableDestroyableDamageableLayer [my jget ownerLayerInterface]
        set partInterfaceArray [$collidableDestroyableDamageableLayer getPartInterfaceArray]
        set size [$partInterfaceArray length]
        set nextCountedLayerInterfaceFactory {}
        set countedPickedUpLayerInterfaceFactory {}
        for {set index [my jget countedIndex]} {[expr {$index < $size}]} {jpostincr index 1} {
            set nextCountedLayerInterfaceFactory [[$collidableDestroyableDamageableLayer getPartInterfaceArray] get $index]
            set countedPickedUpLayerInterfaceFactory [$nextCountedLayerInterfaceFactory getCountedPickedUpLayerInterfaceFactory]
            for {set index2 [$pickedUpLayerTypeArray length]} {[expr {[jpreincr index2 -1] >= 0}]} {} {
                if {[expr {[$countedPickedUpLayerInterfaceFactory getPickedUpLayerType] eq [$pickedUpLayerTypeArray get $index2]}]} {
                    if {[expr {[$nextCountedLayerInterfaceFactory getTotal] > 0}]} {
                        return $nextCountedLayerInterfaceFactory
                    }
                }
            }
        }
        return [::CountedLayerInterfaceFactoryPart::staticGet_NULL_COUNTED_LAYER_INTERFACE_FACTORY]
    }
    

    method getCountedLayerInterfaceFactoryForSlot {slotIndex} {
        set currentSlot 0
        set collidableDestroyableDamageableLayer [my jget ownerLayerInterface]
        set partInterfaceArray [$collidableDestroyableDamageableLayer getPartInterfaceArray]
        set size [$partInterfaceArray length]
        set nextCountedLayerInterfaceFactory {}
        for {set index [my jget countedIndex]} {[expr {$index < $size}]} {jpostincr index 1} {
            set nextCountedLayerInterfaceFactory [[$collidableDestroyableDamageableLayer getPartInterfaceArray] get $index]
            if {[expr {[$nextCountedLayerInterfaceFactory getTotal] > 0}]} {
                if {[expr {$currentSlot == $slotIndex}]} {
                    return $nextCountedLayerInterfaceFactory
                } else {
                    jpostincr currentSlot 1
                }
            }
        }
        return [::CountedLayerInterfaceFactoryPart::staticGet_NULL_COUNTED_LAYER_INTERFACE_FACTORY]
    }
    

    method getCountedIndex {} {
        return [my jget countedIndex]
    }
}

namespace eval ::PickupBehavior {
    variable NULL_PICKUP_BEHAVIORValue {}
    variable NULL_PICKUP_BEHAVIORSet 0
    proc staticGet_NULL_PICKUP_BEHAVIOR {} {
        variable NULL_PICKUP_BEHAVIORValue
        variable NULL_PICKUP_BEHAVIORSet
        if {!$NULL_PICKUP_BEHAVIORSet} {
            set NULL_PICKUP_BEHAVIORSet 1
            set NULL_PICKUP_BEHAVIORValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $NULL_PICKUP_BEHAVIORValue
    }
    proc staticSet_NULL_PICKUP_BEHAVIOR {value} {
        variable NULL_PICKUP_BEHAVIORValue
        variable NULL_PICKUP_BEHAVIORSet
        set NULL_PICKUP_BEHAVIORSet 1
        set NULL_PICKUP_BEHAVIORValue $value
    }
    proc getNullInstance {} {
        if {[expr {[::PickupBehavior::staticGet_NULL_PICKUP_BEHAVIOR] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::PickupBehavior::staticSet_NULL_PICKUP_BEHAVIOR [::PickupBehavior new [::CollidableCompositeLayer::getNullInstance] 0]
        }
        return [::PickupBehavior::staticGet_NULL_PICKUP_BEHAVIOR]
    }
}


