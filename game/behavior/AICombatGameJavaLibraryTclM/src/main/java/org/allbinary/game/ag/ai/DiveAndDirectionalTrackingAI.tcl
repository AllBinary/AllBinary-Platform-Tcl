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

oo::class create ::DiveAndDirectionalTrackingAI {
    superclass ::BasicAI
}

oo::define ::DiveAndDirectionalTrackingAI {
    method initFields_DiveAndDirectionalTrackingAI {} {
        my jset mathUtil {}
        my jset directionFactory {}
        my jset gameTickTimeDelayHelper {}
        my jset timeDelayHelper {}
        my jset list {}
        my jset directionalInterface {}
        my jset velocityInterface {}
        my jset directionToKeyMap {}
        my jset initialDropped false
        my jset diveP false
        my jset directionOfTarget {}
        my jset MIN_DISTANCE 0
        my jset lastTrackingLayerInterface {}
        my jset artificialIntelligenceInterface {}
        my jset aiVistor {}
        my jset lastDirection {}
        my jset mathUtil [::MathUtil::getInstance]
        my jset directionFactory [::DirectionFactory::getInstance]
        my jset gameTickTimeDelayHelper [::GameTickTimeDelayHelperFactory::getInstance]
        my jset timeDelayHelper [::TimeDelayHelper new 500]
        my jset list [::BasicArrayListD new]
        
        
        my jset directionToKeyMap [jarrayfrom [list [::Canvas::staticGet_LEFT] [::Canvas::staticGet_DOWN] [::Canvas::staticGet_UP] [::Canvas::staticGet_RIGHT]]]
        my jset initialDropped false
        my jset diveP false
        my jset directionOfTarget [::Direction::getInstance 0]
        my jset MIN_DISTANCE 40
        my jset lastTrackingLayerInterface [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER]
        
        
        my jset lastDirection [[::DirectionFactory::getInstance] jget NO_DIRECTION]
        return
    }
    

    constructor {ownerLayerInterface artificialIntelligenceInterface gameInput visitor} {
        next $ownerLayerInterface $gameInput
        my initFields_DiveAndDirectionalTrackingAI
        my jset aiVistor $visitor
        my jset artificialIntelligenceInterface $artificialIntelligenceInterface
        set directionalCompositeInterface [my getOwnerLayerInterface]
        my jset directionalInterface [$directionalCompositeInterface getDirectionalInterface]
        set velocityInterfaceCompositeInterface [my getOwnerLayerInterface]
        my jset velocityInterface [$velocityInterfaceCompositeInterface getVelocityProperties]
        [::DestroyedEventHandler::getInstance] addListenerInterface [self]
        my init
    }
    

    method processAI {allBinaryLayerManager} {
        if {[my isBeyondTarget]} {
            my init
            [my jget velocityInterface] zero
        }
        if {[expr {![my jget diveP]}]} {
            my target $allBinaryLayerManager
        } else {
            my dive
            my attack
        }
        [my jget list] clear
    }
    

    method init {} {
        my jset diveP false
        my jset directionOfTarget [[::DirectionFactory::getInstance] jget NOT_BORDERED_WITH]
        [::TrackingEventHandler::getInstance] addListenerInterface [self]
    }
    

    method target {allBinaryLayerManager} {
        if {[expr {[[my jget list] size] == 0}]} {
            return
        }
        set lastTrackingEvent [[my jget list] removeAt 0]
        my jset lastTrackingLayerInterface [$lastTrackingEvent getLayerInterface]
        set layerInterface [my jget lastTrackingLayerInterface]
        set ownerLayerInterface [my getOwnerLayerInterface]
        set groupArray [$layerInterface getGroupInterface]
        set ownerGroupArray [$ownerLayerInterface getGroupInterface]
        if {[expr {$groupArray eq $ownerGroupArray}]} {
            return
        }
        set x [[my jget lastTrackingLayerInterface] getXP]
        set y [[my jget lastTrackingLayerInterface] getYP]
        set yDistance [expr {[expr {[$ownerLayerInterface getYP] - $y}] - [$ownerLayerInterface getHeight]}]
        set xDistance [expr {[expr {[$ownerLayerInterface getXP] - $x}] - [$ownerLayerInterface getWidth]}]
        set directionFactory [::DirectionFactory::getInstance]
        if {[expr {[[my jget mathUtil] abs $yDistance] > [[my jget mathUtil] abs $xDistance]}]} {
            if {[expr {$yDistance > [my jget MIN_DISTANCE]}]} {
                my jset directionOfTarget [$directionFactory jget UP]
            } elseif {[expr {$yDistance < [expr {-[my jget MIN_DISTANCE]}]}]} {
                my jset directionOfTarget [$directionFactory jget DOWN]
            }
        } else {
            if {[expr {$xDistance > [my jget MIN_DISTANCE]}]} {
                my jset directionOfTarget [$directionFactory jget LEFT]
            } elseif {[expr {$xDistance < [expr {-[my jget MIN_DISTANCE]}]}]} {
                my jset directionOfTarget [$directionFactory jget RIGHT]
            }
        }
        if {[expr {[expr {![my jget initialDropped]}] && [expr {[my jget directionOfTarget] ne [$directionFactory jget NOT_BORDERED_WITH]}]}]} {
            my drop
        }
        if {[my jget initialDropped]} {
            if {[expr {[expr {[my jget directionOfTarget] eq [$directionFactory jget UP]}] || [expr {[my jget directionOfTarget] eq [$directionFactory jget DOWN]}]}]} {
                my verticalTargeting $x
            } elseif {[expr {[expr {[my jget directionOfTarget] eq [$directionFactory jget LEFT]}] || [expr {[my jget directionOfTarget] eq [$directionFactory jget RIGHT]}]}]} {
                my horizontalTargeting $y
            } else {
                [my jget artificialIntelligenceInterface] processAI $allBinaryLayerManager
            }
        }
    }
    

    method verticalTargeting {x} {
        set ownerLayerInterface [my getOwnerLayerInterface]
        if {[expr {[$ownerLayerInterface getXP] < $x}]} {
            my moveRight
        }
        if {[expr {[$ownerLayerInterface getXP] > $x}]} {
            my moveLeft
        }
        if {[expr {[expr {[$ownerLayerInterface getXP] > [jint [expr {$x - 3}]]}] && [expr {[$ownerLayerInterface getXP] < [jint [expr {$x + 3}]]}]}]} {
            my setDive
        }
    }
    

    method horizontalTargeting {y} {
        set ownerLayerInterface [my getOwnerLayerInterface]
        if {[expr {[$ownerLayerInterface getYP] < $y}]} {
            my moveDown
        }
        if {[expr {[$ownerLayerInterface getYP] > $y}]} {
            my moveUp
        }
        if {[expr {[expr {[$ownerLayerInterface getYP] > [jint [expr {$y - 3}]]}] && [expr {[$ownerLayerInterface getYP] < [jint [expr {$y + 3}]]}]}]} {
            my setDive
        }
    }
    

    method setDive {} {
        my jset diveP true
        [my jget velocityInterface] zero
        [::TrackingEventHandler::getInstance] removeListener [self]
    }
    

    method moveRight {} {
        my setLastDirection [[my jget directionFactory] jget RIGHT]
        [my jget directionalInterface] setFrameByDirection [my jget lastDirection]
        [my jget aiVistor] visit [self]
    }
    

    method moveLeft {} {
        my setLastDirection [[my jget directionFactory] jget LEFT]
        [my jget directionalInterface] setFrameByDirection [my jget lastDirection]
        [my jget aiVistor] visit [self]
    }
    

    method moveDown {} {
        my setLastDirection [[my jget directionFactory] jget DOWN]
        [my jget directionalInterface] setFrameByDirection [my jget lastDirection]
        [my jget aiVistor] visit [self]
    }
    

    method moveUp {} {
        my setLastDirection [[my jget directionFactory] jget UP]
        [my jget directionalInterface] setFrameByDirection [my jget lastDirection]
        [my jget aiVistor] visit [self]
    }
    

    method dive {} {
        [my jget directionalInterface] setFrameByDirection [my jget directionOfTarget]
        [my jget aiVistor] visit [self]
    }
    

    method attack {} {
        next [::Canvas::staticGet_KEY_NUM1]
    }
    

    method drop {} {
        if {[[my jget timeDelayHelper] isTime [[my jget gameTickTimeDelayHelper] jget startTime]]} {
            my jset initialDropped true
            [my jget aiVistor] visit [self]
        }
    }
    

    method isBeyondTarget {} {
        if {[expr {[my jget directionOfTarget] eq [[my jget directionFactory] jget DOWN]}]} {
            if {[expr {[[my getOwnerLayerInterface] getYP] > [expr {[[my jget lastTrackingLayerInterface] getYP] + [my jget MIN_DISTANCE]}]}]} {
                return true
            } else {
                return false
            }
        } elseif {[expr {[my jget directionOfTarget] eq [[my jget directionFactory] jget UP]}]} {
            if {[expr {[[my getOwnerLayerInterface] getYP] < [expr {[[my jget lastTrackingLayerInterface] getYP] + [my jget MIN_DISTANCE]}]}]} {
                return true
            } else {
                return false
            }
        } elseif {[expr {[my jget directionOfTarget] eq [[my jget directionFactory] jget RIGHT]}]} {
            if {[expr {[[my getOwnerLayerInterface] getXP] > [expr {[[my jget lastTrackingLayerInterface] getXP] + [my jget MIN_DISTANCE]}]}]} {
                return true
            } else {
                return false
            }
        } elseif {[expr {[my jget directionOfTarget] eq [[my jget directionFactory] jget LEFT]}]} {
            if {[expr {[[my getOwnerLayerInterface] getXP] < [expr {[[my jget lastTrackingLayerInterface] getXP] + [my jget MIN_DISTANCE]}]}]} {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onMovement {trackingEvent} {
        [my jget list] add $trackingEvent
    }
    

    method onDestroyed {destroyedEvent} {
        if {[expr {[my getOwnerLayerInterface] == [$destroyedEvent getLayerInterface]}]} {
            [::TrackingEventHandler::getInstance] removeListener [self]
            [::DestroyedEventHandler::getInstance] removeListener [self]
        }
    }
    

    method setLastDirection {lastDirection} {
        my jset lastDirection $lastDirection
        set value [[my getLastDirection] getValue]
        if {[expr {$value < 4}]} {
            next [[my jget directionToKeyMap] get $value]
        }
    }
    

    method setLastKey {lastKey} {
        next $lastKey
        if {[expr {[my getLastKey] == [::Canvas::staticGet_LEFT]}]} {
            my jset lastDirection [[::DirectionFactory::getInstance] jget LEFT]
        } elseif {[expr {[my getLastKey] == [::Canvas::staticGet_DOWN]}]} {
            my jset lastDirection [[::DirectionFactory::getInstance] jget DOWN]
        } elseif {[expr {[my getLastKey] == [::Canvas::staticGet_UP]}]} {
            my jset lastDirection [[::DirectionFactory::getInstance] jget UP]
        } elseif {[expr {[my getLastKey] == [::Canvas::staticGet_RIGHT]}]} {
            my jset lastDirection [[::DirectionFactory::getInstance] jget RIGHT]
        }
    }
    

    method getLastDirection {} {
        return [my jget lastDirection]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [next]
        $stringBuffer append " LastDirection: "
        $stringBuffer append [[::StringUtil::getInstance] toString1 [my getLastDirection]]
        return [$stringBuffer toString]
    }
}

namespace eval ::DiveAndDirectionalTrackingAI {
}


