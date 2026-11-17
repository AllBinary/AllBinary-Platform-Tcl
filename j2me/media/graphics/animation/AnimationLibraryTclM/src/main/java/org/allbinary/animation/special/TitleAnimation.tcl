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
# package org.allbinary.animation.special

oo::class create ::TitleAnimation {
    superclass ::SpecialAnimation
}

oo::define ::TitleAnimation {
    method initFields_TitleAnimation {} {
        my jset systemWrapper {}
        my jset deltaX 0.0
        my jset deltaY 0.0
        my jset deltaZ 0.0
        my jset basicColorArray {}
        my jset dxArray {}
        my jset dyArray {}
        my jset widthP 0
        my jset animationInterfaceArray {}
        my jset sizeP 0
        my jset y 0
        my jset lastFrameStartTime 0
        my jset displayInfoSingleton {}
        my jset CLEAR_COLOR {}
        my jset systemWrapper [::ABSystemWrapper::getInstance]
        my jset deltaX 0.0
        my jset deltaY 0.0
        my jset deltaZ 0.0
        
        
        
        
        
        
        
        
        my jset displayInfoSingleton [::DisplayInfoSingleton::getInstance]
        my jset CLEAR_COLOR [[::BasicColorFactory::getInstance] jget CLEAR_COLOR]
        return
    }
    
    

    constructor {animationInterfaceArray basicColorArray dxArray dyArray y width animationBehavior} {
        next $animationBehavior
        my initFields_TitleAnimation
        my jset lastFrameStartTime [[my jget systemWrapper] currentTimeMillis]
        my jset animationInterfaceArray $animationInterfaceArray
        my jset sizeP [[my jget animationInterfaceArray] length]
        my jset basicColorArray $basicColorArray
        my jset dxArray $dxArray
        my jset dyArray $dyArray
        my jset y $y
        my jset widthP $width
        my reset
    }
    

    method nextFrame {} {
        set currentTime [[my jget systemWrapper] currentTimeMillis]
        set totalTimeElapsed [jlong [expr {$currentTime - [my jget lastFrameStartTime]}]]
        set indexedAnimationBehavior [my getAnimationBehavior]
        if {[expr {$totalTimeElapsed > [$indexedAnimationBehavior jget frameDelayTime]}]} {
            my previousFrame
            my jset lastFrameStartTime $currentTime
        }
        if {[expr {[[[my jget animationInterfaceArray] get 0] getFrame] == 0}]} {
            $indexedAnimationBehavior jpostinc loopIndex 1
        }
    }
    

    method isComplete {} {
        set indexedAnimationBehavior [my getAnimationBehavior]
        if {[expr {[expr {[expr {[$indexedAnimationBehavior jget loopTotal] == [expr {-1}]}] || [expr {[$indexedAnimationBehavior jget loopIndex] < [$indexedAnimationBehavior jget loopTotal]}]}] || [expr {[my getFrame] != 0}]}]} {
            return false
        } else {
            return true
        }
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method getSize {} {
        return [[[my jget animationInterfaceArray] get 0] getSize]
    }
    

    method getFrame {} {
        return [[[my jget animationInterfaceArray] get 0] getFrame]
    }
    

    method setFrame {frame} {
        for {set index 0} {[expr {$index < [my jget sizeP]}]} {jpostincr index 1} {
            [[my jget animationInterfaceArray] get $index] setFrame $frame
        }
    }
    

    method setLastFrame {} {
        my setFrame [jint [expr {[my getSize] - 1}]]
    }
    

    method reset {} {
        my setLastFrame
        set indexedAnimationBehavior ([my getAnimationBehavior])
        $indexedAnimationBehavior reset
    }
    

    method previousFrame {} {
        for {set index 0} {[expr {$index < [my jget sizeP]}]} {jpostincr index 1} {
            [[my jget animationInterfaceArray] get $index] previousFrame
        }
    }
    

    method paintFrameXY {graphics frame x y} {
        my setFrame $frame
        my paintXY $graphics $x $y
    }
    

    method paintXY {graphics ax ay} {
        set x 0
        if {[expr {[my jget widthP] != [::Integer::staticGet_MIN_VALUE]}]} {
            set x ([expr {([expr {[[my jget displayInfoSingleton] getLastWidth] - [my jget widthP]}]) / 2}])
        }
        set deltaX 0
        set deltaY 0
        for {set index 0} {[expr {$index < [my jget sizeP]}]} {jpostincr index 1} {
            set deltaX [jint [expr {[[my jget dxArray] get $index] + $x}]]
            set deltaY [jint [expr {[[my jget dyArray] get $index] + [my jget y]}]]
            if {[expr {[[my jget basicColorArray] get $index] ne [my jget CLEAR_COLOR]}]} {
                [my jget basicSetColorUtil] setBasicColorP $graphics [[my jget basicColorArray] get $index]
            }
            [[my jget animationInterfaceArray] get $index] paintXY $graphics $deltaX $deltaY
        }
    }
}

namespace eval ::TitleAnimation {
    proc createAnimation {animationInterfaceArray basicColorArray dxArray dyArray y width} {
        return [::TitleAnimation new $animationInterfaceArray $basicColorArray $dxArray $dyArray $y $width [::IndexedAnimationBehavior new 1 250]]
    }
}


