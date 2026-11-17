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
# package org.allbinary.graphics.form

oo::class create ::LockablePaintable {
    superclass ::ItemPaintable
}

oo::define ::LockablePaintable {
    method initFields_LockablePaintable {} {
        my jset animation {}
        my jset lockedIndex 0
        my jset animation [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] get [[::LockedResources::getInstance] jget LOCKED_DEMO_GAME_FEATURE_RESOURCE]] getInstance 0]
        
        return
    }
    

    constructor {lockedIndex} {
        next
        my initFields_LockablePaintable
        my jset lockedIndex $lockedIndex
    }
    

    method paint {graphics currentIndex x y} {
        if {[expr {[[::LockedUtil::getInstance] isLocked] && [expr {$currentIndex >= [my getLockedIndex]}]}]} {
            [my getAnimation] paintXY $graphics $x $y
        }
    }
    

    method getLockedIndex {} {
        return [my jget lockedIndex]
    }
    

    method getAnimation {} {
        return [my jget animation]
    }
}

namespace eval ::LockablePaintable {
}


