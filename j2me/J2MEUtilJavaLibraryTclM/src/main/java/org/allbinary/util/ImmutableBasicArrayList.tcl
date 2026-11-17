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
# package org.allbinary.util

oo::class create ::ImmutableBasicArrayList {
    superclass ::BasicArrayListS
}

oo::define ::ImmutableBasicArrayList {
    method initFields_ImmutableBasicArrayList {} {
        my jset name {}
        
        return
    }
    

    constructor {name size} {
        next $size
        my initFields_ImmutableBasicArrayList
        my jset name $name
    }
    

    method add {e} {
        ::ForcedLogUtil::log [my jget name] [self]
        return true
    }
    

    method addAt {index element} {
        ::ForcedLogUtil::log [my jget name] [self]
    }
    

    method toString {} {
        return [my jget name]
    }
}

namespace eval ::ImmutableBasicArrayList {
}


