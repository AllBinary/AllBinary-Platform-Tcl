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

oo::class create ::PoolInterface {
    superclass ::JObject
}

oo::define ::PoolInterface {
    method initFields_PoolInterface {} {
        return
    }
    

    method remove {key} {
        error [jexception AbstractMethodError remove]
    }
}

namespace eval ::PoolInterface {
}


