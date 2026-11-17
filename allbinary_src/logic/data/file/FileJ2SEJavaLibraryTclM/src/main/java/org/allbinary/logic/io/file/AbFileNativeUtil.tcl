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
# package org.allbinary.logic.io.file

oo::class create ::AbFileNativeUtil {
    superclass ::JObject
}

oo::define ::AbFileNativeUtil {
    method initFields_AbFileNativeUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_AbFileNativeUtil
    }
    
}

namespace eval ::AbFileNativeUtil {
    proc get {file} {
        return [$file getFile]
    }
}


