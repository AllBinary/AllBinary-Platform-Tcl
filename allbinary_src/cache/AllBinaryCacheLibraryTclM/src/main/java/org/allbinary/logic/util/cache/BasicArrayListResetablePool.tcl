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

oo::class create ::BasicArrayListResetablePool {
    superclass ::AbstractArrayListPool
}

oo::define ::BasicArrayListResetablePool {
    method initFields_BasicArrayListResetablePool {} {
        return
    }
    

    constructor {cacheableInterfaceFactoryInterface} {
        next $cacheableInterfaceFactoryInterface
        my initFields_BasicArrayListResetablePool
    }
    

    method clear {} {
    }
    

    method remove {key} {
        set size [[my jget buffers] size]
        if {[expr {$size > 0}]} {
            return [[my jget buffers] removeAt [jint [expr {$size - 1}]]]
        } else {
            return [[my jget cacheableInterfaceFactoryInterface] getInstance $key]
        }
    }
}

namespace eval ::BasicArrayListResetablePool {
}


