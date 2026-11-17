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
# package org.allbinary.game.displayable.canvas

oo::class create ::NullDemoPaintable {
    superclass ::JObject
}

oo::define ::NullDemoPaintable {
    method initFields_NullDemoPaintable {} {
        return
    }

    constructor {} {
        next
        my initFields_NullDemoPaintable
    }
    

    method showGamePaintable {} {
    }
}

namespace eval ::NullDemoPaintable {
    variable NULL_DEMO_PAINTABLEValue {}
    variable NULL_DEMO_PAINTABLESet 0
    proc staticGet_NULL_DEMO_PAINTABLE {} {
        variable NULL_DEMO_PAINTABLEValue
        variable NULL_DEMO_PAINTABLESet
        if {!$NULL_DEMO_PAINTABLESet} {
            set NULL_DEMO_PAINTABLESet 1
            set NULL_DEMO_PAINTABLEValue [::NullDemoPaintable new]
        }
        return $NULL_DEMO_PAINTABLEValue
    }
    proc staticSet_NULL_DEMO_PAINTABLE {value} {
        variable NULL_DEMO_PAINTABLEValue
        variable NULL_DEMO_PAINTABLESet
        set NULL_DEMO_PAINTABLESet 1
        set NULL_DEMO_PAINTABLEValue $value
    }
}


