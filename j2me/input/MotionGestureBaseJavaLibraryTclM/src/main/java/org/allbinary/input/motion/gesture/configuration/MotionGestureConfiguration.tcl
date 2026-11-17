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
# package org.allbinary.input.motion.gesture.configuration

oo::class create ::MotionGestureConfiguration {
    superclass ::JObject
}

oo::define ::MotionGestureConfiguration {
    method initFields_MotionGestureConfiguration {} {
        my jset diagonalMotionGestureAllowed false
        my jset diagonalTolerance 0
        my jset minimumMotionGesture 0
        my jset button {}
        my jset color {}
        my jset executingActions false
        my jset mouseButtonMask 0
        my jset activeCommands {}
        my jset diagonalMotionGestureAllowed true
        my jset diagonalTolerance 7
        my jset minimumMotionGesture 9
        my jset button [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset color [[::BasicColorFactory::getInstance] jget BLUE]
        my jset executingActions true
        my jset mouseButtonMask 0
        my jset activeCommands [::BasicArrayListD new]
        return
    }
    

    constructor {} {
        next
        my initFields_MotionGestureConfiguration
    }
    

    method addMotionGestureAction {list commandAction} {
        [my jget activeCommands] add [::MotionGestureToMotionGestureActionAssociation new $list $commandAction]
    }
    

    method clearMotionGestureAction {} {
        [my jget activeCommands] clear
    }
    

    method getAssociateCommandActionsList {} {
        return [my jget activeCommands]
    }
    

    method isDiagonalMotionGestureAllowed {} {
        return [my jget diagonalMotionGestureAllowed]
    }
    

    method isExecutingActionsAllowed {} {
        return [my jget executingActions]
    }
    

    method setExecutingActionsAllowed {executingActionAllowed} {
        my jset executingActions $executingActionAllowed
    }
    

    method setDiagonalMotionGestureAllowed {diagonalMotionGestureAllowed} {
        my jset diagonalMotionGestureAllowed $diagonalMotionGestureAllowed
    }
    

    method getDiagonalTolerance {} {
        return [my jget diagonalTolerance]
    }
    

    method setDiagonalTolerance {diagonalTolerance} {
        my jset diagonalTolerance $diagonalTolerance
    }
    

    method getMinimumMotionGesture {} {
        return [my jget minimumMotionGesture]
    }
    

    method setMinimumMotionGesture {minimumMotionGesture} {
        my jset minimumMotionGesture $minimumMotionGesture
    }
    

    method getButton {} {
        return [my jget button]
    }
    

    method setButton {button} {
        my jset button $button
    }
    

    method getColor {} {
        return [my jget color]
    }
    

    method setColor {color} {
        my jset color $color
    }
    

    method getMouseButtonMask {} {
        return [my jget mouseButtonMask]
    }
    

    method setMouseButtonMask {mouseButtonMask} {
        my jset mouseButtonMask $mouseButtonMask
    }
}

namespace eval ::MotionGestureConfiguration {
}


