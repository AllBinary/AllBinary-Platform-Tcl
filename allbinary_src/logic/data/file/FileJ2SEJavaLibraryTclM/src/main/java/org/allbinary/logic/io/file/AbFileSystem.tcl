# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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

#FileJ2SE should be the same as J2SEForJ2ME
oo::class create ::AbFileSystem {
    superclass ::JObject
}

oo::define ::AbFileSystem {
    method initFields_AbFileSystem {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_AbFileSystem
    }
    
    

    method isDirectoryOrFile {path} {
        set file [::File new $path]
        return [expr {[$file isDirectory] || [$file isFile]}]
    }
    

    method isDirectory {path} {
        return [[::File new $path] isDirectory]
    }
    

    method getFilesAsStringArrayForPath {currentDirPath} {
        set file [::File new $currentDirPath]
        if {[$file exists]} {
            return [$file list]
        } else {
            return [[::StringUtil::getInstance] getArrayInstance]
        }
    }
    

    method readAsString {fileName} {
        set bytes [jarray 1000000 0]
        return [my readAsString $fileName $bytes]
    }
    

    method readAsString {fileName bytes} {
        set closeable [[::NullUtil::getInstance] jget NULL_OBJECT]
        try {
            set idFile [::FileInputStream new $fileName]
            set closeable $idFile
            set size [$idFile read $bytes]
            if {[expr {$size > 0}]} {
                return [jfromchars $bytes 0 $size]
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "readAsString" $e
        } finally {
            my close $closeable
        }
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method close {closeable} {
        try {
            if {[expr {$closeable ne {}}]} {
                set inputStream ($closeable)
                $inputStream close
            }
            return true
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget CLOSE] $e
            return false
        }
    }
}

namespace eval ::AbFileSystem {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AbFileSystem new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::AbFileSystem::staticGet_instance]
    }
}


