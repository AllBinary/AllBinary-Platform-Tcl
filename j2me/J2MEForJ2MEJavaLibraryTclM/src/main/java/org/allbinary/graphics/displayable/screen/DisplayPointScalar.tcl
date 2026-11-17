# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.graphics.displayable.screen

oo::class create ::DisplayPointScalar {
    superclass ::JObject
}

oo::define ::DisplayPointScalar {
    method initFields_DisplayPointScalar {} {
        return
    }

    constructor {} {
        next
        my initFields_DisplayPointScalar
    }
    
    

    method processX {value} {
        return $value
    }
    

    method processY {value} {
        return $value
    }
    

    method process {point} {
        return $point
    }
}

namespace eval ::DisplayPointScalar {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::DisplayPointScalar new]
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
        return [::DisplayPointScalar::staticGet_instance]
    }
}


