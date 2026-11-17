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
# package org.allbinary.input.motion.button

oo::class create ::TouchButtonFactory {
    superclass ::JObject
}

oo::define ::TouchButtonFactory {
    method initFields_TouchButtonFactory {} {
        my jset LIST {}
        my jset list {}
        my jset savedList {}
        my jset saved false
        my jset LIST [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        my jset list [my jget LIST]
        my jset savedList [my jget LIST]
        my jset saved false
        return
    }
    
    

    constructor {} {
        next
        my initFields_TouchButtonFactory
    }
    

    method defaultList {} {
        my jset list [my jget LIST]
        my toggle false [my jget LIST]
    }
    

    method toggle {save list} {
        if {[expr {$list ne [[::BasicArrayListUtil::getInstance] getImmutableInstance]}]} {
            my jset savedList $list
            if {[expr {![my jget saved]}]} {
                my jset list [my jget savedList]
            }
        } else {
            if {$save} {
                if {[expr {![my jget saved]}]} {
                    my jset saved true
                    my jset savedList [my jget list]
                    my jset list [my jget LIST]
                } else {
                }
            } else {
                my jset list [my jget savedList]
                my jset saved false
            }
        }
    }
    

    method setList {list} {
        if {[expr {$list eq {}}]} {
            error [jexception Exception "Null List"]
        }
        my jset list $list
    }
    

    method getList {} {
        return [my jget list]
    }
}

namespace eval ::TouchButtonFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::TouchButtonFactory new]
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
        return [::TouchButtonFactory::staticGet_SINGLETON]
    }
}


