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
# package org.allbinary.image

oo::class create ::ImageTypeUtil {
    superclass ::JObject
}

oo::define ::ImageTypeUtil {
    method initFields_ImageTypeUtil {} {
        my jset PNG {}
        my jset JPG {}
        my jset GIF {}
        my jset list {}
        my jset PNG "png"
        my jset JPG "jpg"
        my jset GIF "gif"
        my jset list [::BasicArrayListD new]
        return
    }
    

    constructor {} {
        next
        my initFields_ImageTypeUtil
        [my jget list] add [my jget JPG]
        [my jget list] add [my jget GIF]
        [my jget list] add [my jget PNG]
    }
    

    method isSupported {mediaFileType} {
        set mediaFileType [string tolower $mediaFileType]
        for {set index [jint [expr {[[my jget list] size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set name [[my jget list] get $index]
            if {[expr {[jcompareto $mediaFileType $name] == 0}]} {
                return true
            }
        }
        return false
    }
    
}

namespace eval ::ImageTypeUtil {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::ImageTypeUtil new]
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
        return [::ImageTypeUtil::staticGet_SINGLETON]
    }
}


