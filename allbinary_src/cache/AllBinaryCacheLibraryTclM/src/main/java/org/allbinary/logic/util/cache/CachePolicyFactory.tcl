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
# package org.allbinary.logic.util.cache

oo::class create ::CachePolicyFactory {
    superclass ::JObject
}

oo::define ::CachePolicyFactory {
    method initFields_CachePolicyFactory {} {
        my jset NAME {}
        my jset MAX_TIME_THOUSAND_MAX {}
        my jset THIRTY_MINUTES_TEN_THOUSAND_MAX {}
        my jset THIRTY_MINUTES_FIFTY_THOUSAND_MAX {}
        my jset ONE_MINUTE_FIVE_MAX {}
        my jset ONE_MINUTE_TEN_MAX {}
        my jset ONE_MINUTE_ONE_HUNDRED_MAX {}
        my jset NAME "lru"
        my jset MAX_TIME_THOUSAND_MAX [::CachePolicy new [my jget NAME] [::Long::staticGet_MAX_VALUE] 1000]
        my jset THIRTY_MINUTES_TEN_THOUSAND_MAX [::CachePolicy new [my jget NAME] [jint [expr {[jint [expr {1000 * 60}]] * 30}]] 10000]
        my jset THIRTY_MINUTES_FIFTY_THOUSAND_MAX [::CachePolicy new [my jget NAME] [jint [expr {[jint [expr {1000 * 60}]] * 30}]] 100000]
        my jset ONE_MINUTE_FIVE_MAX [::CachePolicy new [my jget NAME] [jint [expr {[jint [expr {1000 * 60}]] * 1}]] 5]
        my jset ONE_MINUTE_TEN_MAX [::CachePolicy new [my jget NAME] [jint [expr {[jint [expr {1000 * 60}]] * 1}]] 10]
        my jset ONE_MINUTE_ONE_HUNDRED_MAX [::CachePolicy new [my jget NAME] [jint [expr {[jint [expr {1000 * 60}]] * 1}]] 100]
        return
    }

    constructor {} {
        next
        my initFields_CachePolicyFactory
    }
    
}

namespace eval ::CachePolicyFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CachePolicyFactory new]
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
        return [::CachePolicyFactory::staticGet_instance]
    }
}


