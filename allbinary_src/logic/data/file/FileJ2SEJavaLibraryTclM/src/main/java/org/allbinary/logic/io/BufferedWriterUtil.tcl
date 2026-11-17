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

oo::class create ::BufferedWriterUtil {
    superclass ::JObject
}

oo::define ::BufferedWriterUtil {
    method initFields_BufferedWriterUtil {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset commonLabels {}
        my jset REMOVING_OLD {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset commonLabels [::CommonLabels::getInstance]
        my jset REMOVING_OLD "Remove old for overwriting: "
        return
    }

    constructor {} {
        next
        my initFields_BufferedWriterUtil
    }
    
    

    method overwrite {path data} {
        set abFile [::AbFile::createAbFile $path]
        if {[$abFile exists]} {
            [my jget logUtil] putF [string cat [my jget REMOVING_OLD] $path] [self] [[my jget commonStrings] jget CREATE]
            $abFile delete
        } else {
            set name [[::AbPathData::getInstance] removeNameFromPath $path]
            set abFileDirectory [::AbFile::createAbFile $name]
            if {[$abFileDirectory exists]} {
            } else {
                set stringBuilder [::StringMaker new]
                [my jget logUtil] putF [[[[$stringBuilder append [[my jget commonStrings] jget CREATE]] append [[my jget commonLabels] jget COLON_SEP]] append $name] toString] [self] [[my jget commonStrings] jget CREATE]
                set result [$abFileDirectory mkdirs]
                $stringBuilder delete 0 [$stringBuilder length]
                [my jget logUtil] putF [[[$stringBuilder append [[my jget commonLabels] jget RESULT_]] appendboolean $result] toString] [self] [[my jget commonStrings] jget CREATE]
            }
        }
        my write $abFile $data
    }
    

    method overwrite {abFile data} {
        if {[$abFile exists]} {
            [my jget logUtil] putF [string cat [my jget REMOVING_OLD] [jstr [$abFile getPath]]] [self] [[my jget commonStrings] jget CREATE]
            $abFile delete
        } else {
            set name [[::AbPathData::getInstance] removeNameFromPath [$abFile getAbsolutePath]]
            set abFileDirectory [::AbFile::createAbFile $name]
            if {[$abFileDirectory exists]} {
            } else {
                set stringBuilder [::StringMaker new]
                [my jget logUtil] putF [[[[$stringBuilder append [[my jget commonStrings] jget CREATE]] append [[my jget commonLabels] jget COLON_SEP]] append $name] toString] [self] [[my jget commonStrings] jget CREATE]
                set result [$abFileDirectory mkdirs]
                $stringBuilder delete 0 [$stringBuilder length]
                [my jget logUtil] putF [[[$stringBuilder append [[my jget commonLabels] jget RESULT_]] appendboolean $result] toString] [self] [[my jget commonStrings] jget CREATE]
            }
        }
        my write $abFile $data
    }
    

    method write {abFile data} {
        set fileOut [::BufferedWriter new [::FileWriter new [::AbFileNativeUtil::get $abFile]]]
        $fileOut write $data 0 [string length $data]
        $fileOut newLine
        $fileOut flush
    }
}

namespace eval ::BufferedWriterUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BufferedWriterUtil new]
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
        return [::BufferedWriterUtil::staticGet_instance]
    }
}


