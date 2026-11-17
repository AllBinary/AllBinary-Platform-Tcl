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
# package org.allbinary.logic.math

oo::class create ::PrimitiveIntUtil {
    superclass ::JObject
}

oo::define ::PrimitiveIntUtil {
    method initFields_PrimitiveIntUtil {} {
        return
    }
    

    constructor {} {
        next
        my initFields_PrimitiveIntUtil
    }
    
    
}

namespace eval ::PrimitiveIntUtil {
    proc getArrayInstance {} {
        return [[::NullUtil::getInstance] jget NULL_INT_ARRAY]
    }
    proc getTwoDimensionalArrayInstance {} {
        return [[::NullUtil::getInstance] jget NULL_INT_ARRAY_ARRAY]
    }
}


