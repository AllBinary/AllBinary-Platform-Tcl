# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic.math

oo::class create ::J2SEMath {
    superclass ::JObject
}

oo::define ::J2SEMath {
    method initFields_J2SEMath {} {
        return
    }

    constructor {} {
        next
        my initFields_J2SEMath
    }
    
    

    method round {value} {
        return [jint [jd2i $value]]
    }
    

    method abs {value} {
        return [expr {([expr {$value < 0.0}]) ? [expr {-$value}] : $value}]
    }
    

    method absdouble {value} {
        return [expr {([expr {$value < 0.0}]) ? [expr {-$value}] : $value}]
    }
}

namespace eval ::J2SEMath {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::J2SEMath new]
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
        return [::J2SEMath::staticGet_instance]
    }
}


