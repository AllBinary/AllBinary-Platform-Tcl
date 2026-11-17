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
# package org.allbinary.graphics.pipeline

oo::class create ::BasicGraphicsPipeline {
    superclass ::JObject
}

oo::define ::BasicGraphicsPipeline {
    method initFields_BasicGraphicsPipeline {} {
        my jset pointBasicArrayList {}
        my jset noDecimalTrigTable {}
        
        my jset noDecimalTrigTable [::NoDecimalTrigTable::getInstance]
        return
    }
    

    constructor {points} {
        next
        my initFields_BasicGraphicsPipeline
        my jset pointBasicArrayList $points
    }
    

    method setInitMatrix {points} {
        my jset pointBasicArrayList $points
    }
    

    method createMatrix {} {
    }
    

    method translate {x y} {
        set newBasicArrayList [::BasicArrayListD new]
        set size [[my jget pointBasicArrayList] size]
        set pointFactory [::PointFactory::getInstance]
        set secondPoint {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set secondPoint [[[my jget pointBasicArrayList] jget objectArray] get $index]
            if {[expr {[$secondPoint getX] != 1000}]} {
                $newBasicArrayList add [$pointFactory createXY [expr {[$secondPoint getX] + $x}] [expr {[$secondPoint getY] + $y}]]
            } else {
                $newBasicArrayList add $secondPoint
            }
        }
        my jset pointBasicArrayList $newBasicArrayList
    }
    

    method rotateToAngle {angle} {
        my rotate [jint [$angle getValue]]
    }
    

    method rotate {angle} {
        set newBasicArrayList [::BasicArrayListD new]
        set secondPoint {}
        set y 0
        set secondX 0
        set secondY 0
        set point {}
        set pointFactory [::PointFactory::getInstance]
        set size [[my jget pointBasicArrayList] size]
        set sin 0
        set cos 0
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set secondPoint [[[my jget pointBasicArrayList] jget objectArray] get $index]
            if {[expr {[$secondPoint getX] != 1000}]} {
                set sin [[my jget noDecimalTrigTable] sin $angle]
                set cos [[my jget noDecimalTrigTable] cos $angle]
                set y [expr {[$secondPoint getY] * $sin}]
                set secondX [expr {([expr {[$secondPoint getX] * $cos}]) - $y}]
                set secondY [expr {([expr {[$secondPoint getX] * $sin}]) + ([expr {[$secondPoint getY] * $cos}])}]
                set point [$pointFactory createXY [jdiv [jint $secondX] 10000] [jdiv [jint $secondY] 10000]]
                $newBasicArrayList add $point
            } else {
                $newBasicArrayList add $secondPoint
            }
        }
        my jset pointBasicArrayList $newBasicArrayList
    }
    

    method mirror {width} {
        set pointFactory [::PointFactory::getInstance]
        set halfWidth ([expr {$width >> 1}])
        set newBasicArrayList [::BasicArrayListD new]
        set secondPoint {}
        set newX 0
        set point {}
        set size [[my jget pointBasicArrayList] size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set secondPoint [[[my jget pointBasicArrayList] jget objectArray] get $index]
            if {[expr {[$secondPoint getX] != 1000}]} {
                set newX 0
                if {[expr {[$secondPoint getX] > $halfWidth}]} {
                    set newX [expr {$halfWidth - ([expr {[$secondPoint getX] - $halfWidth}])}]
                } else {
                    set newX [expr {$halfWidth + ([expr {$halfWidth - [$secondPoint getX]}])}]
                }
                set point [$pointFactory createXY $newX [$secondPoint getY]]
                $newBasicArrayList add $point
            } else {
                $newBasicArrayList add $secondPoint
            }
        }
        my jset pointBasicArrayList $newBasicArrayList
    }
    

    method getMatrix {} {
        return [my jget pointBasicArrayList]
    }
}

namespace eval ::BasicGraphicsPipeline {
}


