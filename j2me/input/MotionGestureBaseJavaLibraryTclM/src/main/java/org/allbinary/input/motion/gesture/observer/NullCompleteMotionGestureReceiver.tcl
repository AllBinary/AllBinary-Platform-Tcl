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
# package org.allbinary.input.motion.gesture.observer

oo::class create ::NullCompleteMotionGestureReceiver {
    superclass ::JObject
}

oo::define ::NullCompleteMotionGestureReceiver {
    method initFields_NullCompleteMotionGestureReceiver {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_NullCompleteMotionGestureReceiver
        set commonStrings [::CommonStrings::getInstance]
        [my jget logUtil] putF "Null Gesture Reciever" [self] [$commonStrings jget CONSTRUCTOR]
    }
    

    method onMotionGestureCompleted {list} {
    }
}

namespace eval ::NullCompleteMotionGestureReceiver {
}


