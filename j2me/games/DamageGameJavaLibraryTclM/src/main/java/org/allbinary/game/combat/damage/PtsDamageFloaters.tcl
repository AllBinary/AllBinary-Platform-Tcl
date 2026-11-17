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
# package org.allbinary.game.combat.damage

oo::class create ::PtsDamageFloaters {
    superclass ::DamageFloaters
}

oo::define ::PtsDamageFloaters {
    method initFields_PtsDamageFloaters {} {
        my jset basicSetColorUtil {}
        my jset layerInterface {}
        my jset lastDamage {}
        my jset lastDamageString {}
        my jset lastDamageStringSizeArray {}
        my jset circularIndexUtil {}
        my jset primitiveLongUtil {}
        my jset myRandomFactory {}
        my jset basicSetColorUtil [::BasicColorSetUtil::getInstance]
        
        my jset lastDamage [jarray 5 0]
        my jset lastDamageString [jarrayof 5 {jarray 0 0}]
        my jset lastDamageStringSizeArray [jarray 5 0]
        my jset circularIndexUtil [::CircularIndexUtil::createInstance 5]
        
        my jset myRandomFactory [::MyRandomFactory::getInstance]
        return
    }
    

    constructor {layerInterface} {
        next
        my initFields_PtsDamageFloaters
        my jset primitiveLongUtil [::PrimitiveLongUtil::createPowerOfTen 100000]
        my jset layerInterface $layerInterface
        set CHAR_ARRAY [[::CharArrayFactory::getInstance] getZeroCharArray]
        for {set index [jint [expr {[[my jget lastDamageString] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [my jget lastDamageString] set $index $CHAR_ARRAY
        }
    }
    

    method add {damage} {
        set index [[my jget circularIndexUtil] getIndex]
        [my jget lastDamage] set $index $damage
        [my jget lastDamageString] set $index [[my jget primitiveLongUtil] getCharArray [[my jget lastDamage] get $index]]
        [my jget lastDamageStringSizeArray] set $index [[my jget primitiveLongUtil] getCurrentTotalDigits]
        [my jget circularIndexUtil] next
    }
    

    method paint {graphics} {
        set viewPosition [[my jget layerInterface] getViewPosition]
        set x [$viewPosition getX]
        set y [$viewPosition getY]
        for {set index [jint [expr {[[my jget lastDamage] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            if {[expr {[[my jget lastDamage] get $index] != 0}]} {
                set delta [jint [expr {10 * ([jint [expr {$index + 2}]])}]]
                [my jget basicSetColorUtil] setBasicColorP $graphics [[::PtsDamageFloaters::staticGet_basicColorArrayIndexer] get]
                $graphics drawChars [[my jget lastDamageString] get $index] 0 [[my jget lastDamageStringSizeArray] get $index] [expr {$x - [[my jget myRandomFactory] getNextInt $delta]}] [jint [expr {$y - $delta}]] 0
                [::PtsDamageFloaters::staticGet_basicColorArrayIndexer] next
            }
            [my jget lastDamage] set $index 0
        }
    }
}

namespace eval ::PtsDamageFloaters {
    variable basicColorArrayIndexerValue {}
    variable basicColorArrayIndexerSet 0
    proc staticGet_basicColorArrayIndexer {} {
        variable basicColorArrayIndexerValue
        variable basicColorArrayIndexerSet
        if {!$basicColorArrayIndexerSet} {
            set basicColorArrayIndexerSet 1
            set basicColorArrayIndexerValue [::BasicColorArrayIndexer new [jarrayfrom [list [[::BasicColorFactory::getInstance] jget WHITE] [[::BasicColorFactory::getInstance] jget RED] [[::BasicColorFactory::getInstance] jget YELLOW] [[::BasicColorFactory::getInstance] jget BLUE]]]]
        }
        return $basicColorArrayIndexerValue
    }
    proc staticSet_basicColorArrayIndexer {value} {
        variable basicColorArrayIndexerValue
        variable basicColorArrayIndexerSet
        set basicColorArrayIndexerSet 1
        set basicColorArrayIndexerValue $value
    }
}


