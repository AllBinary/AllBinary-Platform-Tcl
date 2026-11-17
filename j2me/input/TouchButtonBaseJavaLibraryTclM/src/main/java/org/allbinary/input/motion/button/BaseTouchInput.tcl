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
# package org.allbinary.input.motion.button

oo::class create ::BaseTouchInput {
    superclass ::JObject
}

oo::define ::BaseTouchInput {
    method initFields_BaseTouchInput {} {
        my jset commonStrings {}
        my jset basicArrayListUtil {}
        my jset commonStrings [::CommonStrings::getInstance]
        my jset basicArrayListUtil [::BasicArrayListUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_BaseTouchInput
    }
    

    method getList {} {
        return [[my jget basicArrayListUtil] getImmutableInstance]
    }
    

    method toString {} {
        return [jclassname [self]]
    }
}

namespace eval ::BaseTouchInput {
}


