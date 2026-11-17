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

oo::class create ::TextNotificationUtil {
    superclass ::JObject
}

oo::define ::TextNotificationUtil {
    method initFields_TextNotificationUtil {} {
        my jset TWO {}
        my jset FALSE {}
        my jset gameNotificationEventHandler {}
        my jset TWO [[::SmallIntegerSingletonFactory::getInstance] getAt 2]
        my jset FALSE [[::BooleanFactory::getInstance] jget FALSE]
        my jset gameNotificationEventHandler [::GameNotificationEventHandler::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_TextNotificationUtil
    }
    
    

    method fireError {message} {
        [::PrimaryPlayerQueueFactory::getInstance] add [::ErrorSound::getInstance]
        my fire $message
    }
    

    method fireNew {message} {
        [::PrimaryPlayerQueueFactory::getInstance] add [::SelectSound::getInstance]
        my fire $message
    }
    

    method fireSuccess {message} {
        [::PrimaryPlayerQueueFactory::getInstance] add [::SelectSound::getInstance]
        my fire $message
    }
    

    method fire {message} {
        set gameNotificationEvent [::GameNotificationEvent new [self] $message [my jget TWO] [[::BasicColorFactory::getInstance] jget RED] [my jget FALSE]]
        [my jget gameNotificationEventHandler] fireEvent $gameNotificationEvent
    }
}

namespace eval ::TextNotificationUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::TextNotificationUtil new]
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
        return [::TextNotificationUtil::staticGet_instance]
    }
}


