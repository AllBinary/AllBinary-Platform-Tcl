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
# package org.allbinary.input

oo::class create ::AllBinarySensor {
    superclass ::JObject
}

oo::define ::AllBinarySensor {
    method initFields_AllBinarySensor {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_AllBinarySensor
    }
    

    method init {} {
    }
    

    method update {} {
    }
    
    
    

    method getId {} {
        return [::AllBinarySensor::getMax]
    }
    

    method shutdown {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] "shutdown"
    }
    

    method onSensorChange {} {
        ::ForcedLogUtil::log [[my jget commonStrings] jget NOT_IMPLEMENTED] [self]
    }
}

namespace eval ::AllBinarySensor {
    variable NULL_ALLBINARY_SENSORValue {}
    variable NULL_ALLBINARY_SENSORSet 0
    proc staticGet_NULL_ALLBINARY_SENSOR {} {
        variable NULL_ALLBINARY_SENSORValue
        variable NULL_ALLBINARY_SENSORSet
        if {!$NULL_ALLBINARY_SENSORSet} {
            set NULL_ALLBINARY_SENSORSet 1
            set NULL_ALLBINARY_SENSORValue [::AllBinarySensor new]
        }
        return $NULL_ALLBINARY_SENSORValue
    }
    proc staticSet_NULL_ALLBINARY_SENSOR {value} {
        variable NULL_ALLBINARY_SENSORValue
        variable NULL_ALLBINARY_SENSORSet
        set NULL_ALLBINARY_SENSORSet 1
        set NULL_ALLBINARY_SENSORValue $value
    }
    variable maxValue {}
    variable maxSet 0
    proc staticGet_max {} {
        variable maxValue
        variable maxSet
        if {!$maxSet} {
            set maxSet 1
            set maxValue 100
        }
        return $maxValue
    }
    proc staticSet_max {value} {
        variable maxValue
        variable maxSet
        set maxSet 1
        set maxValue $value
    }
    proc setMax {max} {
        ::AllBinarySensor::staticSet_max $max
    }
    proc getMax {} {
        return [::AllBinarySensor::staticGet_max]
    }
}


