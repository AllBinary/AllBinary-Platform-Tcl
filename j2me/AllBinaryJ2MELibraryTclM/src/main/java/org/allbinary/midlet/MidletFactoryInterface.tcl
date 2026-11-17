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
# package org.allbinary.midlet

oo::class create ::MidletFactoryInterface {
    superclass ::JObject
}

oo::define ::MidletFactoryInterface {
    method initFields_MidletFactoryInterface {} {
        return
    }

    constructor {} {
        next
        my initFields_MidletFactoryInterface
    }
    

    method getInstance {} {
        return [::AllBinaryMidlet::getNullInstance]
    }
}

namespace eval ::MidletFactoryInterface {
}


