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
# package org.allbinary.game.input

oo::class create ::NoPlayerGameInput {
    superclass ::PlayerGameInput
}

oo::define ::NoPlayerGameInput {
    method initFields_NoPlayerGameInput {} {
        return
    }
    
    

    constructor {} {
        next [::BasicArrayListD new] [::BasicArrayListD new] [expr {-1}]
        my initFields_NoPlayerGameInput
    }
    

    method onDownGameKeyEvent {gameKeyEvent} {
    }
    

    method onUpGameKeyEvent {gameKeyEvent} {
    }
}

namespace eval ::NoPlayerGameInput {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::NoPlayerGameInput new]
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
        return [::NoPlayerGameInput::staticGet_SINGLETON]
    }
}


