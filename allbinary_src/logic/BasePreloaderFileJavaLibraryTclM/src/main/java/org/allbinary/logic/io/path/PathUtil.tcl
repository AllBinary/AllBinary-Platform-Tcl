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

#Used to correct user input for paths
oo::class create ::PathUtil {
    superclass ::JObject
}

oo::define ::PathUtil {
    method initFields_PathUtil {} {
        my jset abPathData {}
        my jset filePathData {}
        my jset abPathData [::AbPathData::getInstance]
        my jset filePathData [::FilePathData::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_PathUtil
    }
    

    method getExtensionWithAbFilePath {abFilePath} {
        return [[my jget abPathData] getExtension [$abFilePath toString]]
    }
    

    method getExtensionWithAbPath {abPath} {
        return [[my jget abPathData] getExtension [$abPath toString]]
    }
    

    method getWithoutExtensionWithAbFilePath {abFilePath} {
        return [my getWithoutExtension [$abFilePath toString]]
    }
    

    method getWithoutExtensionWithAbPath {abPath} {
        return [my getWithoutExtension [$abPath toString]]
    }
    

    method getWithoutExtension {filePath} {
        set indexOfFileExtensionDelmiter [[my jget abPathData] getExtensionIndex $filePath]
        set pathWithoutExtension $filePath
        if {[expr {$indexOfFileExtensionDelmiter >= 0}]} {
            set pathWithoutExtension [jsubstring $filePath 0 $indexOfFileExtensionDelmiter]
        }
        return $pathWithoutExtension
    }
    

    method isValid {path} {
        if {[my isValidStart $path]} {
            if {[my isValidEnd $path]} {
                return true
            }
        }
        return false
    }
    

    method isValidStart {path} {
        if {[expr {[expr {[scan [string index $path 0] %c] == [[my jget abPathData] jget SEPARATORCHAR]}] || [expr {[scan [string index $path 0] %c] == [scan "." %c]}]}]} {
            return true
        } else {
            return false
        }
    }
    

    method isValidEnd {path} {
        set stringValidationUtil [::StringValidationUtil::getInstance]
        if {[$stringValidationUtil isEmpty $path]} {
            return false
        }
        if {[expr {[scan [string index $path [jint [expr {[string length $path] - 1}]]] %c] == [[my jget abPathData] jget SEPARATORCHAR]}]} {
            return true
        } else {
            return false
        }
    }
    

    method adjustStart {path} {
        if {[expr {![my isValidStart $path]}]} {
            set path [string cat [jstr [[my jget abPathData] jget SEPARATOR]] $path]
        }
        return $path
    }
    

    method adjustEnd {path} {
        if {[expr {![my isValidEnd $path]}]} {
            set path [string cat $path [jstr [[my jget abPathData] jget SEPARATOR]]]
        }
        return $path
    }
    

    method adjust {path} {
        set stringValidationUtil [::StringValidationUtil::getInstance]
        if {[$stringValidationUtil isEmpty $path]} {
            return [[my jget abPathData] jget SEPARATOR]
        }
        if {[expr {[string first "\\" $path] >= 0}]} {
            set path [jreplace $path [scan "\\" %c] [[my jget abPathData] jget SEPARATORCHAR]]
        }
        return $path
    }
    

    method removeNameFromPath {path} {
        set endIndex [jlastindexof $path [[my jget abPathData] jget SEPARATOR]]
        if {[expr {$endIndex < 0}]} {
            set endIndex [jlastindexof $path [[my jget filePathData] jget SEPARATORCHAR]]
        }
        if {[expr {$endIndex < 0}]} {
            return [::AbPath::createAbPath]
        }
        if {[expr {[string length $path] == [jint [expr {$endIndex + 1}]]}]} {
            return [my removeNameFromPath [jsubstring $path 0 [jint [expr {$endIndex - 1}]]]]
        } else {
            set pathWithoutName [jsubstring $path 0 $endIndex]
            return [::AbPath new $pathWithoutName [[::StringUtil::getInstance] jget EMPTY_STRING]]
        }
    }
}

namespace eval ::PathUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PathUtil new]
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
        return [::PathUtil::staticGet_instance]
    }
}


