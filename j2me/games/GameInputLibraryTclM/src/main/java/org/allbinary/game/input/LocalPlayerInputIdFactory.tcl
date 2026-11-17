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

oo::class create ::LocalPlayerInputIdFactory {
    superclass ::JObject
}

oo::define ::LocalPlayerInputIdFactory {
    method initFields_LocalPlayerInputIdFactory {} {
        my jset logUtil {}
        my jset MAX_NUMBER_OF_PLAYERS 0
        my jset MAX_FAST_DEVICEID 0
        my jset deviceIdToplayerId {}
        my jset playerIdToDeviceId {}
        my jset playersInPlay {}
        my jset totalDevicesMapped 0
        my jset logUtil [::LogUtil::getInstance]
        my jset MAX_NUMBER_OF_PLAYERS 6
        my jset MAX_FAST_DEVICEID 65
        my jset deviceIdToplayerId [jarray [my jget MAX_FAST_DEVICEID] 0]
        my jset playerIdToDeviceId [jarray [my jget MAX_NUMBER_OF_PLAYERS] 0]
        my jset playersInPlay [jarray [my jget MAX_NUMBER_OF_PLAYERS] false]
        my jset totalDevicesMapped 0
        return
    }
    

    constructor {} {
        next
        my initFields_LocalPlayerInputIdFactory
        for {set index [jint [expr {[[my jget deviceIdToplayerId] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [my jget deviceIdToplayerId] set $index [expr {-1}]
        }
    }
    
    

    method getDeviceId {playerInputId} {
        return [[my jget playerIdToDeviceId] get $playerInputId]
    }
    

    method getPlayerForDevice {deviceId} {
        set index 0
        if {[expr {$deviceId < [my jget MAX_FAST_DEVICEID]}]} {
            set playerInputId [[my jget deviceIdToplayerId] get $deviceId]
            if {[expr {$playerInputId != [expr {-1}]}]} {
                return $playerInputId
            }
        } else {
            for {set index [jint [expr {[my jget totalDevicesMapped] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
                if {[expr {[[my jget playerIdToDeviceId] get $index] == $deviceId}]} {
                    return $index
                }
            }
        }
        set index [my jget totalDevicesMapped]
        if {[expr {$deviceId < [my jget MAX_FAST_DEVICEID]}]} {
            [my jget deviceIdToplayerId] set $deviceId $index
        } else {
            [my jget logUtil] putF [[[[[::StringMaker new] append "Added DeviceId: "] appendint $deviceId] append " beyond fast Id list"] toString] [self] "getPlayerForDevice"
        }
        [my jget playerIdToDeviceId] set $index $deviceId
        [::AnalogLocationInputFactory::getInstance] addPlayer [my jget totalDevicesMapped]
        my jpostinc totalDevicesMapped 1
        [my jget logUtil] putF [[[[[[[[::StringMaker new] append "Added DeviceId: "] appendint $deviceId] append " at: "] appendint $index] append " Total: "] appendint [my jget totalDevicesMapped]] toString] [self] "getPlayerForDevice"
        return $index
    }
    

    method getTotalDevicesInPlay {} {
        set total 0
        for {set index [jint [expr {[my jget totalDevicesMapped] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            if {[expr {[[my jget playersInPlay] get $index] == true}]} {
                jpostincr total 1
            }
        }
        return $total
    }
    

    method isPlayerInPlay {playerInputId} {
        return [[my jget playersInPlay] get $playerInputId]
    }
    

    method setPlayerInPlay {playerInputId} {
        [my jget logUtil] putF [[[[::StringMaker new] append "Setting PlayerInPlay with playerInputId: "] appendint $playerInputId] toString] [self] "setPlayerInPlay"
        [my jget playersInPlay] set $playerInputId true
    }
    

    method setPlayerOutOfPlay {playerInputId} {
        [my jget logUtil] putF [[[[::StringMaker new] append "Setting PlayerOutOfPlay with playerInputId: "] appendint $playerInputId] toString] [self] "setPlayerOutOfPlay"
        [my jget playersInPlay] set $playerInputId false
    }
    

    method getPlayersInPlay {} {
        return [my jget playersInPlay]
    }
}

namespace eval ::LocalPlayerInputIdFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LocalPlayerInputIdFactory new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::LocalPlayerInputIdFactory::staticGet_instance]
    }
}


