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

oo::class create ::VectorMirrorGenerator {
    superclass ::JObject
}

oo::define ::VectorMirrorGenerator {
    method initFields_VectorMirrorGenerator {} {
        my jset logUtil {}
        my jset vectorAnimationUtil {}
        my jset logUtil [::LogUtil::getInstance]
        my jset vectorAnimationUtil [::VectorAnimationUtil::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_VectorMirrorGenerator
    }
    

    method getInstance {points width} {
        try {
            set pointFactory [::PointFactory::getInstance]
            set pointBasicArrayList {}
            set nextPoints {}
            set size2 0
            set size [$points length]
            set pointsBasicArrayList [::BasicArrayListS new $size]
            for {set frame 0} {[expr {$frame < $size}]} {jpostincr frame 1} {
                set nextPoints [$points get $frame]
                set size2 [$nextPoints length]
                set pointBasicArrayList [::BasicArrayListS new $size2]
                for {set index 0} {[expr {$index < $size2}]} {jpostincr index 1} {
                    $pointBasicArrayList add [$pointFactory createXY [[$nextPoints get $index] get 0] [[$nextPoints get $index] get 1]]
                }
                $pointsBasicArrayList add $pointBasicArrayList
            }
            for {set index 0} {[expr {$index < [$points length]}]} {jpostincr index 1} {
                $pointsBasicArrayList add [my getInstance [[$pointsBasicArrayList jget objectArray] get $index] $width]
            }
            set newPoints [[my jget vectorAnimationUtil] toAnimationArrayFromListOfPointList $pointsBasicArrayList]
            return $newPoints
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget GET_INSTANCE] $e
            return [[::NullUtil::getInstance] jget NULL_INT_ARRAY_ARRAY_ARRAY]
        }
    }
    

    method getInstance {pointBasicArrayList width} {
        set graphicsPipe [::BasicGraphicsPipeline new $pointBasicArrayList]
        $graphicsPipe createMatrix
        $graphicsPipe mirror $width
        return [$graphicsPipe getMatrix]
    }
}

namespace eval ::VectorMirrorGenerator {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::VectorMirrorGenerator new]
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
        return [::VectorMirrorGenerator::staticGet_instance]
    }
}


