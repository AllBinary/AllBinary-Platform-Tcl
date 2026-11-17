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
# package org.allbinary.string

oo::class create ::CommonStrings {
    superclass ::JObject
}

oo::define ::CommonStrings {
    method initFields_CommonStrings {} {
        my jset EMPTY {}
        my jset CREATE_IMAGE {}
        my jset PLEASE_WAIT {}
        my jset PLEASE_WAIT_FOR_SERVER {}
        my jset PERIODS {}
        my jset LOADING {}
        my jset CONSTRUCTOR {}
        my jset START {}
        my jset END {}
        my jset EXCEPTION {}
        my jset EXCEPTION_LABEL {}
        my jset CLEANUP {}
        my jset INIT {}
        my jset CLOSE {}
        my jset UP {}
        my jset DOWN {}
        my jset LEFT {}
        my jset RIGHT {}
        my jset DIRECTION_NAME {}
        my jset CREATE {}
        my jset REMOVE {}
        my jset UPDATE {}
        my jset DELETE {}
        my jset delete {}
        my jset LOAD {}
        my jset SAVE {}
        my jset ADD {}
        my jset DROP {}
        my jset INSERT {}
        my jset VISIT {}
        my jset START_METHOD_NAME {}
        my jset END_METHOD_NAME {}
        my jset GET {}
        my jset PROCESS {}
        my jset GET_INSTANCE {}
        my jset GET_LIST {}
        my jset RUN {}
        my jset START_RUNNABLE {}
        my jset RUNNING {}
        my jset END_RUNNABLE {}
        my jset DISABLE {}
        my jset ENABLE {}
        my jset SUCCESS {}
        my jset FAILURE {}
        my jset NOT_IMPLEMENTED {}
        my jset UNKNOWN {}
        my jset ON_EVENT {}
        my jset IS_VALID {}
        my jset TOSTRING {}
        my jset ADD_LISTENER {}
        my jset REMOVE_LISTENER {}
        my jset SIZE {}
        my jset EMPTY "Empty"
        my jset CREATE_IMAGE "createImage"
        my jset PLEASE_WAIT "Please Wait"
        my jset PLEASE_WAIT_FOR_SERVER "Please Wait Getting Data From Server..."
        my jset PERIODS "..."
        my jset LOADING "Loading..."
        my jset CONSTRUCTOR "Constructor"
        my jset START "Start"
        my jset END "End"
        my jset EXCEPTION "Exception"
        my jset EXCEPTION_LABEL "Exception: "
        my jset CLEANUP "cleanup"
        my jset INIT "init"
        my jset CLOSE "close"
        my jset UP "up"
        my jset DOWN "down"
        my jset LEFT "left"
        my jset RIGHT "right"
        my jset DIRECTION_NAME [jarrayfrom [list [my jget DOWN] [my jget LEFT] [my jget RIGHT] [my jget UP]]]
        my jset CREATE "Create"
        my jset REMOVE "Remove"
        my jset UPDATE "Update"
        my jset DELETE "Delete"
        my jset delete "delete"
        my jset LOAD "load"
        my jset SAVE "save"
        my jset ADD "Add"
        my jset DROP "Drop"
        my jset INSERT "Insert"
        my jset VISIT "visit"
        my jset START_METHOD_NAME [my jget START]
        my jset END_METHOD_NAME "end"
        my jset GET "get"
        my jset PROCESS "process"
        my jset GET_INSTANCE "getInstance"
        my jset GET_LIST "getList"
        my jset RUN "run"
        my jset START_RUNNABLE "Start Runnable"
        my jset RUNNING "Running"
        my jset END_RUNNABLE "End Runnable"
        my jset DISABLE "disable"
        my jset ENABLE "enable"
        my jset SUCCESS "Command Success"
        my jset FAILURE "Command Failed"
        my jset NOT_IMPLEMENTED "Not Implemented"
        my jset UNKNOWN "Unknown"
        my jset ON_EVENT "onEvent"
        my jset IS_VALID "isValid"
        my jset TOSTRING "toString"
        my jset ADD_LISTENER "addListener"
        my jset REMOVE_LISTENER "removeListener"
        my jset SIZE "size"
        return
    }

    constructor {} {
        next
        my initFields_CommonStrings
    }
    
}

namespace eval ::CommonStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CommonStrings new]
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
        return [::CommonStrings::staticGet_instance]
    }
}


