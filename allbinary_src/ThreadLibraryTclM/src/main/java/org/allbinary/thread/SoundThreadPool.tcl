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

oo::class create ::SoundThreadPool {
    superclass ::JObject
}

oo::define ::SoundThreadPool {
    method initFields_SoundThreadPool {} {
        return
    }

    constructor {} {
        next
        my initFields_SoundThreadPool
    }
    
}

namespace eval ::SoundThreadPool {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ThreadPool new "Sound" 1 [::ThreadPool::staticGet_NORMAL_PRIORITY]]
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
        return [::SoundThreadPool::staticGet_instance]
    }
}


