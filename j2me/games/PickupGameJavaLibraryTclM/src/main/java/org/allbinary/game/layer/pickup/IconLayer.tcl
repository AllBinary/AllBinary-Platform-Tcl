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
# package org.allbinary.game.layer.pickup

oo::class create ::IconLayer {
    superclass ::AllBinaryLayer
}

oo::define ::IconLayer {
    method initFields_IconLayer {} {
        my jset animationInterface {}
        
        return
    }
    

    constructor {animationInterface width height} {
        next [[::StringUtil::getInstance] jget EMPTY_STRING] [::Rectangle new [[::PointFactory::getInstance] jget ZERO_ZERO] $width $height] [::ViewPosition::getInstanceD]
        my initFields_IconLayer
        my jset animationInterface $animationInterface
    }
    

    method paint {graphics} {
        [my jget animationInterface] paintXY $graphics [my jget x] [my jget y]
    }
    

    method paintThreed {graphics} {
        [my jget animationInterface] paintThreedXYZ $graphics [my jget x] [my jget y] [my jget z]
    }
    

    method getAnimationInterface {} {
        return [my jget animationInterface]
    }
}

namespace eval ::IconLayer {
    variable NULL_ICON_LAYERValue {}
    variable NULL_ICON_LAYERSet 0
    proc staticGet_NULL_ICON_LAYER {} {
        variable NULL_ICON_LAYERValue
        variable NULL_ICON_LAYERSet
        if {!$NULL_ICON_LAYERSet} {
            set NULL_ICON_LAYERSet 1
            set NULL_ICON_LAYERValue [::IconLayer new [[::NullAnimationFactory::getFactoryInstance] getInstance 0] 0 0]
        }
        return $NULL_ICON_LAYERValue
    }
    proc staticSet_NULL_ICON_LAYER {value} {
        variable NULL_ICON_LAYERValue
        variable NULL_ICON_LAYERSet
        set NULL_ICON_LAYERSet 1
        set NULL_ICON_LAYERValue $value
    }
}


