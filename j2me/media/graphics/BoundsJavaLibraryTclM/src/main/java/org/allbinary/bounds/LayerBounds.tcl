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
# package org.allbinary.bounds

oo::class create ::LayerBounds {
    superclass ::JObject
}

oo::define ::LayerBounds {
    method initFields_LayerBounds {} {
        my jset logUtil {}
        my jset rectangle {}
        my jset logUtil [::LogUtil::getInstance]
        
        return
    }
    

    constructor {rectangle} {
        next
        my initFields_LayerBounds
        my jset rectangle $rectangle
    }
    

    method getRectangleP {} {
        return [my jget rectangle]
    }
    

    method visit {boundsVisitorInterface} {
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onBoundsChangeEvent {boundsChangeEvent} {
        my jset rectangle [$boundsChangeEvent getRectangle]
    }
}

namespace eval ::LayerBounds {
}


