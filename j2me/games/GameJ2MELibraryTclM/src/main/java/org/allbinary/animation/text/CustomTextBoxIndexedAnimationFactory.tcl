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
# package org.allbinary.animation.text

oo::class create ::CustomTextBoxIndexedAnimationFactory {
    superclass ::JObject
}

oo::define ::CustomTextBoxIndexedAnimationFactory {
    method initFields_CustomTextBoxIndexedAnimationFactory {} {
        my jset logUtil {}
        my jset scaleProperties {}
        my jset maxLength 0
        my jset logUtil [::LogUtil::getInstance]
        
        
        return
    }
    

    constructor {fontSize maxLength} {
        next
        my initFields_CustomTextBoxIndexedAnimationFactory
        my jset scaleProperties [::ScaleProperties new]
        [my jget scaleProperties] jset scaleHeight $fontSize
        my jset maxLength $maxLength
    }
    

    method getInstance {instanceId} {
        set abToGBUtil [::ABToGBUtil::getInstance]
        set abCanvas [$abToGBUtil jget abCanvas]
        set font [::Font::getFont [::Font::staticGet_FACE_SYSTEM] [::Font::staticGet_STYLE_PLAIN] [[my jget scaleProperties] jget scaleHeight]]
        set customTextBox [::CustomTextBox2 new [$abCanvas getCustomCommandListener] [[::StringUtil::getInstance] jget EMPTY_STRING] [[::StringUtil::getInstance] jget EMPTY_STRING] [my jget maxLength] [::TextField::staticGet_ANY] $font [[$abCanvas getLayerManager] getBackgroundBasicColor] [[$abCanvas getLayerManager] getForegroundBasicColor]]
        return [::CustomTextBoxIndexedAnimation new $customTextBox]
    }
    

    method setInitialScale {scaleProperties} {
        set fontSize [[my jget scaleProperties] jget scaleHeight]
        my jset scaleProperties $scaleProperties
        if {[expr {[[my jget scaleProperties] jget scaleHeight] < 6}]} {
            [my jget scaleProperties] jset scaleHeight $fontSize
        }
    }
}

namespace eval ::CustomTextBoxIndexedAnimationFactory {
}


