# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

oo::class create ::CacheTypeFactory {
    superclass ::JObject
}

oo::define ::CacheTypeFactory {
    method initFields_CacheTypeFactory {} {
        my jset NO_CACHE {}
        my jset CACHE {}
        my jset SET {}
        my jset CACHE_VECTOR {}
        my jset NO_CACHE [::CacheType new [[::StringUtil::getInstance] jget EMPTY_STRING] [[::StringUtil::getInstance] jget EMPTY_STRING]]
        my jset CACHE [::CacheType new [[::StringUtil::getInstance] jget EMPTY_STRING] [[::StringUtil::getInstance] jget EMPTY_STRING]]
        my jset SET [::CacheType new [[::StringUtil::getInstance] jget EMPTY_STRING] "Set"]
        my jset CACHE_VECTOR [::CacheType new [[::StringUtil::getInstance] jget EMPTY_STRING] [[::StringUtil::getInstance] jget EMPTY_STRING]]
        return
    }

    constructor {} {
        next
        my initFields_CacheTypeFactory
    }
    
}

namespace eval ::CacheTypeFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CacheTypeFactory new]
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
        return [::CacheTypeFactory::staticGet_instance]
    }
}


