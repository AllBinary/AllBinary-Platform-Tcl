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

oo::class create ::VectorRotationAnimation {
    superclass ::VectorBaseRotationAnimation
}

oo::define ::VectorRotationAnimation {
    method initFields_VectorRotationAnimation {} {
        return
    }
    

    constructor {currentPoints basicColor animationBehavior} {
        next [::AngleInfo::getInstance [jshort ([expr {[[::AngleFactory::getInstance] jget TOTAL_ANGLE] / [$currentPoints length]}])]] $currentPoints $basicColor $animationBehavior
        my initFields_VectorRotationAnimation
        [my jget angleInfo] adjustAngle [my getFrame]
    }
    

    method setFrameByDirection {direction} {
        set angle [[my jget directionUtil] getFrameAngle $direction]
        my adjustFrameToAngle $angle
    }
    

    method setFrameToAngle {angle} {
        my adjustFrameToAngle $angle
    }
    

    method setFrame {index} {
        next $index
        [my jget angleInfo] adjustAngle [my getFrame]
    }
    

    method adjustFrame {newAngle} {
        my setFrame [[my jget frameUtil] getFrameForAngle $newAngle [jint [[[my jget angleInfo] getAngleIncrementInfo] getAngleIncrement]]]
    }
    

    method adjustFrameToAngle {newAngle} {
        my adjustFrame [$newAngle getValue]
    }
}

namespace eval ::VectorRotationAnimation {
}


