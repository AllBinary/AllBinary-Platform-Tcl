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
# package org.allbinary.graphics

oo::class create ::PointFactory {
    superclass ::JObject
}

oo::define ::PointFactory {
    method initFields_PointFactory {} {
        my jset ZERO_ZERO {}
        my jset ZERO_ZERO [my createXYZ 0 0 0]
        return
    }
    
    

    method init {} {
    }
    

    constructor {} {
        next
        my initFields_PointFactory
    }
    

    method createXY {x y} {
        return [::GPoint new $x $y 0]
    }
    

    method createXYZ {x y z} {
        return [::GPoint new $x $y $z]
    }
}

namespace eval ::PointFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PointFactory new]
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
        return [::PointFactory::staticGet_instance]
    }
}


