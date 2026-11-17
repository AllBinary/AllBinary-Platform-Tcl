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
# package org.allbinary.android.input.motion

oo::class create ::AnalogControllerConfigurationFactory {
    superclass ::JObject
}

oo::define ::AnalogControllerConfigurationFactory {
    method initFields_AnalogControllerConfigurationFactory {} {
        my jset SCALE_FACTOR 0
        my jset SCALE_VALUE 0
        my jset available false
        my jset analogControllerConfigurationEvent {}
        my jset SCALE_FACTOR [[::ScaleFactorFactory::getInstance] jget DEFAULT_SCALE_FACTOR]
        my jset SCALE_VALUE [[::ScaleFactorFactory::getInstance] jget DEFAULT_SCALE_VALUE]
        my jset available false
        my jset analogControllerConfigurationEvent [::AnalogControllerConfigurationEvent new [self]]
        return
    }
    
    

    constructor {} {
        next
        my initFields_AnalogControllerConfigurationFactory
    }
    

    method isAvailable {} {
        return [my jget available]
    }
    

    method setAvailable {available} {
        my jset available $available
        [::AnalogControllerConfigurationEventHandler::getInstance] fireEvent [my jget analogControllerConfigurationEvent]
    }
}

namespace eval ::AnalogControllerConfigurationFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AnalogControllerConfigurationFactory new]
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
        return [::AnalogControllerConfigurationFactory::staticGet_instance]
    }
}


