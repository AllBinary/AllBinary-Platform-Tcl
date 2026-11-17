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
# package org.allbinary.game.tracking

oo::class create ::GenericTrackingLayerCircularStaticPool {
    superclass ::AllBinaryLayerCircularPool
}

oo::define ::GenericTrackingLayerCircularStaticPool {
    method initFields_GenericTrackingLayerCircularStaticPool {} {
        return
    }
    

    constructor {} {
        next
        my initFields_GenericTrackingLayerCircularStaticPool
    }
    
}

namespace eval ::GenericTrackingLayerCircularStaticPool {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::GenericTrackingLayerCircularStaticPool new]
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
        return [::GenericTrackingLayerCircularStaticPool::staticGet_SINGLETON]
    }
}


