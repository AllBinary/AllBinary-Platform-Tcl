# Generated Code Do Not Modify
# package org.allbinary.animation

oo::class create ::NullRotationAnimation {
    superclass ::RotationAnimation
}

oo::define ::NullRotationAnimation {
    method initFields_NullRotationAnimation {} {
        return
    }
    
    
    

    constructor {angleInfo circularIndexUtil animationBehavior} {
        next $angleInfo $circularIndexUtil $animationBehavior
        my initFields_NullRotationAnimation
    }
    

    method getAnimationSize {} {
        return 0
    }
}

namespace eval ::NullRotationAnimation {
    proc createTotalAngle {angleInfo totalAngle animationBehavior} {
        return [::NullRotationAnimation new $angleInfo [::CircularIndexUtil::createInstance [expr {$totalAngle / [[$angleInfo getAngleIncrementInfo] getAngleIncrement]}]] $animationBehavior]
    }
    proc createQuarter {animationBehavior} {
        return [::NullRotationAnimation new [::AngleInfo::getInstance [[::AngleFactory::getInstance] jget QUARTER_TOTAL_ANGLE]] [::CircularIndexUtil::createInstance 4] $animationBehavior]
    }
}


