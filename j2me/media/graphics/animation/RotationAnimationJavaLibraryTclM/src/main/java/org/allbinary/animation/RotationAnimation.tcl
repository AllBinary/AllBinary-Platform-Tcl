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
# package org.allbinary.animation

oo::class create ::RotationAnimation {
    superclass ::IndexedAnimation
}

oo::define ::RotationAnimation {
    method initFields_RotationAnimation {} {
        my jset frameUtil {}
        my jset directionUtil {}
        my jset angleInfo {}
        my jset circularIndexUtil {}
        my jset frameUtil [::FrameUtil::getInstance]
        my jset directionUtil [::DirectionUtil::getInstance]
        
        
        return
    }
    

    constructor {angleInfo circularIndexUtil animationBehavior} {
        next $animationBehavior
        my initFields_RotationAnimation
        my jset angleInfo $angleInfo
        my jset circularIndexUtil $circularIndexUtil
    }
    

    method nextRotationX {} {
    }
    

    method previousRotationX {} {
    }
    

    method nextRotation {} {
        [my jget angleInfo] adjustAngle [[my jget circularIndexUtil] next]
    }
    

    method previousRotation {} {
        [my jget angleInfo] adjustAngle [[my jget circularIndexUtil] previous]
    }
    

    method nextRotationZ {} {
    }
    

    method previousRotationZ {} {
    }
    

    method setFrame {index} {
        [my jget circularIndexUtil] setIndex $index
        set newFrame [[my jget circularIndexUtil] getIndex]
        [my jget angleInfo] adjustAngle $newFrame
    }
    

    method setFrameByDirection {direction} {
        set angle [[my jget directionUtil] getFrameAngle $direction]
        my adjustFrameToAngle $angle
    }
    

    method setFrameToAngle {angle} {
        my adjustFrameToAngle $angle
    }
    

    method adjustFrameToAngle {angle} {
        my adjustFrame [$angle getValue]
    }
    

    method adjustFrame {angle} {
        my setFrame [[my jget frameUtil] getFrameForAngle $angle [jint [[[my jget angleInfo] getAngleIncrementInfo] getAngleIncrement]]]
    }
    

    method getFrame {} {
        return [[my jget circularIndexUtil] getIndex]
    }
    

    method getSize {} {
        return [[my jget circularIndexUtil] getSize]
    }
    

    method getAngleInfoP {} {
        return [my jget angleInfo]
    }
    

    method toString {} {
        return [[[[[[[::StringMaker new] append [next]] append "circularIndexUtil: "] append [[my jget circularIndexUtil] toString]] append "angleInfo: "] append [[my jget angleInfo] toString]] toString]
    }
}

namespace eval ::RotationAnimation {
}


