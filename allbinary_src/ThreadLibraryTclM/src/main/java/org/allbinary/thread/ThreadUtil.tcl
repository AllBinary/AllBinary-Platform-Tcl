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

oo::class create ::ThreadUtil {
    superclass ::JObject
}

oo::define ::ThreadUtil {
    method initFields_ThreadUtil {} {
        my jset logUtil {}
        my jset JOIN {}
        my jset logUtil [::LogUtil::getInstance]
        my jset JOIN "join"
        return
    }

    constructor {} {
        next
        my initFields_ThreadUtil
    }
    
    

    method isRunning {thread} {
        if {[expr {[expr {$thread ne {}}] && [$thread isAlive]}]} {
            return true
        } else {
            return false
        }
    }
    

    method join {thread} {
        if {[[::ThreadUtil::getInstance] isRunning $thread]} {
            [my jget logUtil] putF "Waiting for Thread To Join/End" [self] [my jget JOIN]
            $thread join
        }
    }
}

namespace eval ::ThreadUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ThreadUtil new]
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
        return [::ThreadUtil::staticGet_instance]
    }
}


