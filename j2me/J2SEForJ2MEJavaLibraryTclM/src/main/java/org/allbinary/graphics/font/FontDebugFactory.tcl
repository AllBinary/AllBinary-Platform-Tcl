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
# package org.allbinary.graphics.font

oo::class create ::FontDebugFactory {
    superclass ::JObject
}

oo::define ::FontDebugFactory {
    method initFields_FontDebugFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_FontDebugFactory
    }
    
    

    method setFont {font graphics} {
        $graphics setFont $font
    }
}

namespace eval ::FontDebugFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::FontDebugFactory new]
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
        return [::FontDebugFactory::staticGet_instance]
    }
}


