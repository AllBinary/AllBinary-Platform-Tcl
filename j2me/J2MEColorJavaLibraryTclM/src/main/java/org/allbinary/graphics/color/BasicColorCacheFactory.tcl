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
# package org.allbinary.graphics.color

oo::class create ::BasicColorCacheFactory {
    superclass ::JObject
}

oo::define ::BasicColorCacheFactory {
    method initFields_BasicColorCacheFactory {} {
        my jset hashtable {}
        my jset hashtable [[::StdUtil::getInstance] createHashtable]
        return
    }
    
    

    constructor {} {
        next
        my initFields_BasicColorCacheFactory
    }
    

    method add {basicDefaultColor} {
        [my jget hashtable] put [$basicDefaultColor intValue] $basicDefaultColor
    }
    

    method getAndOrCreate {integer} {
        set basicColor [[my jget hashtable] get $integer]
        if {[expr {$basicColor eq {}}]} {
            set basicColor [[::BasicColorFactory::getInstance] createInstance [$integer intValue]]
            [my jget hashtable] put $integer $basicColor
        }
        return $basicColor
    }
}

namespace eval ::BasicColorCacheFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BasicColorCacheFactory new]
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
        return [::BasicColorCacheFactory::staticGet_instance]
    }
}


