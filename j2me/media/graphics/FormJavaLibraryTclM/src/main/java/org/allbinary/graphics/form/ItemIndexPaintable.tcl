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

oo::class create ::ItemIndexPaintable {
    superclass ::JObject
}

oo::define ::ItemIndexPaintable {
    method initFields_ItemIndexPaintable {} {
        return
    }

    constructor {} {
        next
        my initFields_ItemIndexPaintable
    }
    
    

    method paint {graphics index item dx dy} {
        return 0
    }
}

namespace eval ::ItemIndexPaintable {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ItemIndexPaintable new]
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
        return [::ItemIndexPaintable::staticGet_instance]
    }
}


