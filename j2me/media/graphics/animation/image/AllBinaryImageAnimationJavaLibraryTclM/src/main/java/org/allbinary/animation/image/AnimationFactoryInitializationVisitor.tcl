# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.animation.image

oo::class create ::AnimationFactoryInitializationVisitor {
    superclass ::JObject
}

oo::define ::AnimationFactoryInitializationVisitor {
    method initFields_AnimationFactoryInitializationVisitor {} {
        my jset width 0
        my jset height 0
        my jset dx 0
        my jset dy 0
        my jset originalDx 0
        my jset originalDy 0
        my jset width 0
        my jset height 0
        my jset dx 0
        my jset dy 0
        my jset originalDx 0
        my jset originalDy 0
        return
    }

    constructor {} {
        next
        my initFields_AnimationFactoryInitializationVisitor
    }
    

    method visit {} {
    }
    

    method toString {} {
        set commonSeps [::CommonSeps::getInstance]
        set commonLabels [::CommonLabels::getInstance]
        set stringBuffer [::StringMaker new]
        [$stringBuffer append [[::PositionStrings::getInstance] jget DX_LABEL]] appendfloat [expr {double([my jget dx])}]
        [$stringBuffer append [[::PositionStrings::getInstance] jget DY_LABEL]] appendfloat [expr {double([my jget dy])}]
        $stringBuffer append [$commonLabels jget WIDTH_LABEL]
        $stringBuffer appendint [my jget width]
        $stringBuffer append [$commonSeps jget SPACE]
        $stringBuffer append [$commonLabels jget HEIGHT_LABEL]
        $stringBuffer appendint [my jget height]
        return [$stringBuffer toString]
    }
}

namespace eval ::AnimationFactoryInitializationVisitor {
}


