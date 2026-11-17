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
# package org.allbinary.direction

oo::class create ::DirectionUtil {
    superclass ::JObject
}

oo::define ::DirectionUtil {
    method initFields_DirectionUtil {} {
        my jset directionArray {}
        my jset directionArray2 {}
        my jset directionArray [jarray 10 {}]
        my jset directionArray2 [jarray 10 {}]
        return
    }
    
    

    constructor {} {
        next
        my initFields_DirectionUtil
        set angleFactory [::AngleFactory::getInstance]
        set directionFactory [::DirectionFactory::getInstance]
        [my jget directionArray] set [[$directionFactory jget LEFT] getValue] [$angleFactory jget LEFT]
        [my jget directionArray] set [[$directionFactory jget RIGHT] getValue] [$angleFactory jget RIGHT]
        [my jget directionArray] set [[$directionFactory jget UP] getValue] [$angleFactory jget UP]
        [my jget directionArray] set [[$directionFactory jget DOWN] getValue] [$angleFactory jget DOWN]
        [my jget directionArray2] set [[$directionFactory jget LEFT] getValue] [$angleFactory jget LEFT]
        [my jget directionArray2] set [[$directionFactory jget RIGHT] getValue] [$angleFactory jget RIGHT]
        [my jget directionArray2] set [[$directionFactory jget UP] getValue] [$angleFactory jget UP]
        [my jget directionArray2] set [[$directionFactory jget DOWN] getValue] [$angleFactory jget DOWN]
    }
    

    method getAngle {direction} {
        return [[my jget directionArray2] get [$direction getValue]]
    }
    

    method getFrameAngle {direction} {
        return [[my jget directionArray] get [$direction getValue]]
    }
}

namespace eval ::DirectionUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::DirectionUtil new]
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
        return [::DirectionUtil::staticGet_instance]
    }
}


