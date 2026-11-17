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
# package org.allbinary.math

oo::class create ::AngleIncrementInfoFactory {
    superclass ::JObject
}

oo::define ::AngleIncrementInfoFactory {
    method initFields_AngleIncrementInfoFactory {} {
        my jset angleIncrementInfo {}
        my jset angleIncrementInfo [jarray [jint [[::AngleFactory::getInstance] jget TOTAL_ANGLE]] {}]
        return
    }

    constructor {} {
        next
        my initFields_AngleIncrementInfoFactory
    }
    
    

    method getAt {angleIncrement} {
        set halfAngleIncrement ([expr {[jint $angleIncrement] >> 1}])
        set angleIncrementInfo {}
        set angleIncrementInfoCanBeNull [[my jget angleIncrementInfo] get $halfAngleIncrement]
        if {[expr {$angleIncrementInfoCanBeNull eq {}}]} {
            set angleIncrementInfo [::AngleIncrementInfo new $angleIncrement]
            [my jget angleIncrementInfo] set $halfAngleIncrement $angleIncrementInfo
            return $angleIncrementInfo
        } else {
            set angleIncrementInfo $angleIncrementInfoCanBeNull
        }
        return $angleIncrementInfo
    }
}

namespace eval ::AngleIncrementInfoFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AngleIncrementInfoFactory new]
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
        return [::AngleIncrementInfoFactory::staticGet_instance]
    }
}


