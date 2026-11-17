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
# package org.allbinary.input.motion.button

oo::class create ::TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory {
    superclass ::BaseResourceAnimationInterfaceFactoryInterfaceFactory
}

oo::define ::TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory {
    method initFields_TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory {} {
        return
    }
    
    

    constructor {name} {
        next $name [[::StdUtil::getInstance] createHashtable] [[::StdUtil::getInstance] createHashtable] [[::StdUtil::getInstance] createHashtable]
        my initFields_TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
    }
    

    method init {level} {
        my initImageCache [::ImageCacheFactory::getInstance] $level
    }
    

    method initImageCache {imageCache level} {
        if {[my isInitialized]} {
            return
        }
        next $level
    }
    

    method isLoadingLevel {level} {
        set resourceLoadingLevelFactory [::ResourceLoadingLevelFactory::getInstance]
        if {[expr {$level == [[$resourceLoadingLevelFactory jget LOAD_TOUCH] getLevel]}]} {
            return true
        } else {
            return [next $level]
        }
    }
    

    method isFeature {} {
        if {[expr {![[::Features::getInstance] isDefault [[::OpenGLFeatureFactory::getInstance] jget OPENGL]]}]} {
            return true
        } else {
            return false
        }
    }
}

namespace eval ::TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory {
    proc createFactory {} {
        return [::TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory new "TouchButton Animations"]
    }
}


