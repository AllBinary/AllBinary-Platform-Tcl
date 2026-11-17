# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

oo::class create ::PooledThread {
    superclass ::Thread
}

oo::define ::PooledThread {
    method initFields_PooledThread {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset threadObjectUtil {}
        my jset threadPool {}
        my jset INTERRUPT_EXCEPTION {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset threadObjectUtil [::ThreadObjectUtil::getInstance]
        
        my jset INTERRUPT_EXCEPTION "Exit InterruptedException"
        return
    }
    

    constructor {threadPool} {
        next [$threadPool createName]
        my initFields_PooledThread
        [my jget logUtil] putF [[my jget commonStrings] jget CONSTRUCTOR] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        my jset threadPool $threadPool
    }
    

    method run {} {
        [my jget threadPool] threadStarted
        while {true} {
            set task2 [[my jget threadObjectUtil] jget NULL_PRIORITY_RUNNABLE]
            try {
                set task2 [[my jget threadPool] getTask]
                [my jget threadPool] jset runningTask true
                [my jget threadPool] startTask $task2
            } on error {ex} {
                set logUtil [::LogUtil::getInstance]
                $logUtil putF [my jget INTERRUPT_EXCEPTION] [self] [[my jget commonStrings] jget RUN]
                break
            }
            if {[expr {$task2 eq [[my jget threadObjectUtil] jget NULL_PRIORITY_RUNNABLE]}]} {
                break
            }
            try {
                $task2 run
                [my jget threadPool] completedTask $task2
                [my jget threadPool] jset runningTask false
            } on error {e} {
                set logUtil [::LogUtil::getInstance]
                $logUtil put [[[[::StringMaker new] append [[my jget commonStrings] jget EXCEPTION_LABEL]] append [[::StringUtil::getInstance] toString1 $task2]] toString] [self] [[my jget commonStrings] jget RUN] $e
            }
        }
        [my jget threadPool] threadStopped
    }
}

namespace eval ::PooledThread {
}


