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

oo::class create ::MusicThreadPool {
    superclass ::ThreadPool
}

oo::define ::MusicThreadPool {
    method initFields_MusicThreadPool {} {
        return
    }
    
    

    constructor {poolName numThreads priority} {
        next $poolName $numThreads $priority
        my initFields_MusicThreadPool
    }
    

    method runTask {task} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[::StringUtil::getInstance] toString1 $task]] appendlong [clock milliseconds]] toString] [self] [[my jget threadPoolStrings] jget ADD_TASK]
        next $task
    }
    

    method startTask {task} {
        [my jget logUtil] putF [[[[[::StringMaker new] append [[my jget threadPoolStrings] jget START_TASK]] append [[::StringUtil::getInstance] toString1 $task]] appendlong [clock milliseconds]] toString] [self] [[my jget commonStrings] jget RUN]
    }
    

    method completedTask {task} {
        [my jget logUtil] putF [[[[[::StringMaker new] append [[my jget threadPoolStrings] jget COMPLETE_TASK]] append [[::StringUtil::getInstance] toString1 $task]] appendlong [clock milliseconds]] toString] [self] [[my jget commonStrings] jget RUN]
    }
}

namespace eval ::MusicThreadPool {
    variable THREAD_POOLValue {}
    variable THREAD_POOLSet 0
    proc staticGet_THREAD_POOL {} {
        variable THREAD_POOLValue
        variable THREAD_POOLSet
        if {!$THREAD_POOLSet} {
            set THREAD_POOLSet 1
            set THREAD_POOLValue [::ThreadPool new "Music" 2 [::ThreadPool::staticGet_NORMAL_PRIORITY]]
        }
        return $THREAD_POOLValue
    }
    proc staticSet_THREAD_POOL {value} {
        variable THREAD_POOLValue
        variable THREAD_POOLSet
        set THREAD_POOLSet 1
        set THREAD_POOLValue $value
    }
    proc getInstance {} {
        return [::MusicThreadPool::staticGet_THREAD_POOL]
    }
}


