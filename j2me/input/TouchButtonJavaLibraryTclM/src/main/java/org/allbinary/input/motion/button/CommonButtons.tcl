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
# package org.allbinary.input.motion.button

oo::class create ::CommonButtons {
    superclass ::JObject
}

oo::define ::CommonButtons {
    method initFields_CommonButtons {} {
        my jset STANDARD_BUTTON_SIZE 0
        my jset NORMAL_BUTTON {}
        my jset LARGE_BUTTON {}
        
        
        
        return
    }
    
    

    constructor {} {
        next
        my initFields_CommonButtons
        set displayInfo [::DisplayInfoSingleton::getInstance]
        set commonButtonSize 128
        while {[expr {$commonButtonSize > 64}]} {
            set totalColumns [expr {[$displayInfo getLastWidth] / $commonButtonSize}]
            set totalRows [expr {[$displayInfo getLastHeight] / $commonButtonSize}]
            set max $totalColumns
            if {[expr {$totalRows > $max}]} {
                set max $totalRows
            }
            if {[expr {$max > 9}]} {
                break
            }
            set commonButtonSize [expr {$commonButtonSize >> 1}]
        }
        my jset STANDARD_BUTTON_SIZE $commonButtonSize
        my jset NORMAL_BUTTON [::Rectangle new [[::PointFactory::getInstance] jget ZERO_ZERO] [my jget STANDARD_BUTTON_SIZE] [my jget STANDARD_BUTTON_SIZE]]
        my jset LARGE_BUTTON [::Rectangle new [[::PointFactory::getInstance] jget ZERO_ZERO] [jint [expr {[my jget STANDARD_BUTTON_SIZE] << 1}]] [jint [expr {[my jget STANDARD_BUTTON_SIZE] << 1}]]]
    }
}

namespace eval ::CommonButtons {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CommonButtons new]
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
        return [::CommonButtons::staticGet_instance]
    }
}


