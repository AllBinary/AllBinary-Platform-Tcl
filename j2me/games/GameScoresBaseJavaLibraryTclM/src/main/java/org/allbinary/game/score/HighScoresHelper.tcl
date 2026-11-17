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
# package org.allbinary.game.score

oo::class create ::HighScoresHelper {
    superclass ::HighScoresHelperBase
}

oo::define ::HighScoresHelper {
    method initFields_HighScoresHelper {} {
        my jset circularIndexUtil {}
        my jset lastIndex 0
        my jset circularIndexUtil [::CircularIndexUtil::createInstanceAt 0 0]
        my jset lastIndex [expr {-1}]
        return
    }

    constructor {} {
        next
        my initFields_HighScoresHelper
    }
    

    method setHighScoresArray {highScoresArrayP} {
        next $highScoresArrayP
        [my jget circularIndexUtil] setSize [[my jget highScoresArrayP] length]
    }
    

    method getNextHighScores {} {
        set highScores [[my jget highScoresArrayP] get [[my jget circularIndexUtil] getIndex]]
        set index 0
        while {[expr {([expr {[expr {[$highScores getTotal] < 1}] || [expr {[my jget lastIndex] == [[my jget circularIndexUtil] getIndex]}]}]) && [expr {$index < [[my jget highScoresArrayP] length]}]}]} {
            [my jget circularIndexUtil] next
            set highScores [[my jget highScoresArrayP] get [[my jget circularIndexUtil] getIndex]]
            jpostincr index 1
        }
        my jset lastIndex [[my jget circularIndexUtil] getIndex]
        return $highScores
    }
    

    method isAnyHighScores {} {
        if {[expr {[[my jget highScoresArrayP] length] < 1}]} {
            return false
        }
        set anyScores false
        set highScores {}
        for {set index [jint [expr {[[my jget highScoresArrayP] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set highScores [[my jget highScoresArrayP] get $index]
            if {[expr {[$highScores getTotal] > 0}]} {
                set anyScores true
            }
        }
        return $anyScores
    }
}

namespace eval ::HighScoresHelper {
}


