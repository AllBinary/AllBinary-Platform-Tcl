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
# package org.allbinary.input

oo::class create ::NoAllBinarySensor {
    superclass ::AllBinarySensor
}

oo::define ::NoAllBinarySensor {
    method initFields_NoAllBinarySensor {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_NoAllBinarySensor
    }
}

namespace eval ::NoAllBinarySensor {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::NoAllBinarySensor new]
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
        return [::NoAllBinarySensor::staticGet_instance]
    }
}


