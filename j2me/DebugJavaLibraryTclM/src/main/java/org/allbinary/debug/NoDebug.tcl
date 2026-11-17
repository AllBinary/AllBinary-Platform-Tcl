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
# package org.allbinary.debug

oo::class create ::NoDebug {
    superclass ::JObject
}

oo::define ::NoDebug {
    method initFields_NoDebug {} {
        return
    }

    constructor {} {
        next
        my initFields_NoDebug
    }
    
    

    method start {} {
    }
    

    method stop {} {
    }
    

    method getMaxTime {} {
        return 10000
    }
    

    method getStartTime {} {
        return 0
    }
    

    method isRunning {} {
        return false
    }
}

namespace eval ::NoDebug {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::NoDebug new]
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
        return [::NoDebug::staticGet_SINGLETON]
    }
}


