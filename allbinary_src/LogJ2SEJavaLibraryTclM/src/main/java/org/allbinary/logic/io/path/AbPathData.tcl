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
# package org.allbinary.logic.io.path

oo::class create ::AbPathData {
    superclass ::JObject
}

oo::define ::AbPathData {
    method initFields_AbPathData {} {
        my jset EXTENSION_SEP {}
        my jset SEPARATORCHAR 0
        my jset SEPARATOR {}
        my jset EXTENSION_SEP [[::CommonSeps::getInstance] jget PERIOD]
        my jset SEPARATORCHAR [scan "/" %c]
        my jset SEPARATOR [[::CommonSeps::getInstance] jget FORWARD_SLASH]
        return
    }
    
    

    constructor {} {
        next
        my initFields_AbPathData
    }
    

    method getExtensionIndex {filePath} {
        set indexOfFileExtensionDelmiter [jlastindexof $filePath [my jget EXTENSION_SEP]]
        set indexOfLatDelimiter [jlastindexof $filePath [my jget SEPARATORCHAR]]
        if {[expr {$indexOfFileExtensionDelmiter < 0}]} {
            return [expr {-1}]
        }
        if {[expr {$indexOfFileExtensionDelmiter < $indexOfLatDelimiter}]} {
            return [expr {-1}]
        }
        return $indexOfFileExtensionDelmiter
    }
    

    method getExtensionWithDot {filePath} {
        set indexOfFileExtensionDelmiter [my getExtensionIndex $filePath]
        set extension [[::StringUtil::getInstance] jget EMPTY_STRING]
        if {[expr {$indexOfFileExtensionDelmiter >= 0}]} {
            set extension [jsubstring $filePath $indexOfFileExtensionDelmiter]
        }
        return $extension
    }
    

    method getExtension {filePath} {
        set indexOfFileExtensionDelmiter [my getExtensionIndex $filePath]
        set extension [[::StringUtil::getInstance] jget EMPTY_STRING]
        if {[expr {$indexOfFileExtensionDelmiter >= 0}]} {
            set extension [jsubstring $filePath [jint [expr {$indexOfFileExtensionDelmiter + 1}]]]
        }
        return $extension
    }
    

    method getNameFromPath {path} {
        set endIndex [jlastindexof $path [my jget SEPARATORCHAR]]
        if {[expr {$endIndex < 0}]} {
            set endIndex [jlastindexof $path [[::FilePathData::getInstance] jget SEPARATORCHAR]]
        }
        if {[expr {$endIndex < 0}]} {
            return $path
        }
        if {[expr {[string length $path] == [jint [expr {$endIndex + 1}]]}]} {
            set categoryName [jsubstring $path 0 $endIndex]
            return [my getNameFromPath $categoryName]
        } else {
            set categoryName [jsubstring $path [jint [expr {$endIndex + 1}]]]
            return $categoryName
        }
    }
    

    method removeNameFromPath {path} {
        set endIndex [jlastindexof $path [my jget SEPARATORCHAR]]
        if {[expr {$endIndex < 0}]} {
            set endIndex [jlastindexof $path [[::FilePathData::getInstance] jget SEPARATORCHAR]]
        }
        if {[expr {$endIndex < 0}]} {
            return [[::StringUtil::getInstance] jget EMPTY_STRING]
        }
        if {[expr {[string length $path] == [jint [expr {$endIndex + 1}]]}]} {
            return [my removeNameFromPath [jsubstring $path 0 [jint [expr {$endIndex - 1}]]]]
        } else {
            set pathWithoutName [jsubstring $path 0 $endIndex]
            return $pathWithoutName
        }
    }
}

namespace eval ::AbPathData {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AbPathData new]
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
        return [::AbPathData::staticGet_instance]
    }
}


