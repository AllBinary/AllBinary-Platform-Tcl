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

oo::class create ::NormalJ2MEGameInputMapping {
    superclass ::J2MEGameInputMapping
}

oo::define ::NormalJ2MEGameInputMapping {
    method initFields_NormalJ2MEGameInputMapping {} {
        return
    }

    constructor {} {
        next
        my initFields_NormalJ2MEGameInputMapping
    }
    

    method getDefault {} {
        return [[::NormalJ2MEDefaultGameInputMapping new] getInputMapping]
    }
}

namespace eval ::NormalJ2MEGameInputMapping {
}


