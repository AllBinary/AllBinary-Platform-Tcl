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
# package org.allbinary.logic.math.permutations

oo::class create ::OrderedIntArrayPermutationUtil {
    superclass ::JObject
}

oo::define ::OrderedIntArrayPermutationUtil {
    method initFields_OrderedIntArrayPermutationUtil {} {
        my jset TOTAL_ITERATIONS_TABLE {}
        my jset FINISHED {}
        my jset TOTAL_ITERATIONS_TABLE "Total Iterations: "
        my jset FINISHED "\nFINISHED"
        return
    }
    
    

    constructor {} {
        next
        my initFields_OrderedIntArrayPermutationUtil
    }
    

    method getNext {data} {
        set length [$data length]
        set i [jint [expr {$length - 1}]]
        while {[expr {[$data get [jint [expr {$i - 1}]]] >= [$data get $i]}]} {
            set i [jint [expr {$i - 1}]]
        }
        set j $length
        while {[expr {[$data get [jint [expr {$j - 1}]]] <= [$data get [jint [expr {$i - 1}]]]}]} {
            set j [jint [expr {$j - 1}]]
        }
        my swap $data [jint [expr {$i - 1}]] [jint [expr {$j - 1}]]
        jpostincr i 1
        set j $length
        while {[expr {$i < $j}]} {
            my swap $data [jint [expr {$i - 1}]] [jint [expr {$j - 1}]]
            jpostincr i 1
            jpostincr j -1
        }
    }
    

    method swap {data a b} {
        set temp [$data get $a]
        $data set $a [$data get $b]
        $data set $b $temp
    }
    

    method factorial {dataLength} {
        set temp 1
        if {[expr {$dataLength > 1}]} {
            for {set i 1} {[expr {$i <= $dataLength}]} {jpostincr i 1} {
                set temp [jlong [expr {$temp * $i}]]
            }
        }
        return $temp
    }
    

    method generate {data visitor} {
        set iterations [my factorial [$data length]]
        puts [jstr [my jget TOTAL_ITERATIONS_TABLE]]
        puts [jstr $iterations]
        for {set count 0} {[expr {$count < [jlong [expr {$iterations - 1}]]}]} {jpostincr count 1} {
            my getNext $data
            $visitor visit [self]
        }
        puts [jstr [my jget FINISHED]]
    }
    
}

namespace eval ::OrderedIntArrayPermutationUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OrderedIntArrayPermutationUtil new]
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
        return [::OrderedIntArrayPermutationUtil::staticGet_instance]
    }
    proc main {args} {
        set TOTAL 3
        set data [jarray $TOTAL 0]
        for {set i 0} {[expr {$i < $TOTAL}]} {jpostincr i 1} {
            $data set $i $i
        }
        set permutationVisitor [::IntPermutationVisitor new $data]
        set ORIGINAL_DATA_LABEL "Original Data: "
        puts [jstr $ORIGINAL_DATA_LABEL]
        $permutationVisitor print $data [::StringMaker new]
        [::OrderedIntArrayPermutationUtil::getInstance] generate $data $permutationVisitor
    }
}


