# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.layer

oo::class create ::SWTUtil {
    superclass ::JObject
}

oo::define ::SWTUtil {
    method initFields_SWTUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_SWTUtil
    }
}

namespace eval ::SWTUtil {
    variable isSWTValue {}
    variable isSWTSet 0
    proc staticGet_isSWT {} {
        variable isSWTValue
        variable isSWTSet
        if {!$isSWTSet} {
            set isSWTSet 1
            set isSWTValue true
        }
        return $isSWTValue
    }
    proc staticSet_isSWT {value} {
        variable isSWTValue
        variable isSWTSet
        set isSWTSet 1
        set isSWTValue $value
    }
    variable SWTValue {}
    variable SWTSet 0
    proc staticGet_SWT {} {
        variable SWTValue
        variable SWTSet
        if {!$SWTSet} {
            set SWTSet 1
            set SWTValue "SWT"
        }
        return $SWTValue
    }
    proc staticSet_SWT {value} {
        variable SWTValue
        variable SWTSet
        set SWTSet 1
        set SWTValue $value
    }
}


