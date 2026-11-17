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

oo::class create ::FilePathData {
    superclass ::JObject
}

oo::define ::FilePathData {
    method initFields_FilePathData {} {
        my jset SEPARATORCHAR 0
        my jset PATH_START {}
        my jset SEPARATORCHAR [::File::staticGet_separatorChar]
        my jset PATH_START [::File::staticGet_separator]
        return
    }
    
    

    constructor {} {
        next
        my initFields_FilePathData
        if {[expr {[::File::staticGet_separatorChar] == [scan "\\" %c]}]} {
            my jset PATH_START [string cat [::File::staticGet_separator] [::File::staticGet_separator]]
        }
    }
}

namespace eval ::FilePathData {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::FilePathData new]
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
        return [::FilePathData::staticGet_instance]
    }
}


