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

oo::class create ::TestInputExample {
    superclass ::JObject
}

oo::define ::TestInputExample {
    method initFields_TestInputExample {} {
        my jset testValue 0
        my jset testValue 0
        return
    }

    constructor {} {
        next
        my initFields_TestInputExample
    }
    

    method up {} {
    }
    

    method down {} {
    }
    

    method left {} {
        my jpostinc testValue 1
    }
    

    method right {} {
        my jpostinc testValue -1
    }
    

    method strafeLeft {} {
    }
    

    method strafeRight {} {
    }
    

    method paint {graphics} {
    }
    

    method paintThreed {graphics} {
    }
}

namespace eval ::TestInputExample {
}


