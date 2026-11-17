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
        set portion 140
        set loadingString [[[[::StringMaker new] append [my toString]] append " Loading: "] toString]
        set index 0
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        $progressCanvas addPortion $portion $loadingString [jpostincr index 1]
        set touchButtonBlankResource [::TouchButtonBlankResource::getInstance]
        set touchButtonGenericActionResource [::TouchButtonGenericActionResource::getInstance]
        set touchButtonStartResource [::TouchButtonStartResource::getInstance]
        set touchButtonUpResource [::TouchButtonUpResource::getInstance]
        set touchButtonDownResource [::TouchButtonDownResource::getInstance]
        set touchButtonTurnLeftResource [::TouchButtonTurnLeftResource::getInstance]
        set touchButtonTurnRightResource [::TouchButtonTurnRightResource::getInstance]
        set touchButtonStrafeLeftResource [::TouchButtonStrafeLeftResource::getInstance]
        set touchButtonStrafeRightResource [::TouchButtonStrafeRightResource::getInstance]
        set touchButtonBlankResourceImage [$imageCache getWithKey [$touchButtonBlankResource jget RESOURCE]]
        set touchButtonGenericActionResourceImage [$imageCache getWithKey [$touchButtonGenericActionResource jget RESOURCE]]
        set touchButtonStartResourceImage [$imageCache getWithKey [$touchButtonStartResource jget RESOURCE]]
        set touchButtonUpResourceImage [$imageCache getWithKey [$touchButtonUpResource jget RESOURCE]]
        set touchButtonDownResourceImage [$imageCache getWithKey [$touchButtonDownResource jget RESOURCE]]
        set touchButtonTurnLeftResourceImage [$imageCache getWithKey [$touchButtonTurnLeftResource jget RESOURCE]]
        set touchButtonTurnRightResourceImage [$imageCache getWithKey [$touchButtonTurnRightResource jget RESOURCE]]
        set touchButtonStrafeLeftResourceImage [$imageCache getWithKey [$touchButtonStrafeLeftResource jget RESOURCE]]
        set touchButtonStrafeRightResourceImage [$imageCache getWithKey [$touchButtonStrafeRightResource jget RESOURCE]]
        set nullAnimationFactory [::NullAnimationFactory::getFactoryInstance]
        if {[[[::OperatingSystemFactory::getInstance] getOperatingSystemInstance] isOverScan]} {
            $imageCache getWithKey [[::TouchButtonStartResource::getInstance] jget HINT]
        }
        $progressCanvas addPortion $portion $loadingString [jpostincr index 1]
        set imageCompleteUtil [::ImageCompleteUtil::getInstance]
        $progressCanvas addPortion $portion $loadingString [jpostincr index 1]
        $imageCompleteUtil waitForImage $touchButtonBlankResourceImage [$touchButtonBlankResource jget RESOURCE]
        my add [$touchButtonBlankResource jget RESOURCE] [::OneRowSpriteIndexedAnimationFactory::createFactory $touchButtonBlankResourceImage [::AnimationBehaviorFactory::getInstance]]
        my add [$touchButtonBlankResource jget HINT] $nullAnimationFactory
        $progressCanvas addPortion $portion $loadingString [jpostincr index 1]
        $imageCompleteUtil waitForImage $touchButtonGenericActionResourceImage [$touchButtonGenericActionResource jget RESOURCE]
        my add [$touchButtonGenericActionResource jget RESOURCE] [::OneRowSpriteIndexedAnimationFactory::createFactory $touchButtonGenericActionResourceImage [::AnimationBehaviorFactory::getInstance]]
        my add [$touchButtonGenericActionResource jget HINT] $nullAnimationFactory
        $progressCanvas addPortion $portion $loadingString [jpostincr index 1]
        $imageCompleteUtil waitForImage $touchButtonStartResourceImage [$touchButtonStartResource jget RESOURCE]
        my add [$touchButtonStartResource jget RESOURCE] [::OneRowSpriteIndexedAnimationFactory::createFactory $touchButtonStartResourceImage [::AnimationBehaviorFactory::getInstance]]
        $progressCanvas addPortion $portion $loadingString [jpostincr index 1]
        $imageCompleteUtil waitForImage $touchButtonUpResourceImage [$touchButtonUpResource jget RESOURCE]
        my add [$touchButtonUpResource jget RESOURCE] [::OneRowSpriteIndexedAnimationFactory::createFactory $touchButtonUpResourceImage [::AnimationBehaviorFactory::getInstance]]
        my add [$touchButtonUpResource jget HINT] $nullAnimationFactory
        $progressCanvas addPortion $portion $loadingString [jpostincr index 1]
        $imageCompleteUtil waitForImage $touchButtonDownResourceImage [$touchButtonDownResource jget RESOURCE]
        my add [$touchButtonDownResource jget RESOURCE] [::OneRowSpriteIndexedAnimationFactory::createFactory $touchButtonDownResourceImage [::AnimationBehaviorFactory::getInstance]]
        my add [$touchButtonDownResource jget HINT] $nullAnimationFactory
        $progressCanvas addPortion $portion $loadingString [jpostincr index 1]
        $imageCompleteUtil waitForImage $touchButtonTurnLeftResourceImage [$touchButtonTurnLeftResource jget RESOURCE]
        my add [$touchButtonTurnLeftResource jget RESOURCE] [::OneRowSpriteIndexedAnimationFactory::createFactory $touchButtonTurnLeftResourceImage [::AnimationBehaviorFactory::getInstance]]
        my add [$touchButtonTurnLeftResource jget HINT] $nullAnimationFactory
        $progressCanvas addPortion $portion $loadingString [jpostincr index 1]
        $imageCompleteUtil waitForImage $touchButtonTurnRightResourceImage [$touchButtonTurnRightResource jget RESOURCE]
        my add [$touchButtonTurnRightResource jget RESOURCE] [::OneRowSpriteIndexedAnimationFactory::createFactory $touchButtonTurnRightResourceImage [::AnimationBehaviorFactory::getInstance]]
        my add [$touchButtonTurnRightResource jget HINT] $nullAnimationFactory
        $progressCanvas addPortion $portion $loadingString [jpostincr index 1]
        $imageCompleteUtil waitForImage $touchButtonStrafeLeftResourceImage [$touchButtonStrafeLeftResource jget RESOURCE]
        my add [$touchButtonStrafeLeftResource jget RESOURCE] [::OneRowSpriteIndexedAnimationFactory::createFactory $touchButtonStrafeLeftResourceImage [::AnimationBehaviorFactory::getInstance]]
        my add [$touchButtonStrafeLeftResource jget HINT] $nullAnimationFactory
        $progressCanvas addPortion $portion $loadingString [jpostincr index 1]
        $imageCompleteUtil waitForImage $touchButtonStrafeRightResourceImage [$touchButtonStrafeRightResource jget RESOURCE]
        my add [$touchButtonStrafeRightResource jget RESOURCE] [::OneRowSpriteIndexedAnimationFactory::createFactory $touchButtonStrafeRightResourceImage [::AnimationBehaviorFactory::getInstance]]
        my add [$touchButtonStrafeRightResource jget HINT] $nullAnimationFactory
        if {[[[::OperatingSystemFactory::getInstance] getOperatingSystemInstance] isOverScan]} {
            set touchButtonStartHintResource [$imageCache getWithKey [[::TouchButtonStartResource::getInstance] jget HINT]]
            my add [$touchButtonStartResource jget HINT] [::OneRowSpriteIndexedAnimationFactory::createFactory $touchButtonStartHintResource [::AnimationBehaviorFactory::getInstance]]
        } else {
            my add [$touchButtonStartResource jget HINT] $nullAnimationFactory
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


