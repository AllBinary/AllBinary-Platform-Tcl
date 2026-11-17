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
# package org.allbinary.graphics.form

oo::class create ::ItemPaintableFactory {
    superclass ::ItemPaintable
}

oo::define ::ItemPaintableFactory {
    method initFields_ItemPaintableFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_ItemPaintableFactory
    }
    
    

    method getInstanceItemPaintable {paintableForm} {
        return [::ItemPaintableFactory::staticGet_instance]
    }
}

namespace eval ::ItemPaintableFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ItemPaintableFactory new]
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
        return [::ItemPaintableFactory::staticGet_instance]
    }
}


