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
# package org.allbinary.input.motion.button

oo::class create ::BasicTouchButtonsBuilder {
    superclass ::BaseTouchInput
}

oo::define ::BasicTouchButtonsBuilder {
    method initFields_BasicTouchButtonsBuilder {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_BasicTouchButtonsBuilder
    }
    
    

    method getList {} {
        try {
            [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget GET_LIST]
            set list [::BasicArrayListD new]
            return $list
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget GET_LIST] $e
            return [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        }
    }
}

namespace eval ::BasicTouchButtonsBuilder {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::BasicTouchButtonsBuilder new]
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
        return [::BasicTouchButtonsBuilder::staticGet_SINGLETON]
    }
}


