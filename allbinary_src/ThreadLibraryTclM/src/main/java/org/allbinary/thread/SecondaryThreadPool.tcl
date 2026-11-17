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
# package org.allbinary.thread

#This is mainly for network communications.
oo::class create ::SecondaryThreadPool {
    superclass ::ThreadPool
}

oo::define ::SecondaryThreadPool {
    method initFields_SecondaryThreadPool {} {
        return
    }
    
    

    constructor {poolName numThreads priority} {
        next $poolName $numThreads $priority
        my initFields_SecondaryThreadPool
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

namespace eval ::SecondaryThreadPool {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::SecondaryThreadPool new "Secondary" 1 [::ThreadPool::staticGet_NORMAL_PRIORITY]]
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
        return [::SecondaryThreadPool::staticGet_instance]
    }
}


