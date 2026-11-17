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
# package org.allbinary.system

#ActualPlatform
oo::class create ::Memory {
    superclass ::JObject
}

oo::define ::Memory {
    method initFields_Memory {} {
        return
    }

    constructor {} {
        next
        my initFields_Memory
    }
    
}

namespace eval ::Memory {
    proc getInfo {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Memory: Free: "
        $stringBuffer appendlong [[::Runtime::getRuntime] freeMemory]
        $stringBuffer append " Total: "
        $stringBuffer appendlong [[::Runtime::getRuntime] totalMemory]
        return [$stringBuffer toString]
    }
}


