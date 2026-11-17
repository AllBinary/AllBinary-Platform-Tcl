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
# package org.allbinary.logic.io

oo::class create ::BufferedIOUtil {
    superclass ::JObject
}

oo::define ::BufferedIOUtil {
    method initFields_BufferedIOUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_BufferedIOUtil
    }
    
}

namespace eval ::BufferedIOUtil {
    proc copy {backupFile backupFileBak} {
        set line [[::StringUtil::getInstance] jget EMPTY_STRING]
        set tmpOut [::BufferedWriter new [::FileWriter new [::AbFileNativeUtil::get $backupFileBak]]]
        set tmpIn [::BufferedReader new [::FileReader new [::AbFileNativeUtil::get $backupFile]]]
        while {[$tmpIn ready]} {
            set line [$tmpIn readLine]
            $tmpOut write $line 0 [string length $line]
            $tmpOut newLine
        }
        $tmpOut flush
    }
}


