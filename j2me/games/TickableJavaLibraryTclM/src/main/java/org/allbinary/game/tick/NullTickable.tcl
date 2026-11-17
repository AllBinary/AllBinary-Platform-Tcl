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
# package org.allbinary.game.tick

oo::class create ::NullTickable {
    superclass ::JObject
}

oo::define ::NullTickable {
    method initFields_NullTickable {} {
        my jset NAME {}
        my jset NAME "NulLTickable"
        return
    }

    constructor {} {
        next
        my initFields_NullTickable
    }
    
    

    method processTick {allBinaryLayerManager} {
    }
    

    method getName {} {
        return [my jget NAME]
    }
}

namespace eval ::NullTickable {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::NullTickable new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::NullTickable::staticGet_SINGLETON]
    }
}


