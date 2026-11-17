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

oo::class create ::NullRotationAnimation2 {
    superclass ::NullRotationAnimation
}

oo::define ::NullRotationAnimation2 {
    method initFields_NullRotationAnimation2 {} {
        return
    }
    

    constructor {} {
        next [::AngleInfo::getInstance [[::AngleFactory::getInstance] jget QUARTER_TOTAL_ANGLE]] [::CircularIndexUtil::createInstance 4] [::IndexedAnimationBehavior new 1 250]
        my initFields_NullRotationAnimation2
    }
    

    method paintXY {graphics x y} {
    }
}

namespace eval ::NullRotationAnimation2 {
}


