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

oo::class create ::FileStreamFactory {
    superclass ::JObject
}

oo::define ::FileStreamFactory {
    method initFields_FileStreamFactory {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_FileStreamFactory
    }
    

    method getFileInputStreamInstance {path fileName} {
        set FILEABPATH [::AbPath new $path $fileName]
        set file [::AbFile::createAbFileFromAbPath $FILEABPATH]
        return [::AbFileInputStream::createFromAbFile $file]
    }
    

    method getFileOutputStreamInstance {path fileName} {
        set FILEABPATH [::AbPath new $path $fileName]
        set file [::AbFile::createAbFileFromAbPath $FILEABPATH]
        if {[$file exists]} {
            $file delete
            $file createNewFile
        }
        return [::AbFileOutputStream::createFromAbFile $file]
    }
    

    method delete {path fileName} {
        set FILEABPATH [::AbPath new $path $fileName]
        set file [::AbFile::createAbFileFromAbPath $FILEABPATH]
        $file delete
    }
}

namespace eval ::FileStreamFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        if {[expr {[::FileStreamFactory::staticGet_SINGLETON] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::FileStreamFactory::staticSet_SINGLETON [::FileStreamFactory new]
        }
        return [::FileStreamFactory::staticGet_SINGLETON]
    }
}


