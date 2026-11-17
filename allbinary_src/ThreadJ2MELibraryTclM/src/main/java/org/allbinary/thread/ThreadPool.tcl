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

oo::class create ::ThreadPool {
    superclass ::JObject
}

oo::define ::ThreadPool {
    method initFields_ThreadPool {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset NULL_RUNNABLE {}
        my jset threadPoolStrings {}
        my jset threadObjectUtil {}
        my jset poolName {}
        my jset priority 0
        my jset isAlive false
        my jset taskQueue {}
        my jset threadID 0
        my jset numThreads 0
        my jset runningTask false
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset NULL_RUNNABLE [::NullRunnable::getInstance]
        my jset threadPoolStrings [::ThreadPoolStrings::getInstance]
        my jset threadObjectUtil [::ThreadObjectUtil::getInstance]
        
        
        my jset isAlive false
        my jset taskQueue [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        my jset threadID 0
        
        my jset runningTask false
        return
    }
    

    constructor {poolName numThreads priority} {
        next
        my initFields_ThreadPool
        my jset poolName $poolName
        my jset priority $priority
        my jset numThreads $numThreads
    }
    

    method init {} {
        if {[expr {![my jget isAlive]}]} {
            my jset isAlive true
            my jset taskQueue [::BasicArrayListD new]
            set pooledThread {}
            for {set i 0} {[expr {$i < [my jget numThreads]}]} {jpostincr i 1} {
                set pooledThread [::PooledThread new [self]]
                $pooledThread setPriority [my jget priority]
                $pooledThread start
            }
        }
    }
    

    method runAPriorityTask {} {
        error [jexception RuntimeException {}]
    }
    

    method runTaskWithPriority {task} {
        if {1} {
            if {[expr {![my jget isAlive]}]} {
                my init
            }
            if {[expr {$task ne {}}]} {
                set size [[my jget taskQueue] size]
                set runnable {}
                set lowerPriorityRunnable [[my jget threadObjectUtil] jget NULL_PRIORITY_RUNNABLE]
                for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                    set runnable [[my jget taskQueue] get $index]
                    if {[expr {[$runnable getPriority] > [$task getPriority]}]} {
                        set lowerPriorityRunnable $runnable
                        break
                    }
                }
                if {[expr {$lowerPriorityRunnable eq [[my jget threadObjectUtil] jget NULL_PRIORITY_RUNNABLE]}]} {
                    [my jget taskQueue] add $task
                } else {
                    set index [[my jget taskQueue] indexOf $lowerPriorityRunnable]
                    [my jget taskQueue] addAt $index $task
                }
                my notify
            }
        }
    }
    

    method runTask {task} {
        if {1} {
            if {[expr {![my jget isAlive]}]} {
                my init
            }
            if {[expr {$task ne {}}]} {
                [my jget taskQueue] add $task
                my notify
            }
        }
    }
    

    method getTask {} {
        if {1} {
            while {[expr {[[my jget taskQueue] size] == 0}]} {
                if {[expr {![my jget isAlive]}]} {
                    return [my jget NULL_RUNNABLE]
                }
                my wait
            }
            set runnable [[my jget taskQueue] removeAt 0]
            return $runnable
        }
    }
    

    method clear {} {
        if {1} {
            if {[my jget isAlive]} {
                [my jget taskQueue] clear
            }
        }
    }
    

    method close {} {
        if {1} {
            if {[my jget isAlive]} {
                my jset isAlive false
                [my jget taskQueue] clear
            }
        }
    }
    

    method join {} {
        if {1} {
            my jset isAlive false
            [my jget taskQueue] clear
            my notifyAll
        }
    }
    

    method isBusy {} {
        if {[expr {![my jget isAlive]}]} {
            return false
        }
        if {[expr {[[my jget taskQueue] size] > 0}]} {
            return true
        }
        if {[my jget runningTask]} {
            return true
        }
        return false
    }
    

    method threadStarted {} {
    }
    

    method threadStopped {} {
        if {[expr {[my jget numThreads] == 1}]} {
            my jset isAlive false
            [my jget taskQueue] clear
        }
    }
    

    method startTask {task} {
    }
    

    method completedTask {task} {
    }
    

    method createName {} {
        return [[[[[::StringMaker new] append [my jget poolName]] append [::ThreadPool::staticGet_ROOT_NAME]] appendint [my jpostinc threadID 1]] toString]
    }
}

namespace eval ::ThreadPool {
    variable ROOT_NAMEValue {}
    variable ROOT_NAMESet 0
    proc staticGet_ROOT_NAME {} {
        variable ROOT_NAMEValue
        variable ROOT_NAMESet
        if {!$ROOT_NAMESet} {
            set ROOT_NAMESet 1
            set ROOT_NAMEValue "-PooledThread-"
        }
        return $ROOT_NAMEValue
    }
    proc staticSet_ROOT_NAME {value} {
        variable ROOT_NAMEValue
        variable ROOT_NAMESet
        set ROOT_NAMESet 1
        set ROOT_NAMEValue $value
    }
    variable NORMAL_PRIORITYValue {}
    variable NORMAL_PRIORITYSet 0
    proc staticGet_NORMAL_PRIORITY {} {
        variable NORMAL_PRIORITYValue
        variable NORMAL_PRIORITYSet
        if {!$NORMAL_PRIORITYSet} {
            set NORMAL_PRIORITYSet 1
            set NORMAL_PRIORITYValue [::Thread::staticGet_NORM_PRIORITY]
        }
        return $NORMAL_PRIORITYValue
    }
    proc staticSet_NORMAL_PRIORITY {value} {
        variable NORMAL_PRIORITYValue
        variable NORMAL_PRIORITYSet
        set NORMAL_PRIORITYSet 1
        set NORMAL_PRIORITYValue $value
    }
}


