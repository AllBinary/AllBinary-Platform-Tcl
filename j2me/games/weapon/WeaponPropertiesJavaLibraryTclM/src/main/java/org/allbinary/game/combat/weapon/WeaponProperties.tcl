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
# package org.allbinary.game.combat.weapon

oo::class create ::WeaponProperties {
    superclass ::SimpleWeaponProperties
}

oo::define ::WeaponProperties {
    method initFields_WeaponProperties {} {
        my jset reloadTime 0
        my jset targetingTime 0
        my jset speed {}
        my jset MAX 0
        my jset ZERO 0
        my jset reloadTime 0
        my jset targetingTime 0
        my jset speed [::BasicDecimal::staticGet_ZERO_BIGDECIMAL]
        my jset MAX 10240
        my jset ZERO 0
        return
    }
    

    constructor {reloadTime targetingTime speed damage dissipation} {
        next
        my initFields_WeaponProperties
        if {[expr {[expr {[expr {$speed < [my jget MAX]}] && [expr {$speed != 0}]}] && [expr {![::WeaponProperties::staticGet_messageSent]}]}]} {
            set MESSAGE "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: "
            set commonStrings [::CommonStrings::getInstance]
            ::PreLogUtil::put [[[[::StringMaker new] append $MESSAGE] appendlong $speed] toString] [self] [$commonStrings jget CONSTRUCTOR]
            ::WeaponProperties::staticSet_messageSent true
        }
        my setReloadTime $reloadTime
        my setTargetingTime $targetingTime
        my setDamage $damage
        my setDissipation $dissipation
        my setSpeed [::BasicDecimal new $speed]
        if {[expr {$dissipation != [my jget ZERO]}]} {
            set unscaledDamage [expr {[[my jget speed] getUnscaled] * $damage}]
            set scaledDissipation [expr {$dissipation * [[my jget speed] getScaledFactorValue]}]
            set value ([jdiv $unscaledDamage $scaledDissipation])
            my setRange [jdiv [jint ([jlong [expr {$value * 9}]])] 10]
        }
    }
    

    method setReloadTime {reloadTime} {
        my jset reloadTime $reloadTime
    }
    

    method getReloadTime {} {
        return [my jget reloadTime]
    }
    

    method setTargetingTime {targetingTime} {
        my jset targetingTime $targetingTime
    }
    

    method getTargetingTime {} {
        return [my jget targetingTime]
    }
    

    method getSpeed {} {
        return [my jget speed]
    }
    

    method setSpeed {speed} {
        my jset speed $speed
    }
    

    method getDamageI {range} {
        return [expr {[my getDamage] - ([expr {([expr {[my getDissipation] * $range}]) / [[my jget speed] getScaled]}])}]
    }
    

    method toStringArray {} {
        set index 0
        set stringArray [jarray 3 {}]
        set stringBuffer [::StringMaker new]
        $stringArray set [jpostincr index 1] [[[$stringBuffer append [::WeaponProperties::staticGet_DAMAGE]] appendint [jint [my getDamage]]] toString]
        $stringBuffer delete 0 [$stringBuffer length]
        $stringArray set [jpostincr index 1] [[[$stringBuffer append [::WeaponProperties::staticGet_RANGE]] appendint [jint [my getRange]]] toString]
        $stringBuffer delete 0 [$stringBuffer length]
        $stringArray set [jpostincr index 1] [[[$stringBuffer append [::WeaponProperties::staticGet_RELOAD]] appendlong [my getReloadTime]] toString]
        return $stringArray
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        [$stringBuffer append [::WeaponProperties::staticGet_DAMAGE]] appendint [jint [my getDamage]]
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        [$stringBuffer append [::WeaponProperties::staticGet_RANGE]] appendint [jint [my getRange]]
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        [$stringBuffer append [::WeaponProperties::staticGet_RELOAD]] appendlong [my getReloadTime]
        return [$stringBuffer toString]
    }
}

namespace eval ::WeaponProperties {
    variable NULL_WEAPON_PROPERTIESValue {}
    variable NULL_WEAPON_PROPERTIESSet 0
    proc staticGet_NULL_WEAPON_PROPERTIES {} {
        variable NULL_WEAPON_PROPERTIESValue
        variable NULL_WEAPON_PROPERTIESSet
        if {!$NULL_WEAPON_PROPERTIESSet} {
            set NULL_WEAPON_PROPERTIESSet 1
            set NULL_WEAPON_PROPERTIESValue [::WeaponProperties new 0 0 0 0 [jshort 0]]
        }
        return $NULL_WEAPON_PROPERTIESValue
    }
    proc staticSet_NULL_WEAPON_PROPERTIES {value} {
        variable NULL_WEAPON_PROPERTIESValue
        variable NULL_WEAPON_PROPERTIESSet
        set NULL_WEAPON_PROPERTIESSet 1
        set NULL_WEAPON_PROPERTIESValue $value
    }
    variable messageSentValue {}
    variable messageSentSet 0
    proc staticGet_messageSent {} {
        variable messageSentValue
        variable messageSentSet
        if {!$messageSentSet} {
            set messageSentSet 1
            set messageSentValue false
        }
        return $messageSentValue
    }
    proc staticSet_messageSent {value} {
        variable messageSentValue
        variable messageSentSet
        set messageSentSet 1
        set messageSentValue $value
    }
    variable DAMAGEValue {}
    variable DAMAGESet 0
    proc staticGet_DAMAGE {} {
        variable DAMAGEValue
        variable DAMAGESet
        if {!$DAMAGESet} {
            set DAMAGESet 1
            set DAMAGEValue "Damage: "
        }
        return $DAMAGEValue
    }
    proc staticSet_DAMAGE {value} {
        variable DAMAGEValue
        variable DAMAGESet
        set DAMAGESet 1
        set DAMAGEValue $value
    }
    variable RANGEValue {}
    variable RANGESet 0
    proc staticGet_RANGE {} {
        variable RANGEValue
        variable RANGESet
        if {!$RANGESet} {
            set RANGESet 1
            set RANGEValue "Range: "
        }
        return $RANGEValue
    }
    proc staticSet_RANGE {value} {
        variable RANGEValue
        variable RANGESet
        set RANGESet 1
        set RANGEValue $value
    }
    variable RELOADValue {}
    variable RELOADSet 0
    proc staticGet_RELOAD {} {
        variable RELOADValue
        variable RELOADSet
        if {!$RELOADSet} {
            set RELOADSet 1
            set RELOADValue "Reload: "
        }
        return $RELOADValue
    }
    proc staticSet_RELOAD {value} {
        variable RELOADValue
        variable RELOADSet
        set RELOADSet 1
        set RELOADValue $value
    }
}


