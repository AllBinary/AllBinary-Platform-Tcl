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

oo::class create ::StaticViewPosition {
    superclass ::ViewPosition
}

oo::define ::StaticViewPosition {
    method initFields_StaticViewPosition {} {
        return
    }
    

    constructor {x y z} {
        next $x $y $z
        my initFields_StaticViewPosition
    }
    

    method getX {} {
        return [my getRawX]
    }
    

    method getY {} {
        return [my getRawY]
    }
    

    method getZ {} {
        return [my getRawZ]
    }
}

namespace eval ::StaticViewPosition {
}


