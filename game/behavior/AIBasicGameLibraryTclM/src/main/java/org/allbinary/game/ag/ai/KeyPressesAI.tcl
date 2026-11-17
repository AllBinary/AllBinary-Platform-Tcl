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
# package org.allbinary.game.ag.ai

oo::class create ::KeyPressesAI {
    superclass ::BasicAI
}

oo::define ::KeyPressesAI {
    method initFields_KeyPressesAI {} {
        my jset on false
        my jset keys {}
        my jset on true
        
        return
    }
    

    constructor {hashtable ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_KeyPressesAI
        my jset keys [jarray [$hashtable size] {}]
        set objectArray [[::HashtableUtil::getInstance] getKeysAsArray $hashtable]
        set size [$objectArray length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [my jget keys] set $index [$hashtable get [$objectArray get $index]]
        }
    }
    

    method processAI {allBinaryLayerManager} {
        if {[my jget on]} {
            for {set index 0} {[expr {$index < [[my jget keys] length]}]} {jpostincr index 1} {
                next [[[my jget keys] get $index] intValue]
            }
        }
    }
    

    method toggle {} {
        if {[my isOn]} {
            my setOn false
        } else {
            my setOn true
        }
    }
    

    method disable {} {
        my setOn false
    }
    

    method enable {} {
        my setOn true
    }
    

    method setOn {on} {
        my jset on $on
    }
    

    method isOn {} {
        return [my jget on]
    }
}

namespace eval ::KeyPressesAI {
}


