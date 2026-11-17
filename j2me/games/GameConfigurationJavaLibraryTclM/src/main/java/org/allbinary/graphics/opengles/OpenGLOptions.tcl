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
# package org.allbinary.graphics.opengles

oo::class create ::OpenGLOptions {
    superclass ::JObject
}

oo::define ::OpenGLOptions {
    method initFields_OpenGLOptions {} {
        return
    }

    constructor {} {
        next
        my initFields_OpenGLOptions
    }
    

    method init {} {
        set openGLFeatureFactory [::OpenGLFeatureFactory::getInstance]
        if {[[::Features::getInstance] isFeature [$openGLFeatureFactory jget OPENGL_OPTIONS]]} {
            set openGLMultipleList [::BasicArrayListD new]
            $openGLMultipleList add [$openGLFeatureFactory jget OPENGL]
            [::GameFeatureChoiceGroups::getMultipleInstance] add "OpenGL (Complete Restart)" $openGLMultipleList
            set openGLVersionSelectorMultipleList [::BasicArrayListD new]
            $openGLVersionSelectorMultipleList add [$openGLFeatureFactory jget OPENGL_AUTO_SELECT]
            $openGLVersionSelectorMultipleList add [$openGLFeatureFactory jget OPENGL_MINIMUM]
            [::GameFeatureChoiceGroups::getExclusiveInstance] add "OpenGL Version Selector" $openGLVersionSelectorMultipleList
            set openGLImageColorMultipleList [::BasicArrayListD new]
            $openGLImageColorMultipleList add [$openGLFeatureFactory jget IMAGE_COLOR_DEPTH_4444]
            $openGLImageColorMultipleList add [$openGLFeatureFactory jget IMAGE_COLOR_DEPTH_8888]
            [::GameFeatureChoiceGroups::getExclusiveInstance] add "OpenGL Image Color RGBA" $openGLImageColorMultipleList
        }
    }
}

namespace eval ::OpenGLOptions {
}


