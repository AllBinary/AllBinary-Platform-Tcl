# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic

oo::class create ::ABSystemWrapper {
    superclass ::JObject
}

oo::define ::ABSystemWrapper {
    method initFields_ABSystemWrapper {} {
        return
    }

    constructor {} {
        next
        my initFields_ABSystemWrapper
    }
    
    

    method arraycopy {src srcPos dest destPos length} {
        jarraycopy $src $srcPos $dest $destPos $length
    }
    

    method currentTimeMillis {} {
        return [clock milliseconds]
    }
}

namespace eval ::ABSystemWrapper {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ABSystemWrapper new]
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
        return [::ABSystemWrapper::staticGet_instance]
    }
}


