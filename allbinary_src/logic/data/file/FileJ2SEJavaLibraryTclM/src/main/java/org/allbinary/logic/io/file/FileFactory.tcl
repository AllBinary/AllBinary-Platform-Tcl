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

oo::class create ::FileFactory {
    superclass ::JObject
}

oo::define ::FileFactory {
    method initFields_FileFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_FileFactory
    }
    
    

    method getInstance {filePath} {
        return [::AbFile::createAbFileFromRawPath $filePath]
    }
    

    method getInstance {file childFilePath} {
        return [::AbFile::createAbFileWithChild $file $childFilePath]
    }
    

    method isFile {path} {
        set file [::AbFile::createAbFile $path]
        if {[$file exists]} {
            return true
        } else {
            return false
        }
    }
}

namespace eval ::FileFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::FileFactory new]
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
        return [::FileFactory::staticGet_instance]
    }
}


