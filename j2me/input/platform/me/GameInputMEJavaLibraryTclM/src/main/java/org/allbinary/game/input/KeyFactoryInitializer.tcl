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
# package org.allbinary.game.input

oo::class create ::KeyFactoryInitializer {
    superclass ::Init
}

oo::define ::KeyFactoryInitializer {
    method initFields_KeyFactoryInitializer {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_KeyFactoryInitializer
    }
    

    method init {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget INIT]
    }
}

namespace eval ::KeyFactoryInitializer {
}


