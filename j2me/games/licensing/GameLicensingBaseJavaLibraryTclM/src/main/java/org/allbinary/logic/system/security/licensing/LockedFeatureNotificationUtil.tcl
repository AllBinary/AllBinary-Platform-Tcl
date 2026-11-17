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
# package org.allbinary.logic.system.security.licensing

oo::class create ::LockedFeatureNotificationUtil {
    superclass ::JObject
}

oo::define ::LockedFeatureNotificationUtil {
    method initFields_LockedFeatureNotificationUtil {} {
        my jset gameNotificationEvent {}
        my jset gameNotificationEvent [::GameNotificationEvent new [self] [[::LicenseStrings::getInstance] jget LOCKED] [[::SmallIntegerSingletonFactory::getInstance] getAt 3] [[::BasicColorFactory::getInstance] jget RED] [[::BooleanFactory::getInstance] jget FALSE]]
        return
    }

    constructor {} {
        next
        my initFields_LockedFeatureNotificationUtil
    }
    
    

    method fire {} {
        [::PrimaryPlayerQueueFactory::getInstance] add [::ErrorSound::getInstance]
        [::GameNotificationEventHandler::getInstance] fireEvent [my jget gameNotificationEvent]
    }
    

    method fireWithColor {basicColor} {
        [::PrimaryPlayerQueueFactory::getInstance] add [::ErrorSound::getInstance]
        [my jget gameNotificationEvent] setBasicColorP $basicColor
        [::GameNotificationEventHandler::getInstance] fireEvent [my jget gameNotificationEvent]
    }
}

namespace eval ::LockedFeatureNotificationUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LockedFeatureNotificationUtil new]
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
        return [::LockedFeatureNotificationUtil::staticGet_instance]
    }
}


