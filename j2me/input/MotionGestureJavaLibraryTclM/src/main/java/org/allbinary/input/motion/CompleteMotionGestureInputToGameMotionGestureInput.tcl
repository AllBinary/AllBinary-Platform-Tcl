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

oo::class create ::CompleteMotionGestureInputToGameMotionGestureInput {
    superclass ::JObject
}

oo::define ::CompleteMotionGestureInputToGameMotionGestureInput {
    method initFields_CompleteMotionGestureInputToGameMotionGestureInput {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_CompleteMotionGestureInputToGameMotionGestureInput
    }
    
    

    method init {} {
        set commonStrings [::CommonStrings::getInstance]
        try {
            ::PreLogUtil::put "Compound Motion Gestures" [self] [$commonStrings jget INIT]
            set motionGestureConfiguration [::MotionGestureConfigurationFactory::getInstance]
            set touchMotionGestureFactory [::TouchMotionGestureFactory::getInstance]
            set list [::BasicArrayListD new]
            $list add [$touchMotionGestureFactory jget DIAGONAL_DOWN_LEFT]
            $motionGestureConfiguration addMotionGestureAction $list [::DiagonalDownLeftTouchInputToGameKeyEventAction::getInstance]
            set list [::BasicArrayListD new]
            $list add [$touchMotionGestureFactory jget DIAGONAL_DOWN_RIGHT]
            $motionGestureConfiguration addMotionGestureAction $list [::DiagonalDownRightTouchInputToGameKeyEventAction::getInstance]
            set list [::BasicArrayListD new]
            $list add [$touchMotionGestureFactory jget DIAGONAL_UP_LEFT]
            $motionGestureConfiguration addMotionGestureAction $list [::DiagonalUpLeftTouchInputToGameKeyEventAction::getInstance]
            set list [::BasicArrayListD new]
            $list add [$touchMotionGestureFactory jget DIAGONAL_UP_RIGHT]
            $motionGestureConfiguration addMotionGestureAction $list [::DiagonalUpRightTouchInputToGameKeyEventAction::getInstance]
            set list [::BasicArrayListD new]
            $list add [$touchMotionGestureFactory jget LEFT]
            $motionGestureConfiguration addMotionGestureAction $list [::LeftTouchInputToGameKeyEventAction::getInstance]
            set list [::BasicArrayListD new]
            $list add [$touchMotionGestureFactory jget RIGHT]
            $motionGestureConfiguration addMotionGestureAction $list [::RightTouchInputToGameKeyEventAction::getInstance]
            set list [::BasicArrayListD new]
            $list add [$touchMotionGestureFactory jget DOWN]
            $motionGestureConfiguration addMotionGestureAction $list [::DownTouchInputToGameKeyEventAction::getInstance]
            set list [::BasicArrayListD new]
            $list add [$touchMotionGestureFactory jget UP]
            $motionGestureConfiguration addMotionGestureAction $list [::UpTouchInputToGameKeyEventAction::getInstance]
            set list [::BasicArrayListD new]
            $list add [$touchMotionGestureFactory jget RELEASED]
            $motionGestureConfiguration addMotionGestureAction $list [::ReleaseTouchInputToGameKeyEventAction::getInstance]
        } on error {e} {
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget INIT] $e
        }
    }
}

namespace eval ::CompleteMotionGestureInputToGameMotionGestureInput {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CompleteMotionGestureInputToGameMotionGestureInput new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::CompleteMotionGestureInputToGameMotionGestureInput::staticGet_instance]
    }
}


