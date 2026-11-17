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
# package org.allbinary.ag.game.vector

oo::class create ::HealthVectorData {
    superclass ::JObject
}

oo::define ::HealthVectorData {
    method initFields_HealthVectorData {} {
        return
    }

    constructor {} {
        next
        my initFields_HealthVectorData
    }
}

namespace eval ::HealthVectorData {
    variable pointsValue {}
    variable pointsSet 0
    proc staticGet_points {} {
        variable pointsValue
        variable pointsSet
        if {!$pointsSet} {
            set pointsSet 1
            set pointsValue [jarrayfrom [list [jarrayfrom [list [jarrayfrom [list 2 1]] [jarrayfrom [list 3 2]] [jarrayfrom [list 3 2]] [jarrayfrom [list 4 1]] [jarrayfrom [list 4 1]] [jarrayfrom [list 5 1]] [jarrayfrom [list 5 1]] [jarrayfrom [list 6 2]] [jarrayfrom [list 6 2]] [jarrayfrom [list 6 3]] [jarrayfrom [list 6 3]] [jarrayfrom [list 3 6]] [jarrayfrom [list 3 6]] [jarrayfrom [list 0 3]] [jarrayfrom [list 0 3]] [jarrayfrom [list 0 2]] [jarrayfrom [list 0 2]] [jarrayfrom [list 1 1]] [jarrayfrom [list 1 1]] [jarrayfrom [list 2 1]] [jarrayfrom [list 1000 1000]]]]]]
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


