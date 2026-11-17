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
# package org.allbinary.game.ag.vector

oo::class create ::MineVectorData {
    superclass ::JObject
}

oo::define ::MineVectorData {
    method initFields_MineVectorData {} {
        return
    }
    

    constructor {} {
        next
        my initFields_MineVectorData
    }
}

namespace eval ::MineVectorData {
    variable pointsValue {}
    variable pointsSet 0
    proc staticGet_points {} {
        variable pointsValue
        variable pointsSet
        if {!$pointsSet} {
            set pointsSet 1
            set pointsValue [jarrayfrom [list [jarrayfrom [list [jarrayfrom [list 10 5]] [jarrayfrom [list 2 6]] [jarrayfrom [list 1000 1000]] [jarrayfrom [list 2 2]] [jarrayfrom [list 10 9]] [jarrayfrom [list 1000 1000]] [jarrayfrom [list 10 2]] [jarrayfrom [list 2 9]] [jarrayfrom [list 1000 1000]] [jarrayfrom [list 2 5]] [jarrayfrom [list 10 6]] [jarrayfrom [list 1000 1000]] [jarrayfrom [list 7 9]] [jarrayfrom [list 5 2]] [jarrayfrom [list 1000 1000]] [jarrayfrom [list 7 2]] [jarrayfrom [list 5 9]] [jarrayfrom [list 1000 1000]]]]]]
        }
        return $pointsValue
    }
    proc staticSet_points {value} {
        variable pointsValue
        variable pointsSet
        set pointsSet 1
        set pointsValue $value
    }
}


