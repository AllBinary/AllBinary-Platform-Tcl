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
# package org.allbinary.canvas

oo::class create ::BaseGameStatistics {
    superclass ::JObject
}

oo::define ::BaseGameStatistics {
    method initFields_BaseGameStatistics {} {
        my jset timeDelayHelper {}
        my jset updateDelayHelper {}
        my jset totalRefreshes 0
        my jset totalFrames 0
        my jset gameTickTimeDelayHelper {}
        my jset DEFAULT_SCALE_FACTOR 0
        my jset NOT {}
        my jset EMPTY_STRING {}
        my jset STRING_ARRAY {}
        my jset SPACE_CHAR 0
        my jset PLUS_CHAR 0
        my jset X_CHAR 0
        my jset CHAR_ARRAY {}
        my jset primitiveLongSingleton {}
        my jset timeDelayHelper [::TimeDelayHelper new [::Integer::staticGet_MAX_VALUE]]
        my jset updateDelayHelper [::TimeDelayHelper new 2000]
        my jset totalRefreshes 0
        my jset totalFrames 0
        my jset gameTickTimeDelayHelper [::GameTickTimeDelayHelperFactory::getInstance]
        my jset DEFAULT_SCALE_FACTOR [[::ScaleFactorFactory::getInstance] jget DEFAULT_SCALE_FACTOR]
        my jset NOT "Not enough Time to Calculate"
        my jset EMPTY_STRING [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset STRING_ARRAY [jarrayfrom [list " Total Time: " [my jget EMPTY_STRING] " Total Frames: " [my jget EMPTY_STRING] " Frames/10 Sec: " [my jget EMPTY_STRING] " Total Paints: " [my jget EMPTY_STRING] " Paints/10 Sec: " [my jget EMPTY_STRING]]]
        my jset SPACE_CHAR [scan " " %c]
        my jset PLUS_CHAR [scan "+" %c]
        my jset X_CHAR [scan "X" %c]
        my jset CHAR_ARRAY [jarrayfrom [list [jarrayfrom [list [scan "F" %c] [scan "r" %c] [scan "a" %c] [scan "m" %c] [scan "e" %c] [scan "s" %c] [scan "/" %c] [scan "1" %c] [scan "0" %c] [scan " " %c] [scan "S" %c] [scan "e" %c] [scan "c" %c] [scan ":" %c]]] [jarrayfrom [list [scan "X" %c] [scan "X" %c]]] [jarrayfrom [list [scan "P" %c] [scan "a" %c] [scan "i" %c] [scan "n" %c] [scan "t" %c] [scan "s" %c] [scan "/" %c] [scan "1" %c] [scan "0" %c] [scan " " %c] [scan "S" %c] [scan "e" %c] [scan "c" %c] [scan ":" %c]]] [jarrayfrom [list [scan "X" %c] [scan "X" %c]]]]]
        my jset primitiveLongSingleton [::PrimitiveLongSingleton::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_BaseGameStatistics
    }
    

    method init {} {
        [my jget timeDelayHelper] setStartTimeTNT
        my jset totalRefreshes 0
        my jset totalFrames 0
    }
    

    method add {string} {
    }
    

    method process {} {
    }
    

    method nextFrame {} {
        my jpostinc totalFrames 1
    }
    

    method nextRefresh {} {
        my jpostinc totalRefreshes 1
    }
    

    method getRefreshRate {} {
        set elapsed [[my jget timeDelayHelper] getElapsed [[my jget gameTickTimeDelayHelper] jget startTime]]
        if {[expr {$elapsed > 1}]} {
            set time [jshort ([jdiv [my jget totalRefreshes] ([expr {$elapsed >> [my jget DEFAULT_SCALE_FACTOR]}])])]
            return $time
        } else {
            return 0
        }
    }
    

    method getTimeDelayHelper {} {
        return [my jget timeDelayHelper]
    }
    

    method to2DCharArray {} {
        set totalTime [[my jget timeDelayHelper] getElapsed [[my jget gameTickTimeDelayHelper] jget startTime]]
        set totalTime ([expr {$totalTime >> [my jget DEFAULT_SCALE_FACTOR]}])
        if {[expr {[expr {$totalTime > 0}] && [[my jget updateDelayHelper] isTime [[my jget gameTickTimeDelayHelper] jget startTime]]}]} {
            set framesPerSec [jint ([jdiv [my jget totalFrames] $totalTime])]
            if {[expr {$framesPerSec < 10}]} {
                [[my jget CHAR_ARRAY] get 1] set 0 [my jget SPACE_CHAR]
                [[my jget CHAR_ARRAY] get 1] set 1 [[[my jget primitiveLongSingleton] jget NUMBER_CHAR_ARRAY] get $framesPerSec]
            } elseif {[expr {$framesPerSec < 100}]} {
                set tens [jdiv $framesPerSec 10]
                set removeTens [jint [expr {$tens * 10}]]
                [[my jget CHAR_ARRAY] get 1] set 0 [[[my jget primitiveLongSingleton] jget NUMBER_CHAR_ARRAY] get $tens]
                [[my jget CHAR_ARRAY] get 1] set 1 [[[my jget primitiveLongSingleton] jget NUMBER_CHAR_ARRAY] get [jint [expr {$framesPerSec - $removeTens}]]]
            } else {
                [[my jget CHAR_ARRAY] get 1] set 0 [my jget PLUS_CHAR]
                [[my jget CHAR_ARRAY] get 1] set 1 [my jget PLUS_CHAR]
            }
            set refreshesPerSec [jint ([jdiv [my jget totalRefreshes] $totalTime])]
            if {[expr {$refreshesPerSec < 10}]} {
                [[my jget CHAR_ARRAY] get 3] set 0 [my jget X_CHAR]
                [[my jget CHAR_ARRAY] get 3] set 1 [[[my jget primitiveLongSingleton] jget NUMBER_CHAR_ARRAY] get $refreshesPerSec]
            } elseif {[expr {$refreshesPerSec < 100}]} {
                set tens [jdiv $refreshesPerSec 10]
                set removeTens [jint [expr {$tens * 10}]]
                [[my jget CHAR_ARRAY] get 3] set 0 [[[my jget primitiveLongSingleton] jget NUMBER_CHAR_ARRAY] get [jdiv $refreshesPerSec 10]]
                [[my jget CHAR_ARRAY] get 3] set 1 [[[my jget primitiveLongSingleton] jget NUMBER_CHAR_ARRAY] get [jint [expr {$refreshesPerSec - $removeTens}]]]
            } else {
                [[my jget CHAR_ARRAY] get 3] set 0 [my jget PLUS_CHAR]
                [[my jget CHAR_ARRAY] get 3] set 1 [my jget PLUS_CHAR]
            }
        }
        return [my jget CHAR_ARRAY]
    }
    

    method toStringArray {} {
        set totalTime [[my jget timeDelayHelper] getElapsed [[my jget gameTickTimeDelayHelper] jget startTime]]
        set totalTime ([jdiv $totalTime 10000])
        if {[expr {$totalTime > 0}]} {
            [my jget STRING_ARRAY] set 1 [jstr $totalTime]
            [my jget STRING_ARRAY] set 3 [jstr [my jget totalFrames]]
            [my jget STRING_ARRAY] set 5 [jstr [jdiv [my jget totalFrames] $totalTime]]
            [my jget STRING_ARRAY] set 7 [jstr [my jget totalRefreshes]]
            [my jget STRING_ARRAY] set 9 [jstr [jdiv [my jget totalRefreshes] $totalTime]]
        } else {
            set string [my jget EMPTY_STRING]
            [my jget STRING_ARRAY] set 1 $string
            [my jget STRING_ARRAY] set 3 $string
            [my jget STRING_ARRAY] set 5 $string
            [my jget STRING_ARRAY] set 7 $string
            [my jget STRING_ARRAY] set 9 $string
        }
        return [my jget STRING_ARRAY]
    }
    

    method toStringAt {totalTime} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [[my jget STRING_ARRAY] get 0]
        $stringBuffer appendlong $totalTime
        $stringBuffer append [[my jget STRING_ARRAY] get 2]
        $stringBuffer appendlong [my jget totalFrames]
        $stringBuffer append [[my jget STRING_ARRAY] get 4]
        $stringBuffer appendlong [jdiv [my jget totalFrames] $totalTime]
        if {[expr {[my jget totalRefreshes] > 0}]} {
            $stringBuffer append [[my jget STRING_ARRAY] get 6]
            $stringBuffer appendlong [my jget totalRefreshes]
            $stringBuffer append [[my jget STRING_ARRAY] get 8]
            $stringBuffer appendlong [jdiv [my jget totalRefreshes] $totalTime]
            $stringBuffer append [[::CommonSeps::getInstance] jget NEW_LINE]
        }
        return [$stringBuffer toString]
    }
    

    method toString {} {
        set totalTime [[my jget timeDelayHelper] getElapsed [[my jget gameTickTimeDelayHelper] jget startTime]]
        set totalTime ([jdiv $totalTime 1000])
        if {[expr {$totalTime > 0}]} {
            return [my toStringAt $totalTime]
        } else {
            return [my jget NOT]
        }
    }
}

namespace eval ::BaseGameStatistics {
}


