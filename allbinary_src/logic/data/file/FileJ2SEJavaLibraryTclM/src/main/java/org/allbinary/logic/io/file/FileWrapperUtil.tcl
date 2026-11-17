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

oo::class create ::FileWrapperUtil {
    superclass ::JObject
}

oo::define ::FileWrapperUtil {
    method initFields_FileWrapperUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_FileWrapperUtil
    }
    
    
}

namespace eval ::FileWrapperUtil {
    proc wrapFiles {files} {
        try {
            set abFileArray [jarray [$files length] {}]
            for {set index [jint [expr {[$files length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
                $abFileArray set $index [::AbFile new [$files get $index]]
            }
            return $abFileArray
        } on error {e} {
            ::PreLogUtil::putSE "Exception Wrapping Files" "FileWrapperUtil" "wrapFiles" $e
            return [jarray 0 {}]
        }
    }
    proc wrapFile {file} {
        try {
            return [::AbFile new $file]
        } on error {e} {
            ::PreLogUtil::putSE "Exception Wrapping File" "FileWrapperUtil" "wrapFile" $e
            return [::AbFile::staticGet_NULL_FILE]
        }
    }
}


