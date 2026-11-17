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
# package org.allbinary.game.ag.layer.hud.basic

oo::class create ::PlayerGameNotificationHud {
    superclass ::GameNotificationHud
}

oo::define ::PlayerGameNotificationHud {
    method initFields_PlayerGameNotificationHud {} {
        my jset gameTickTimeDelayHelper {}
        my jset EMPTY_STRING {}
        my jset displayInfo {}
        my jset timeDelayHelper {}
        my jset circularIndexUtil {}
        my jset gameNotification {}
        my jset permanentGameNotification {}
        my jset setAndRemoveProcessor {}
        my jset nextUnremoveableProcessor {}
        my jset processor {}
        my jset PERMANENT_GAME_NOTIFICATION {}
        my jset lastString {}
        my jset string {}
        my jset point {}
        my jset width 0
        my jset gameTickTimeDelayHelper [::GameTickTimeDelayHelperFactory::getInstance]
        my jset EMPTY_STRING [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset displayInfo [::DisplayInfoSingleton::getInstance]
        my jset timeDelayHelper [::TimeDelayHelper new 0]
        
        my jset gameNotification [::GameNotification new]
        my jset permanentGameNotification [::GameNotification new]
        my jset setAndRemoveProcessor [::SetAndRemoveProcessor new [self]]
        my jset nextUnremoveableProcessor [::NextUnremoveableProcessor new [self]]
        my jset processor [::Processor::getInstance]
        my jset PERMANENT_GAME_NOTIFICATION "Permanent Game Notification: "
        my jset lastString [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset string [my jget EMPTY_STRING]
        my jset point [::CustomGPoint::staticGet_NULL_CUSTOM_POINT]
        my jset width 0
        return
    }
    

    constructor {location direction bufferZone basicColor} {
        next $location $direction $bufferZone $basicColor
        my initFields_PlayerGameNotificationHud
        my jset circularIndexUtil [::CircularIndexUtil::createInstance 0]
        set gameNotificationEventHandler [::GameNotificationEventHandler::getInstance]
        $gameNotificationEventHandler removeAllListeners
        $gameNotificationEventHandler addListenerInterface [self]
    }
    

    method updateMeasurement {graphics} {
        try {
            next $graphics
            set font [$graphics getFont]
            my jset width [$font stringWidth [my jget string]]
            [my jget processor] process
            my jset processor [::Processor::getInstance]
        } on error {e} {
            set logUtil [::LogUtil::getInstance]
            set commonStrings [::CommonStrings::getInstance]
            $logUtil put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget UPDATE] $e
        }
    }
    

    method getPoint {x y} {
        my jset point [::CustomGPoint::getInstance3 0 0]
        [my jget point] setX $x
        [my jget point] setY $y
        return [my jget point]
    }
    

    method add {string seconds basicColor permanent} {
        if {[$permanent booleanValue]} {
            if {[expr {[my jget lastString] ne $string}]} {
                my jset lastString $string
                [my jget logUtil] putF [[[[::StringMaker new] append [my jget PERMANENT_GAME_NOTIFICATION]] append $string] toString] [self] [[my jget commonStrings] jget ADD]
            }
            [my jget permanentGameNotification] add $string $seconds $basicColor
            [my jget circularIndexUtil] setSize [[my jget permanentGameNotification] getSize]
        } else {
            [my jget gameNotification] add $string $seconds $basicColor
        }
    }
    

    method processTick {} {
        if {[[my jget timeDelayHelper] isTime [[my jget gameTickTimeDelayHelper] jget startTime]]} {
            set gameAdState [[::GameAdStateFactory::getInstance] getCurrentInstance]
            if {[$gameAdState isShowingAtLocation [my getLocation]]} {
                my jset offsetY [expr {-54}]
            } else {
                my jset offsetY 0
            }
            if {[expr {[[my jget gameNotification] getSize] > 0}]} {
                my setAndRemove
            } elseif {[expr {[[my jget permanentGameNotification] getSize] > 0}]} {
                my setNextUnremoveable
            } else {
                my jset string [my jget EMPTY_STRING]
            }
        }
    }
    

    method setAndRemove {} {
        my jset string [[[my jget gameNotification] jget stringList] removeAt 0]
        my jset processor [my jget setAndRemoveProcessor]
    }
    

    method setAndRemoveProcess {} {
        my setX [expr {([expr {[[my jget displayInfo] getLastWidth] - [my jget width]}]) >> 1}]
        [my jget point] setX [my getX]
        [my jget point] setY [my getY]
        set time [[[my jget gameNotification] jget timeList] removeAt 0]
        set iTime [expr {[$time intValue] * 1000}]
        if {[expr {$iTime == 0}]} {
            set iTime 500
        }
        [my jget timeDelayHelper] jset delay $iTime
        my setBasicColorP [[[my jget gameNotification] jget colorList] removeAt 0]
    }
    

    method setNextUnremoveable {} {
        set index [[my jget circularIndexUtil] getIndex]
        my jset string [[[[my jget permanentGameNotification] jget stringList] jget objectArray] get $index]
        my jset processor [my jget nextUnremoveableProcessor]
    }
    

    method setNextUnremoveableProcess {} {
        set index [[my jget circularIndexUtil] getIndex]
        my setX [expr {([expr {[[my jget displayInfo] getLastWidth] - [my jget width]}]) >> 1}]
        [my jget point] setX [my getX]
        [my jget point] setY [my getY]
        set time [[[[my jget permanentGameNotification] jget timeList] jget objectArray] get $index]
        [my jget timeDelayHelper] jset delay [expr {[$time intValue] * 1000}]
        my setBasicColorP [[[[my jget permanentGameNotification] jget colorList] jget objectArray] get $index]
        [my jget circularIndexUtil] next
    }
    

    method clear {} {
        [my jget gameNotification] clear
        [my jget permanentGameNotification] clear
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        next $graphics [my jget string]
    }
}

namespace eval ::PlayerGameNotificationHud {
}


