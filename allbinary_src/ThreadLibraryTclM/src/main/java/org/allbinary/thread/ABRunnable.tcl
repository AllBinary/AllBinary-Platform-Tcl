# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.thread

oo::class create ::ABRunnable {
    superclass ::JObject
}

oo::define ::ABRunnable {
    method initFields_ABRunnable {} {
        my jset running false
        my jset running false
        return
    }

    constructor {} {
        next
        my initFields_ABRunnable
    }
    

    method setThread {thread} {
    }
    

    method isRunning {} {
        return [my jget running]
    }
    

    method setRunning {running} {
        my jset running $running
    }
    

    method run {} {
    }
    

    method getType {} {
        return [expr {-1}]
    }
}

namespace eval ::ABRunnable {
}


