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

oo::class create ::BufferedLineReader {
    superclass ::JObject
}

oo::define ::BufferedLineReader {
    method initFields_BufferedLineReader {} {
        my jset tmpIn {}
        
        return
    }
    

    constructor {file} {
        next
        my initFields_BufferedLineReader
        my jset tmpIn [::BufferedReader new [::FileReader new [::AbFileNativeUtil::get $file]]]
    }
    

    method readUpToLines {readAheadIndex} {
    }
    

    method readLine {} {
        return [[my jget tmpIn] readLine]
    }
    

    method ready {} {
        return [[my jget tmpIn] ready]
    }
    

    method getSize {} {
        return 0
    }
    

    method getCurrent {} {
        return 0
    }
}

namespace eval ::BufferedLineReader {
}


