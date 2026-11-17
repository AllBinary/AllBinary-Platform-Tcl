# Generated Code Do Not Modify
# package org.allbinary.thread

oo::class create ::ThreadObjectUtil {
    superclass ::JObject
}

oo::define ::ThreadObjectUtil {
    method initFields_ThreadObjectUtil {} {
        my jset NULL_PRIORITY_RUNNABLE {}
        my jset NULL_PRIORITY_RUNNABLE [::NullPriorityRunnable new]
        return
    }

    constructor {} {
        next
        my initFields_ThreadObjectUtil
    }
    
    

    method notifyObject {anyType} {
        $anyType notify
    }
    

    method waitObject {anyType} {
        $anyType wait
    }
    

    method waitObjectFor {anyType delay} {
        [::TsUtil::getInstance] waitFor $anyType $delay
    }
    

    method processThread {runnable} {
        set thread [::Thread new $runnable]
        $thread start
    }
}

namespace eval ::ThreadObjectUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ThreadObjectUtil new]
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
        return [::ThreadObjectUtil::staticGet_instance]
    }
}


