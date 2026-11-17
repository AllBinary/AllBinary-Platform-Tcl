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
# package org.allbinary.media

oo::class create ::AllBinaryVibration {
    superclass ::AllBinaryVibrationME
}

oo::define ::AllBinaryVibration {
    method initFields_AllBinaryVibration {} {
        return
    }
    

    constructor {} {
        next
        my initFields_AllBinaryVibration
    }
    
    
    

    method vibrate {duration type volume} {
    }
}

namespace eval ::AllBinaryVibration {
    variable VIBRATIONValue {}
    variable VIBRATIONSet 0
    proc staticGet_VIBRATION {} {
        variable VIBRATIONValue
        variable VIBRATIONSet
        if {!$VIBRATIONSet} {
            set VIBRATIONSet 1
            set VIBRATIONValue [::AllBinaryNoVibration::staticGet_NO_VIBRATION]
        }
        return $VIBRATIONValue
    }
    proc staticSet_VIBRATION {value} {
        variable VIBRATIONValue
        variable VIBRATIONSet
        set VIBRATIONSet 1
        set VIBRATIONValue $value
    }
    proc getInstance {} {
        return [::AllBinaryVibration::staticGet_VIBRATION]
    }
    proc init {} {
        if {[expr {[[[[::GameConfigurationCentral::getInstance] jget VIBRATION] getValue] intValue] == 0}]} {
            ::AllBinaryVibration::staticSet_VIBRATION [::AllBinaryNoVibration::staticGet_NO_VIBRATION]
        } else {
            ::AllBinaryVibration::staticSet_VIBRATION [::AllBinaryVibration new]
        }
    }
}


