# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.util

oo::class create ::BasicArrayListS {
    superclass ::BasicArrayList
}

oo::define ::BasicArrayListS {
    method initFields_BasicArrayListS {} {
        return
    }
    

    constructor {size} {
        next [[::NullUtil::getInstance] jget NULL_OBJECT_ARRAY]
        my initFields_BasicArrayListS
        if {[expr {$size < 0}]} {
            error [jexception IllegalArgumentException [[[[::StringMaker new] append "Init Size Exception: "] appendint $size] toString]]
        }
        my jset objectArray [jarray $size {}]
    }
}

namespace eval ::BasicArrayListS {
}


