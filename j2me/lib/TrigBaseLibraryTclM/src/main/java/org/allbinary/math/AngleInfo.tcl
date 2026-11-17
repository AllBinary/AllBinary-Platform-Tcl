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
# package org.allbinary.math

oo::class create ::AngleInfo {
    superclass ::JObject
}

oo::define ::AngleInfo {
    method initFields_AngleInfo {} {
        my jset angleIncrementInfo {}
        my jset angle 0
        my jset frameUtil {}
        
        my jset angle 0
        my jset frameUtil [::FrameUtil::getInstance]
        return
    }
    
    

    constructor {angleIncrementInfo} {
        next
        my initFields_AngleInfo
        my jset angleIncrementInfo $angleIncrementInfo
    }
    

    method adjustAngle {frame} {
        set newAngle [expr {[expr {[[my jget angleIncrementInfo] getAngleIncrement] * $frame}] - 90}]
        my setAngle [jshort [[my jget frameUtil] adjustAngleToFrameAngle $newAngle]]
    }
    

    method getAngle {} {
        return [my jget angle]
    }
    

    method setAngle {angle} {
        my jset angle $angle
    }
    

    method getAngleIncrementInfo {} {
        return [my jget angleIncrementInfo]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [::AngleInfo::staticGet_ANGLE]
        $stringBuffer appendshort [my jget angle]
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append [[::StringUtil::getInstance] toString1 [my getAngleIncrementInfo]]
        return [$stringBuffer toString]
    }
}

namespace eval ::AngleInfo {
    variable ANGLEValue {}
    variable ANGLESet 0
    proc staticGet_ANGLE {} {
        variable ANGLEValue
        variable ANGLESet
        if {!$ANGLESet} {
            set ANGLESet 1
            set ANGLEValue "Angle: "
        }
        return $ANGLEValue
    }
    proc staticSet_ANGLE {value} {
        variable ANGLEValue
        variable ANGLESet
        set ANGLESet 1
        set ANGLEValue $value
    }
    proc getInstance {angleIncrement} {
        return [::AngleInfo new [[::AngleIncrementInfoFactory::getInstance] getAt $angleIncrement]]
    }
}


