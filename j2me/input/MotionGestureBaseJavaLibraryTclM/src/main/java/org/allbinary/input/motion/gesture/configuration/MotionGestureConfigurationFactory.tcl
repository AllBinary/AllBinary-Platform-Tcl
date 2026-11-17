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
# package org.allbinary.input.motion.gesture.configuration

oo::class create ::MotionGestureConfigurationFactory {
    superclass ::JObject
}

oo::define ::MotionGestureConfigurationFactory {
    method initFields_MotionGestureConfigurationFactory {} {
        return
    }
    

    constructor {} {
        next
        my initFields_MotionGestureConfigurationFactory
    }
    
}

namespace eval ::MotionGestureConfigurationFactory {
    variable configValue {}
    variable configSet 0
    proc staticGet_config {} {
        variable configValue
        variable configSet
        if {!$configSet} {
            set configSet 1
            set configValue [::MotionGestureConfiguration new]
        }
        return $configValue
    }
    proc staticSet_config {value} {
        variable configValue
        variable configSet
        set configSet 1
        set configValue $value
    }
    proc getInstance {} {
        return [::MotionGestureConfigurationFactory::staticGet_config]
    }
}


