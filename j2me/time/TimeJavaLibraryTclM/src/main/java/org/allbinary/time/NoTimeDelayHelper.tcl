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
# package org.allbinary.time

oo::class create ::NoTimeDelayHelper {
    superclass ::TimeDelayHelper
}

oo::define ::NoTimeDelayHelper {
    method initFields_NoTimeDelayHelper {} {
        return
    }
    

    constructor {} {
        next 0
        my initFields_NoTimeDelayHelper
    }
    

    method isTimeTNT {} {
        return true
    }
    

    method isTimeSinceTNT {delay} {
        return true
    }
    

    method isTime {currentTime} {
        return true
    }
    

    method isTimeSince {delay currentTime} {
        return true
    }
}

namespace eval ::NoTimeDelayHelper {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::NoTimeDelayHelper new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
}


