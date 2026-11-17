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
# package org.allbinary.graphics.color

oo::class create ::SmallBasicColorCacheFactory {
    superclass ::JObject
}

oo::define ::SmallBasicColorCacheFactory {
    method initFields_SmallBasicColorCacheFactory {} {
        my jset SIZE 0
        my jset INDEX_TO_COLOR {}
        my jset BASIC_COLOR_ARRAY {}
        my jset colorIndex 0
        my jset SIZE 255
        my jset INDEX_TO_COLOR [jarray [my jget SIZE] 0]
        my jset BASIC_COLOR_ARRAY [jarray [my jget SIZE] {}]
        my jset colorIndex 0
        return
    }
    
    

    constructor {} {
        next
        my initFields_SmallBasicColorCacheFactory
    }
    

    method add {basicDefaultColor} {
        [my jget BASIC_COLOR_ARRAY] set [my jget colorIndex] $basicDefaultColor
        [my jget INDEX_TO_COLOR] set [my jget colorIndex] [$basicDefaultColor intValue]
        my jpostinc colorIndex 1
    }
    

    method getAndOrCreate {colorAsInt} {
        set basicColor {}
        for {set index 0} {[expr {$index < [my jget SIZE]}]} {jpostincr index 1} {
            if {[expr {[[my jget INDEX_TO_COLOR] get $index] == $colorAsInt}]} {
                return [[my jget BASIC_COLOR_ARRAY] get $index]
            }
        }
        set ALPHA_MASK 0xFF000000
        set basicColor [[::BasicColorFactory::getInstance] createInstanceAN [expr {$colorAsInt & $ALPHA_MASK}] [expr {$colorAsInt & 0x00FFFFFF}] [[::StringUtil::getInstance] jget EMPTY_STRING]]
        my add $basicColor
        return $basicColor
    }
}

namespace eval ::SmallBasicColorCacheFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::SmallBasicColorCacheFactory new]
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
        return [::SmallBasicColorCacheFactory::staticGet_instance]
    }
}


