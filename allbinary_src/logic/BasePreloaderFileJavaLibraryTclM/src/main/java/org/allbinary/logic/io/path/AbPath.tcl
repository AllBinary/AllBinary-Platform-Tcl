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

oo::class create ::AbPath {
    superclass ::JObject
}

oo::define ::AbPath {
    method initFields_AbPath {} {
        my jset commonSeps {}
        my jset abPathData {}
        my jset abPathUtil {}
        my jset EMPTY_STRING {}
        my jset schema {}
        my jset path {}
        my jset nameP {}
        my jset hasSchemaP false
        my jset numberOfSeps 0
        my jset commonSeps [::CommonSeps::getInstance]
        my jset abPathData [::AbPathData::getInstance]
        my jset abPathUtil [::PathUtil::getInstance]
        my jset EMPTY_STRING [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset schema [my jget EMPTY_STRING]
        my jset path [my jget EMPTY_STRING]
        my jset nameP [my jget EMPTY_STRING]
        my jset hasSchemaP false
        my jset numberOfSeps 0
        return
    }
    
    

    constructor {aPath name} {
        next
        my initFields_AbPath
        set stringValidationUtil [::StringValidationUtil::getInstance]
        if {[expr {![$stringValidationUtil isEmpty $aPath]}]} {
            my jset schema [my getSchema $aPath]
            my jset nameP $name
            my jset path [[my jget abPathUtil] adjustEnd [[my jget abPathUtil] adjust [my getPathFromPath $aPath]]]
        } else {
            my init
            if {[expr {![$stringValidationUtil isEmpty $name]}]} {
                my jset nameP $name
            }
        }
    }
    

    method init {} {
        my jset schema [my jget EMPTY_STRING]
        my setPath [[my jget abPathData] jget SEPARATOR]
        my jset nameP [my jget EMPTY_STRING]
    }
    

    method getSchema {aPath} {
        set beginIndex [string first [[my jget commonSeps] jget COLON] $aPath]
        if {[expr {$beginIndex >= 0}]} {
            my jset hasSchemaP true
            return [jsubstring $aPath 0 $beginIndex]
        }
        my jset hasSchemaP false
        return [my jget EMPTY_STRING]
    }
    

    method hasSchema {} {
        return [my jget hasSchemaP]
    }
    

    method getPathFromPath {aPath} {
        set filePathData [::FilePathData::getInstance]
        set tempPath $aPath
        if {[expr {![my hasSchema]}]} {
            set tempPath [[my jget abPathUtil] adjustStart $tempPath]
        } else {
            set beginIndex [string first [[my jget commonSeps] jget COLON] $tempPath]
            if {[expr {$beginIndex >= 0}]} {
                jpostincr beginIndex 1
                while {[expr {[expr {[scan [string index $tempPath $beginIndex] %c] == [[my jget abPathData] jget SEPARATORCHAR]}] || [expr {[scan [string index $tempPath $beginIndex] %c] == [$filePathData jget SEPARATORCHAR]}]}]} {
                    jpostincr beginIndex 1
                    my jpostinc numberOfSeps 1
                    if {[expr {[my jget numberOfSeps] > 2}]} {
                        error [jexception Exception "Should Not Have More Than Two Seps"]
                    }
                }
                set tempPath [jsubstring $tempPath $beginIndex [string length $tempPath]]
            }
        }
        return $tempPath
    }
    

    method setName {name} {
        my jset nameP $name
    }
    

    method getName {} {
        return [my jget nameP]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        if {[my hasSchema]} {
            $stringBuffer append [my jget schema]
            $stringBuffer append [::AbPath::staticGet_NETWORK_SEP]
        }
        $stringBuffer append [my getPath]
        $stringBuffer append [my jget nameP]
        return [$stringBuffer toString]
    }
    

    method toFileSystemString {} {
        if {[my hasSchema]} {
            set filePathData [::FilePathData::getInstance]
            set stringBuffer [::StringMaker new]
            $stringBuffer append [my jget schema]
            $stringBuffer append [[my jget commonSeps] jget COLON]
            $stringBuffer append [$filePathData jget PATH_START]
            $stringBuffer append [::FilePathUtil::adjust [my getPath]]
            $stringBuffer append [my jget nameP]
            return [$stringBuffer toString]
        } else {
            return [string cat [jstr [::FilePathUtil::adjust [my getPath]]] [my jget nameP]]
        }
    }
    

    method getPath {} {
        return [my jget path]
    }
    

    method setPath {path} {
        my jset path $path
    }
}

namespace eval ::AbPath {
    variable NETWORK_SEPValue {}
    variable NETWORK_SEPSet 0
    proc staticGet_NETWORK_SEP {} {
        variable NETWORK_SEPValue
        variable NETWORK_SEPSet
        if {!$NETWORK_SEPSet} {
            set NETWORK_SEPSet 1
            set NETWORK_SEPValue ":/"
        }
        return $NETWORK_SEPValue
    }
    proc staticSet_NETWORK_SEP {value} {
        variable NETWORK_SEPValue
        variable NETWORK_SEPSet
        set NETWORK_SEPSet 1
        set NETWORK_SEPValue $value
    }
    proc createAbPath {} {
        try {
            set EMPTY_STRING [[::StringUtil::getInstance] jget EMPTY_STRING]
            return [::AbPath new $EMPTY_STRING $EMPTY_STRING]
        } on error {ex} {
            error [jexception RuntimeException {}]
        }
    }
}


