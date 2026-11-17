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

#Used to correct user input for paths
oo::class create ::FilePathUtil {
    superclass ::JObject
}

oo::define ::FilePathUtil {
    method initFields_FilePathUtil {} {
        return
    }
    

    constructor {} {
        next
        my initFields_FilePathUtil
    }
    
}

namespace eval ::FilePathUtil {
    proc adjust {path} {
        set abPathData [::AbPathData::getInstance]
        set stringValidationUtil [::StringValidationUtil::getInstance]
        set filePathData [::FilePathData::getInstance]
        if {[$stringValidationUtil isEmpty $path]} {
            return [$filePathData jget PATH_START]
        }
        set path [jreplace $path [$abPathData jget SEPARATORCHAR] [$filePathData jget SEPARATORCHAR]]
        return $path
    }
}


