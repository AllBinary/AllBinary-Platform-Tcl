# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

oo::class create ::PoolTypeFactory {
    superclass ::JObject
}

oo::define ::PoolTypeFactory {
    method initFields_PoolTypeFactory {} {
        my jset VECTOR_POOL {}
        my jset VECTOR_POOL [::PoolType new [[::CacheTypeFactory::getInstance] jget NO_CACHE]]
        return
    }

    constructor {} {
        next
        my initFields_PoolTypeFactory
    }
    
}

namespace eval ::PoolTypeFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PoolTypeFactory new]
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
        return [::PoolTypeFactory::staticGet_instance]
    }
}


