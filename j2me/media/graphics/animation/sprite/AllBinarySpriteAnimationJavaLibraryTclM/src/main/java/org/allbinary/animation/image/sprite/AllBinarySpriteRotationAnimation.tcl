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
# package org.allbinary.animation.image.sprite

oo::class create ::AllBinarySpriteRotationAnimation {
    superclass ::HackRotationSpriteIndexedAnimation
}

oo::define ::AllBinarySpriteRotationAnimation {
    method initFields_AllBinarySpriteRotationAnimation {} {
        return
    }
    

    constructor {sprite image animationBehavior} {
        next $sprite $image [::AngleInfo::getInstance [jshort ([expr {[[::AngleFactory::getInstance] jget TOTAL_ANGLE] / [$sprite getRawFrameCount]}])]] $animationBehavior
        my initFields_AllBinarySpriteRotationAnimation
        [my jget angleInfo] adjustAngle [[my jget sprite] getFrame]
    }
    

    method nextRotation {} {
        [my jget sprite] nextFrame
        [my jget angleInfo] adjustAngle [[my jget sprite] getFrame]
    }
    

    method previousRotation {} {
        [my jget sprite] prevFrame
        [my jget angleInfo] adjustAngle [[my jget sprite] getFrame]
    }
    

    method setFrameByDirection {direction} {
        set angle [[my jget directionUtil] getFrameAngle $direction]
        my adjustFrameToAngle $angle
    }
    

    method setFrameToAngle {angle} {
        my adjustFrameToAngle $angle
    }
    

    method setFrame {index} {
        [my jget sprite] setFrame $index
        [my jget angleInfo] adjustAngle [my getFrame]
    }
    

    method adjustFrameToAngle {angle} {
        my adjustFrame [$angle getValue]
    }
    

    method adjustFrame {angle} {
        my setFrame [[my jget frameUtil] getFrameForAngle $angle [jint [[[my jget angleInfo] getAngleIncrementInfo] getAngleIncrement]]]
    }
}

namespace eval ::AllBinarySpriteRotationAnimation {
}


