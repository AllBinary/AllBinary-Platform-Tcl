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
# package org.allbinary.game.input

oo::class create ::GameInput {
    superclass ::JObject
}

oo::define ::GameInput {
    method initFields_GameInput {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset gameKeyEventList {}
        my jset removalGameKeyEventList {}
        my jset isRemoveDuplicateKeyPresses false
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        
        return
    }
    

    constructor {gameKeyEventList removalGameKeyEventList} {
        next
        my initFields_GameInput
        my jset gameKeyEventList $gameKeyEventList
        my jset removalGameKeyEventList $removalGameKeyEventList
        my jset isRemoveDuplicateKeyPresses [[::Features::getInstance] isFeature [[::InputFeatureFactory::getInstance] jget REMOVE_DUPLICATE_KEY_PRESSES]]
    }
    

    method add {gameKeyEvent} {
        if {[expr {[my jget isRemoveDuplicateKeyPresses] && [[my jget gameKeyEventList] contains $gameKeyEvent]}]} {
            return
        }
        if {[expr {$gameKeyEvent ne {}}]} {
            [my jget gameKeyEventList] add $gameKeyEvent
        } else {
            [my jget logUtil] putF "Danger Passed Null GameKeyEvent" [self] [[my jget commonStrings] jget ADD]
        }
    }
    

    method addForRemoval {gameKeyEvent} {
        [my jget removalGameKeyEventList] add $gameKeyEvent
    }
    

    method isForRemoval {gameKeyEvent} {
        return [[my jget removalGameKeyEventList] contains $gameKeyEvent]
    }
    

    method clear {} {
        [my jget gameKeyEventList] clear
    }
    

    method removeNonAIInputGameKeyEvents {} {
        set list [my jget gameKeyEventList]
        set gameKeyEvent {}
        for {set index [$list size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set gameKeyEvent [[$list jget objectArray] get $index]
            if {[expr {[$gameKeyEvent getSourceId] != 1}]} {
                $list removeAt $index
            }
        }
    }
    

    method update {} {
        set removeList [my jget removalGameKeyEventList]
        set list [my jget gameKeyEventList]
        set size [$removeList size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set anyType [[$removeList jget objectArray] get $index]
            for {set index2 [$list size]} {[expr {[jpreincr index2 -1] >= 0}]} {} {
                if {[expr {[[$list jget objectArray] get $index2] eq $anyType}]} {
                    $list removeAt $index2
                }
            }
        }
        $removeList clear
    }
    

    method getRemovalGameKeyEventList {} {
        return [my jget removalGameKeyEventList]
    }
    

    method getGameKeyEventList {} {
        return [my jget gameKeyEventList]
    }
}

namespace eval ::GameInput {
}


