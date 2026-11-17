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

oo::class create ::Scoreable {
    superclass ::JObject
}

oo::define ::Scoreable {
    method initFields_Scoreable {} {
        my jset points 0
        
        return
    }
    

    constructor {points} {
        next
        my initFields_Scoreable
        my jset points $points
    }
    

    method addPoints {points} {
        my jset points [jint [expr {[my jget points] + $points}]]
    }
    

    method removePoints {points} {
        my jset points [jint [expr {[my jget points] - $points}]]
    }
    

    method setPoints {points} {
        my jset points $points
    }
    

    method getPoints {} {
        return [my jget points]
    }
}

namespace eval ::Scoreable {
    variable IDValue {}
    variable IDSet 0
    proc staticGet_ID {} {
        variable IDValue
        variable IDSet
        if {!$IDSet} {
            set IDSet 1
            set IDValue [[::SmallIntegerSingletonFactory::getInstance] getAt 3]
        }
        return $IDValue
    }
    proc staticSet_ID {value} {
        variable IDValue
        variable IDSet
        set IDSet 1
        set IDValue $value
    }
}


