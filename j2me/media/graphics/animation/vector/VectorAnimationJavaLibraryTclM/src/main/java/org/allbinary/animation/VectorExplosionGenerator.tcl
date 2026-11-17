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

oo::class create ::VectorExplosionGenerator {
    superclass ::JObject
}

oo::define ::VectorExplosionGenerator {
    method initFields_VectorExplosionGenerator {} {
        my jset RANDOM {}
        my jset ROTATION {}
        my jset vectorAnimationUtil {}
        my jset randomRotationFactory {}
        my jset RANDOM [::VectorExplosionType new]
        my jset ROTATION [::VectorExplosionType new]
        my jset vectorAnimationUtil [::VectorAnimationUtil::getInstance]
        my jset randomRotationFactory [::RandomRotationFactory::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_VectorExplosionGenerator
    }
    

    method createList {list howMuch type} {
        set point {}
        set size [$list size]
        set points [jarrayof $size {jarray 2 0}]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set point [[$list jget objectArray] get $index]
            [$points get $index] set 0 [$point getX]
            [$points get $index] set 1 [$point getY]
        }
        return [my createListFromPoints $list $points $howMuch $type]
    }
    

    method getInstance {points howMuch type} {
        set pointsBasicArrayList [my getInstanceStartFrame $points $howMuch $type true]
        set tempBasicArrayList [[$pointsBasicArrayList jget objectArray] get 0]
        set newPoints [[my jget vectorAnimationUtil] toAnimationArrayFromListOfPointListWithPointsPerFrame $pointsBasicArrayList [$tempBasicArrayList size]]
        return $newPoints
    }
    

    method getInstanceStartFrame {points howMuch type startFrame} {
        try {
            set pointsBasicArrayList [::BasicArrayListS new $howMuch]
            $pointsBasicArrayList add [my createPointsBasicArrayList $points]
            set frameIndex 0
            set tempBasicArrayList {}
            set pointBasicArrayList {}
            while {[expr {$frameIndex < $howMuch}]} {
                set tempBasicArrayList [[$pointsBasicArrayList jget objectArray] get $frameIndex]
                set pointBasicArrayList [my createListFromPoints $tempBasicArrayList $points $howMuch $type]
                $pointsBasicArrayList add $pointBasicArrayList
                jpostincr frameIndex 1
            }
            if {[expr {!$startFrame}]} {
                $pointsBasicArrayList removeAt 0
            }
            return $pointsBasicArrayList
        } on error {e} {
            error $e
        }
    }
    

    method createListFromPoints {tempBasicArrayList points howMuch type} {
        set index 0
        set pointBasicArrayList [::BasicArrayListD new]
        set sectionBasicArrayList {}
        while {[expr {$index < [$points length]}]} {
            set sectionBasicArrayList [::BasicArrayListD new]
            while {[expr {[[$points get $index] get 0] != 1000}]} {
                $sectionBasicArrayList add [[$tempBasicArrayList jget objectArray] get $index]
                jpostincr index 1
                if {[expr {$index >= [$points length]}]} {
                    break
                }
            }
            set sectionBasicArrayList [::RandomTranslation::getInstance $sectionBasicArrayList $howMuch]
            if {[expr {$type eq [my jget ROTATION]}]} {
                set sectionBasicArrayList [[my jget randomRotationFactory] getInstanceList $sectionBasicArrayList $howMuch]
            }
            set size [$sectionBasicArrayList size]
            for {set index2 0} {[expr {$index2 < $size}]} {jpostincr index2 1} {
                $pointBasicArrayList add [[$sectionBasicArrayList jget objectArray] get $index2]
            }
            if {[expr {$index >= [$points length]}]} {
                break
            } elseif {[expr {[[$points get $index] get 0] == 1000}]} {
                $pointBasicArrayList add [[$tempBasicArrayList jget objectArray] get $index]
                jpostincr index 1
            }
        }
        return $pointBasicArrayList
    }
    

    method createPointsBasicArrayList {points} {
        if {[expr {[$points length] == 0}]} {
            error [jexception Exception "Not Points Provided"]
        }
        set firstPointBasicArrayList [::BasicArrayListS new [$points length]]
        set pointFactory [::PointFactory::getInstance]
        for {set index 0} {[expr {$index < [$points length]}]} {jpostincr index 1} {
            $firstPointBasicArrayList add [$pointFactory createXY [[$points get $index] get 0] [[$points get $index] get 1]]
        }
        return $firstPointBasicArrayList
    }
}

namespace eval ::VectorExplosionGenerator {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::VectorExplosionGenerator new]
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
        return [::VectorExplosionGenerator::staticGet_instance]
    }
}


