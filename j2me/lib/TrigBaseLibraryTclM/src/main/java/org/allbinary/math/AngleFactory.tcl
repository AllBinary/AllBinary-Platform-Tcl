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

oo::class create ::AngleFactory {
    superclass ::JObject
}

oo::define ::AngleFactory {
    method initFields_AngleFactory {} {
        my jset logUtil {}
        my jset TOTAL_ANGLE 0
        my jset QUARTER_TOTAL_ANGLE 0
        my jset angleArray {}
        my jset NEGATIVE_ONE 0
        my jset NOT_ANGLE {}
        my jset DOWN {}
        my jset UP {}
        my jset LEFT {}
        my jset RIGHT {}
        my jset frameUtil {}
        my jset logUtil [::LogUtil::getInstance]
        my jset TOTAL_ANGLE 360
        my jset QUARTER_TOTAL_ANGLE 90
        my jset angleArray [jarray [jint [my jget TOTAL_ANGLE]] {}]
        my jset NEGATIVE_ONE [jshort [expr {-1}]]
        my jset NOT_ANGLE [::NamedAngle new [my jget NEGATIVE_ONE] [[::CommonStrings::getInstance] jget EMPTY]]
        
        
        
        
        my jset frameUtil [::FrameUtil::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_AngleFactory
        set commonPhoneStrings [::CommonPhoneStrings::getInstance]
        set total [jshort [[my jget angleArray] length]]
        my jset UP [::NamedAngle new [jshort 0] [$commonPhoneStrings jget UP]]
        [my jget angleArray] set 0 [my jget UP]
        for {set index 1} {[expr {$index < 90}]} {jpostincr index 1} {
            [my jget angleArray] set $index [::Angle new [jshort $index]]
        }
        my jset RIGHT [::NamedAngle new [jshort 90] [$commonPhoneStrings jget RIGHT]]
        [my jget angleArray] set 90 [my jget RIGHT]
        for {set index 91} {[expr {$index < 180}]} {jpostincr index 1} {
            [my jget angleArray] set $index [::Angle new [jshort $index]]
        }
        my jset DOWN [::NamedAngle new [jshort 180] [$commonPhoneStrings jget DOWN]]
        [my jget angleArray] set 180 [my jget DOWN]
        for {set index 181} {[expr {$index < 270}]} {jpostincr index 1} {
            [my jget angleArray] set $index [::Angle new [jshort $index]]
        }
        my jset LEFT [::NamedAngle new [jshort 270] [$commonPhoneStrings jget LEFT]]
        [my jget angleArray] set 270 [my jget LEFT]
        for {set index 271} {[expr {$index < [jint $total]}]} {jpostincr index 1} {
            [my jget angleArray] set $index [::Angle new [jshort $index]]
        }
    }
    

    method getAt {index} {
        set adjustedIndex [jint [[my jget frameUtil] adjustAngleToFrameAngle $index]]
        return [[my jget angleArray] get $adjustedIndex]
    }
    

    method getClosestDirection {angle} {
        if {[expr {([expr {[expr {$angle >= 315}] && [expr {$angle < 360}]}]) || ([expr {[expr {$angle >= 0}] && [expr {$angle < 45}]}])}]} {
            return [my jget UP]
        } elseif {[expr {[expr {$angle >= 45}] && [expr {$angle < 135}]}]} {
            return [my jget RIGHT]
        } elseif {[expr {[expr {$angle >= 135}] && [expr {$angle < 225}]}]} {
            return [my jget DOWN]
        } elseif {[expr {[expr {$angle >= 225}] && [expr {$angle < 315}]}]} {
            return [my jget LEFT]
        }
        error [jexception RuntimeException {}]
    }
    

    method getGeneralDirection {} {
        return [my jget NOT_ANGLE]
    }
    
}

namespace eval ::AngleFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AngleFactory new]
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
        return [::AngleFactory::staticGet_instance]
    }
    proc main {args} {
        set stringMaker [::StringMaker new]
        set angleFactory [::AngleFactory::getInstance]
        for {set index 0} {[expr {$index < 360}]} {jpostincr index 1} {
            [[[$stringMaker appendint $index] append [[::CommonSeps::getInstance] jget FORWARD_SLASH]] appendshort [jshort [[$angleFactory getClosestDirection $index] getValue]]] append [[::CommonSeps::getInstance] jget NEW_LINE]
        }
        [::LogUtil::getInstance] putF [$stringMaker toString] "main" "main"
    }
}


