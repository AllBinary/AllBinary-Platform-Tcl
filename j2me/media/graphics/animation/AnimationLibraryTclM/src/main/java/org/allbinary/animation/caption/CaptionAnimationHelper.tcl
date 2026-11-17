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
# package org.allbinary.animation.caption

oo::class create ::CaptionAnimationHelper {
    superclass ::CaptionAnimationHelperBase
}

oo::define ::CaptionAnimationHelper {
    method initFields_CaptionAnimationHelper {} {
        my jset timeHelper {}
        my jset textAnimation {}
        my jset captionAnimation {}
        my jset animation {}
        my jset timeHelper [::TimeDelayHelper new 620]
        my jset textAnimation [::TextAnimation new [[::StringUtil::getInstance] jget EMPTY_STRING] [::AnimationBehavior::getInstance]]
        
        my jset animation [[::NullAnimationFactory::getFactoryInstance] getInstance 0]
        return
    }
    

    constructor {captionAnimation captionDx captionDy dx dy} {
        next
        my initFields_CaptionAnimationHelper
        my jset captionAnimation [::CaptionAnimation new $captionAnimation [my jget textAnimation] $captionDx $captionDy $dx $dy]
    }
    

    method isShowing {} {
        if {[expr {[my jget animation] eq [my jget captionAnimation]}]} {
            return true
        } else {
            return false
        }
    }
    

    method tick {} {
        if {[[my jget timeHelper] isTime [[::GameTickTimeDelayHelperFactory::getInstance] jget startTime]]} {
            my jset animation [[::NullAnimationFactory::getFactoryInstance] getInstance 0]
        }
    }
    

    method update {message basicColor} {
        [my jget textAnimation] setBasicColorP $basicColor
        [my jget textAnimation] setText $message
        my jset animation [my jget captionAnimation]
        [my jget timeHelper] setStartTimeTNT
    }
    

    method paintXY {graphics x y} {
        [my jget animation] paintXY $graphics $x $y
    }
}

namespace eval ::CaptionAnimationHelper {
}


