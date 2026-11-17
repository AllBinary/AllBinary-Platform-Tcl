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

oo::class create ::LayerDistanceUtil {
    superclass ::JObject
}

oo::define ::LayerDistanceUtil {
    method initFields_LayerDistanceUtil {} {
        my jset mathUtil {}
        my jset mathUtil [::MathUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_LayerDistanceUtil
    }
    
    

    method getDistance {layerInterface layerInterface2} {
        set dx [expr {([expr {[$layerInterface getXP] + [$layerInterface getHalfWidth]}]) - ([expr {[$layerInterface2 getXP] + [$layerInterface2 getHalfWidth]}])}]
        set dy [expr {([expr {[$layerInterface getYP] + [$layerInterface getHalfHeight]}]) - ([expr {[$layerInterface2 getYP] + [$layerInterface2 getHalfHeight]}])}]
        return [jint [[my jget mathUtil] sqrt [jint [expr {([jint [expr {$dx * $dx}]]) + ([jint [expr {$dy * $dy}]])}]]]]
    }
    

    method getDistance3D {layerInterface layerInterface2} {
        set dx [expr {([expr {[$layerInterface getXP] + [$layerInterface getHalfWidth]}]) - ([expr {[$layerInterface2 getXP] + [$layerInterface2 getHalfWidth]}])}]
        set dy [expr {([expr {[$layerInterface getYP] + [$layerInterface getHalfHeight]}]) - ([expr {[$layerInterface2 getYP] + [$layerInterface2 getHalfHeight]}])}]
        set dz [expr {([expr {[$layerInterface getZP] + [$layerInterface getHalfDepth]}]) - ([expr {[$layerInterface2 getZP] + [$layerInterface2 getHalfDepth]}])}]
        return [jint [[my jget mathUtil] sqrt [jint [expr {[jint [expr {([jint [expr {$dx * $dx}]]) + ([jint [expr {$dy * $dy}]])}]] + ([jint [expr {$dz * $dz}]])}]]]]
    }
    

    method getDistanceAt {layerInterface point} {
        set dx [expr {[$layerInterface getXP] - [$point getX]}]
        set dy [expr {[$layerInterface getYP] - [$point getY]}]
        return [jint [[my jget mathUtil] sqrt [jint [expr {([jint [expr {$dx * $dx}]]) + ([jint [expr {$dy * $dy}]])}]]]]
    }
}

namespace eval ::LayerDistanceUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LayerDistanceUtil new]
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
        return [::LayerDistanceUtil::staticGet_instance]
    }
}


