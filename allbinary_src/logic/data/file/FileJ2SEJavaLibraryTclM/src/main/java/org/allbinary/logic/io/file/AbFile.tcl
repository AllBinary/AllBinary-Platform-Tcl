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

oo::class create ::AbFile {
    superclass ::JObject
}

oo::define ::AbFile {
    method initFields_AbFile {} {
        my jset file {}
        
        return
    }
    
    
    
    
    
    

    constructor {file} {
        next
        my initFields_AbFile
        my jset file $file
    }
    

    method getFile {} {
        return [my jget file]
    }
    

    method getName {} {
        return [[my jget file] getName]
    }
    

    method getParent {} {
        return [[my jget file] getParent]
    }
    

    method getParentFile {} {
        return [[my jget file] getParentFile]
    }
    

    method getPath {} {
        return [[my jget file] getPath]
    }
    

    method isAbsolute {} {
        return [[my jget file] isAbsolute]
    }
    

    method getAbsolutePath {} {
        return [[my jget file] getAbsolutePath]
    }
    

    method getAbsoluteFile {} {
        return [[my jget file] getAbsoluteFile]
    }
    

    method getCanonicalPath {} {
        return [[my jget file] getCanonicalPath]
    }
    

    method getCanonicalFile {} {
        return [[my jget file] getCanonicalFile]
    }
    

    method toURI {} {
        return [[my jget file] toURI]
    }
    

    method canRead {} {
        return [[my jget file] canRead]
    }
    

    method canWrite {} {
        return [[my jget file] canWrite]
    }
    

    method exists {} {
        return [[my jget file] exists]
    }
    

    method isDirectory {} {
        return [[my jget file] isDirectory]
    }
    

    method isFile {} {
        return [[my jget file] isFile]
    }
    

    method isHidden {} {
        return [[my jget file] isHidden]
    }
    

    method lastModified {} {
        return [[my jget file] lastModified]
    }
    

    method length {} {
        return [[my jget file] length]
    }
    

    method createNewFile {} {
        return [[my jget file] createNewFile]
    }
    

    method delete {} {
        return [[my jget file] delete]
    }
    

    method deleteOnExit {} {
        [my jget file] deleteOnExit
    }
    

    method list {} {
        return [[my jget file] list]
    }
    

    method listWithFilter {filter} {
        return [[my jget file] list $filter]
    }
    

    method listFiles {} {
        return [[my jget file] listFiles]
    }
    

    method listFilesFileNameFilter {filter} {
        return [[my jget file] listFiles $filter]
    }
    

    method listFilesFileFilter {filter} {
        return [[my jget file] listFiles $filter]
    }
    

    method mkdir {} {
        return [[my jget file] mkdir]
    }
    

    method mkdirs {} {
        return [[my jget file] mkdirs]
    }
    

    method renameTo {dest} {
        return [[my jget file] renameTo [$dest getFile]]
    }
    

    method setLastModified {time} {
        return [[my jget file] setLastModified $time]
    }
    

    method setReadOnly {} {
        return [[my jget file] setReadOnly]
    }
    

    method setWritable {writable ownerOnly} {
        return [[my jget file] setExecutable $writable $ownerOnly]
    }
    

    method setWritable {writable} {
        return [[my jget file] setWritable $writable]
    }
    

    method setReadable {readable ownerOnly} {
        return [[my jget file] setReadable $readable $ownerOnly]
    }
    

    method setReadable {readable} {
        return [[my jget file] setReadable $readable]
    }
    

    method setExecutable {executable ownerOnly} {
        return [[my jget file] setExecutable $executable $ownerOnly]
    }
    

    method setExecutable {executable} {
        return [[my jget file] setExecutable $executable]
    }
    

    method canExecute {} {
        return [[my jget file] canExecute]
    }
    

    method getTotalSpace {} {
        return [[my jget file] getTotalSpace]
    }
    

    method getFreeSpace {} {
        return [[my jget file] getFreeSpace]
    }
    

    method getUsableSpace {} {
        return [[my jget file] getUsableSpace]
    }
    

    method compareTo {pathname} {
        return [[my jget file] compareTo $pathname]
    }
    

    method equals {obj} {
        return [[::TsUtil::getInstance] equalsNotstring [my jget file] $obj]
    }
    

    method hashCode {} {
        return [[my jget file] hashCode]
    }
    

    method toString {} {
        return [[my jget file] toString]
    }
}

namespace eval ::AbFile {
    variable NULL_FILEValue {}
    variable NULL_FILESet 0
    proc staticGet_NULL_FILE {} {
        variable NULL_FILEValue
        variable NULL_FILESet
        if {!$NULL_FILESet} {
            set NULL_FILESet 1
            set NULL_FILEValue [::AbFile::createAbFileFromRawPath [[::StringUtil::getInstance] jget EMPTY_STRING]]
        }
        return $NULL_FILEValue
    }
    proc staticSet_NULL_FILE {value} {
        variable NULL_FILEValue
        variable NULL_FILESet
        set NULL_FILESet 1
        set NULL_FILEValue $value
    }
    proc createAbFileWithChild {file childPathName} {
        return [::AbFile new [::File new [$file getFile] $childPathName]]
    }
    proc createAbFile {filePath} {
        return [::AbFile new [::File new [[::AbPath new $filePath [[::StringUtil::getInstance] jget EMPTY_STRING]] toFileSystemString]]]
    }
    proc createAbFilePathAndName {filePath fileName} {
        return [::AbFile new [::File new [[::AbPath new $filePath [[::StringUtil::getInstance] jget EMPTY_STRING]] toFileSystemString] $fileName]]
    }
    proc createAbFileFromAbPath {abPath} {
        return [::AbFile new [::File new [$abPath toFileSystemString]]]
    }
    proc createAbFileFromRawPath {filePath} {
        return [::AbFile new [::File new $filePath]]
    }
}


