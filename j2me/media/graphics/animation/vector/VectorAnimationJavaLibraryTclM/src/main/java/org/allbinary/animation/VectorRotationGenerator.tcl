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
# package org.allbinary.animation

oo::class create ::VectorRotationGenerator {
    superclass ::JObject
}

oo::define ::VectorRotationGenerator {
    method initFields_VectorRotationGenerator {} {
        my jset logUtil {}
        my jset vectorAnimationUtil {}
        my jset angleFactory {}
        my jset logUtil [::LogUtil::getInstance]
        my jset vectorAnimationUtil [::VectorAnimationUtil::getInstance]
        my jset angleFactory [::AngleFactory::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_VectorRotationGenerator
    }
    

    method getInstance {vectorRotationInfo} {
        return [my getInstanceFrames [$vectorRotationInfo getWidth] [$vectorRotationInfo getHeight] [$vectorRotationInfo getPoints] [$vectorRotationInfo getTotalFrames]]
    }
    

    method getInstanceFrames {width height points frames} {
        try {
            set totalAngle [[my jget angleFactory] jget TOTAL_ANGLE]
            set angleIncrement [jdiv [jint $totalAngle] $frames]
            set pointsBasicArrayList [::BasicArrayListS new [jdiv [jint $totalAngle] $angleIncrement]]
            set pointBasicArrayList [::BasicArrayListS new [$points length]]
            set pointFactory [::PointFactory::getInstance]
            set size [$points length]
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                $pointBasicArrayList add [$pointFactory createXY [[$points get $index] get 0] [[$points get $index] get 1]]
            }
            set index 0
            while {[expr {$index < [jint $totalAngle]}]} {
                $pointsBasicArrayList add [my getListAtAngle $width $height $pointBasicArrayList [[my jget angleFactory] getAt $index]]
                set index [jint [expr {$index + $angleIncrement}]]
            }
            set newPoints [[my jget vectorAnimationUtil] toAnimationArrayFromListOfPointListWithPointsPerFrame $pointsBasicArrayList [$pointBasicArrayList size]]
            return $newPoints
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget GET_INSTANCE] $e
            return [[::NullUtil::getInstance] jget NULL_INT_ARRAY_ARRAY_ARRAY]
        }
    }
    

    method getListAtAngle {width height pointBasicArrayList angle} {
        set graphicsPipe [::BasicGraphicsPipeline new $pointBasicArrayList]
        $graphicsPipe createMatrix
        $graphicsPipe translate [expr {-([expr {$width >> 1}])}] [expr {-([expr {$height >> 1}])}]
        $graphicsPipe rotateToAngle $angle
        $graphicsPipe translate ([expr {$width >> 1}]) ([expr {$height >> 1}])
        return [$graphicsPipe getMatrix]
    }
}

namespace eval ::VectorRotationGenerator {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::VectorRotationGenerator new]
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
        return [::VectorRotationGenerator::staticGet_instance]
    }
}


