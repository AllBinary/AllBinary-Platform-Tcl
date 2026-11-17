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
# package org.allbinary.graphics.form

oo::class create ::ItemIndexDx {
    superclass ::JObject
}

oo::define ::ItemIndexDx {
    method initFields_ItemIndexDx {} {
        return
    }

    constructor {} {
        next
        my initFields_ItemIndexDx
    }
    
    

    method getDx {index item dx dy} {
        return 0
    }
}

namespace eval ::ItemIndexDx {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ItemIndexDx new]
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
        return [::ItemIndexDx::staticGet_instance]
    }
}


