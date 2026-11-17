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
# package org.allbinary.game.part.weapon

oo::class create ::BasicWeaponPart {
    superclass ::JObject
}

oo::define ::BasicWeaponPart {
    method initFields_BasicWeaponPart {} {
        my jset animationInterface {}
        my jset ownerLayerInterface {}
        my jset weaponProperties {}
        my jset scoreableInterface {}
        my jset relativeRelationship {}
        my jset animationInterface [[::NullAnimationFactory::getFactoryInstance] getInstance 0]
        my jset ownerLayerInterface [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER]
        my jset weaponProperties [::WeaponProperties::staticGet_NULL_WEAPON_PROPERTIES]
        my jset scoreableInterface [::NoScoreable::getInstance]
        my jset relativeRelationship [::RelativeRelationship::staticGet_NULL_RELATIVE_RELATIONSHIP]
        return
    }
    
    

    constructor {animationInterface sourceLayerInterface weaponProperties scoreableInterface relativeRelationship} {
        next
        my initFields_BasicWeaponPart
        my init $sourceLayerInterface $weaponProperties $scoreableInterface $relativeRelationship
        my setAnimationInterface $animationInterface
    }
    

    method init {sourceLayerInterface weaponProperties scoreableInterface relativeRelationship} {
        my setOwnerLayerInterface $sourceLayerInterface
        my setWeaponProperties $weaponProperties
        my jset scoreableInterface $scoreableInterface
        my jset relativeRelationship $relativeRelationship
    }
    

    method process {allbinaryLayerManager angle otherAngle} {
        my processScore $allbinaryLayerManager $angle $otherAngle [my getWeaponProperties] [my jget scoreableInterface]
    }
    

    method processScore {allbinaryLayerManager angle otherAngle weaponProperties scoreableInterface} {
        error [jexception Exception [[::CommonStrings::getInstance] jget NOT_IMPLEMENTED]]
    }
    

    method getOwnerLayerInterface {} {
        return [my jget ownerLayerInterface]
    }
    

    method setOwnerLayerInterface {ownerLayerInterface} {
        my jset ownerLayerInterface $ownerLayerInterface
    }
    

    method getAnimationInterface {} {
        return [my jget animationInterface]
    }
    

    method setAnimationInterface {animationInterface} {
        my jset animationInterface $animationInterface
    }
    

    method paint {graphics} {
        set viewPosition [[my getOwnerLayerInterface] getViewPosition]
        set viewX [$viewPosition getX]
        set viewY [$viewPosition getY]
        [my jget animationInterface] paintXY $graphics $viewX $viewY
    }
    

    method paintThreed {graphics} {
    }
    

    method getWeaponProperties {} {
        return [my jget weaponProperties]
    }
    

    method setWeaponProperties {weaponProperties} {
        my jset weaponProperties $weaponProperties
    }
}

namespace eval ::BasicWeaponPart {
    variable NULL_BASIC_WEAPON_PARTValue {}
    variable NULL_BASIC_WEAPON_PARTSet 0
    proc staticGet_NULL_BASIC_WEAPON_PART {} {
        variable NULL_BASIC_WEAPON_PARTValue
        variable NULL_BASIC_WEAPON_PARTSet
        if {!$NULL_BASIC_WEAPON_PARTSet} {
            set NULL_BASIC_WEAPON_PARTSet 1
            set NULL_BASIC_WEAPON_PARTValue [::BasicWeaponPart::createBasicWeaponPart [[::NullAnimationFactory::getFactoryInstance] getInstance 0]]
        }
        return $NULL_BASIC_WEAPON_PARTValue
    }
    proc staticSet_NULL_BASIC_WEAPON_PART {value} {
        variable NULL_BASIC_WEAPON_PARTValue
        variable NULL_BASIC_WEAPON_PARTSet
        set NULL_BASIC_WEAPON_PARTSet 1
        set NULL_BASIC_WEAPON_PARTValue $value
    }
    proc createBasicWeaponPart {animationInterface} {
        return [::BasicWeaponPart new $animationInterface [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER] [::WeaponProperties::staticGet_NULL_WEAPON_PROPERTIES] [::NoScoreable::getInstance] [::RelativeRelationship::staticGet_NULL_RELATIVE_RELATIONSHIP]]
    }
}


