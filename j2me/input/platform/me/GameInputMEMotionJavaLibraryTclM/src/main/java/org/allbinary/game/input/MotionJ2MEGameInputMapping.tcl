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

oo::class create ::MotionJ2MEGameInputMapping {
    superclass ::J2MEGameInputMapping
}

oo::define ::MotionJ2MEGameInputMapping {
    method initFields_MotionJ2MEGameInputMapping {} {
        return
    }

    constructor {} {
        next
        my initFields_MotionJ2MEGameInputMapping
    }
    

    method getDefault {} {
        return [[::MotionJ2MEDefaultGameInputMapping new] getInputMapping]
    }
}

namespace eval ::MotionJ2MEGameInputMapping {
}


