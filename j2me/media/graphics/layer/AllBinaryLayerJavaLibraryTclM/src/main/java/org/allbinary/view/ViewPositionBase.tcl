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
# package org.allbinary.view

oo::class create ::ViewPositionBase {
    superclass ::GPoint
}

oo::define ::ViewPositionBase {
    method initFields_ViewPositionBase {} {
        return
    }
    

    constructor {x y z} {
        next $x $y $z
        my initFields_ViewPositionBase
    }
    

    method getX2 {} {
        return [my getX]
    }
    

    method getY2 {} {
        return [my getY]
    }
    

    method getZ2 {} {
        return [my getZ]
    }
    

    method setAllbinaryLayer {allbinaryLayer} {
    }
}

namespace eval ::ViewPositionBase {
    variable NULL_VIEW_POSITIONValue {}
    variable NULL_VIEW_POSITIONSet 0
    proc staticGet_NULL_VIEW_POSITION {} {
        variable NULL_VIEW_POSITIONValue
        variable NULL_VIEW_POSITIONSet
        if {!$NULL_VIEW_POSITIONSet} {
            set NULL_VIEW_POSITIONSet 1
            set NULL_VIEW_POSITIONValue [::ViewPositionBase new 0 0 0]
        }
        return $NULL_VIEW_POSITIONValue
    }
    proc staticSet_NULL_VIEW_POSITION {value} {
        variable NULL_VIEW_POSITIONValue
        variable NULL_VIEW_POSITIONSet
        set NULL_VIEW_POSITIONSet 1
        set NULL_VIEW_POSITIONValue $value
    }
}


