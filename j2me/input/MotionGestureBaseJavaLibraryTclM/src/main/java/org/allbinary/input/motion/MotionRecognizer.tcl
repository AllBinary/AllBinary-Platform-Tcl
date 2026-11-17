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
# package org.allbinary.input.motion

oo::class create ::MotionRecognizer {
    superclass ::JObject
}

oo::define ::MotionRecognizer {
    method initFields_MotionRecognizer {} {
        return
    }

    constructor {} {
        next
        my initFields_MotionRecognizer
    }
    

    method processStartMotionEvent {x y deviceId modifiers} {
    }
    

    method processEndMotionEvent {x y deviceId modifiers} {
    }
    

    method processDraggedMotionEvent {x y deviceId modifiers} {
    }
}

namespace eval ::MotionRecognizer {
}


