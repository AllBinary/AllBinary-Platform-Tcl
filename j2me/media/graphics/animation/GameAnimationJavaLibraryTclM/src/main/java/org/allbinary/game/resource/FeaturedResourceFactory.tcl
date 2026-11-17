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
# package org.allbinary.game.resource

oo::class create ::FeaturedResourceFactory {
    superclass ::JObject
}

oo::define ::FeaturedResourceFactory {
    method initFields_FeaturedResourceFactory {} {
        my jset logUtil {}
        my jset list {}
        my jset commonStrings {}
        my jset ANIMATION_FEATURES {}
        my jset IMAGE_LABEL {}
        my jset IMAGE_GRAPHICS_ARRAY {}
        my jset IMAGE_GRAPHICS_ROTATION {}
        my jset SPRITE_QUARTER {}
        my jset SPRITE_FULL {}
        my jset IS_LOADING_LEVEL_LABEL {}
        my jset IS_FEATURE {}
        my jset GAME_FEATURE_CONTROLLED {}
        my jset logUtil [::LogUtil::getInstance]
        my jset list [::BasicArrayListD new]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset ANIMATION_FEATURES "Animation Features: Vector: "
        my jset IMAGE_LABEL " Image: "
        my jset IMAGE_GRAPHICS_ARRAY "Image Array: "
        my jset IMAGE_GRAPHICS_ROTATION "Image Rotate: "
        my jset SPRITE_QUARTER " Sprite Quarter: "
        my jset SPRITE_FULL " Sprite Full: "
        my jset IS_LOADING_LEVEL_LABEL " isLoadingLevel "
        my jset IS_FEATURE " isFeature: "
        my jset GAME_FEATURE_CONTROLLED "GameFeatureControlledInterface: "
        return
    }
    

    constructor {} {
        next
        my initFields_FeaturedResourceFactory
    }
    

    method init {level} {
        set size [[my jget list] size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set featureInterface [[[my jget list] jget objectArray] get $index]
            set isLoadingLevel [$featureInterface isLoadingLevel $level]
            set isFeature [$featureInterface isFeature]
            [my jget logUtil] putF [[[[[[[[[[::StringMaker new] append [my jget GAME_FEATURE_CONTROLLED]] append [$featureInterface toString]] append [my jget IS_LOADING_LEVEL_LABEL]] append [[::ResourceLoadingLevelFactory::getInstance] getLevelString $level]] append [[::CommonSeps::getInstance] jget COLON_SEP]] appendboolean $isLoadingLevel] append [my jget IS_FEATURE]] appendboolean $isFeature] toString] [self] [[my jget commonStrings] jget INIT]
            if {[expr {$isLoadingLevel && $isFeature}]} {
                $featureInterface init $level
            }
        }
        set features [::Features::getInstance]
        set graphicsFeatureFactory [::GraphicsFeatureFactory::getInstance]
        set stringBuffer [::StringMaker new]
        $stringBuffer append [my jget ANIMATION_FEATURES]
        $stringBuffer appendboolean [$features isFeature [$graphicsFeatureFactory jget VECTOR_GRAPHICS]]
        $stringBuffer append [my jget IMAGE_LABEL]
        $stringBuffer appendboolean [$features isFeature [$graphicsFeatureFactory jget IMAGE_GRAPHICS]]
        [my jget logUtil] putF [$stringBuffer toString] [self] [[my jget commonStrings] jget INIT]
        if {[$features isFeature [$graphicsFeatureFactory jget IMAGE_GRAPHICS]]} {
            $stringBuffer delete 0 [$stringBuffer length]
            $stringBuffer append [my jget IMAGE_GRAPHICS_ARRAY]
            $stringBuffer appendboolean [$features isFeature [$graphicsFeatureFactory jget IMAGE_TO_ARRAY_GRAPHICS]]
            $stringBuffer append [my jget IMAGE_GRAPHICS_ROTATION]
            $stringBuffer appendboolean [$features isFeature [$graphicsFeatureFactory jget IMAGE_TO_ARRAY_GRAPHICS]]
            $stringBuffer append [my jget SPRITE_QUARTER]
            $stringBuffer appendboolean [$features isFeature [$graphicsFeatureFactory jget SPRITE_QUARTER_ROTATION_GRAPHICS]]
            $stringBuffer append [my jget SPRITE_FULL]
            $stringBuffer appendboolean [$features isFeature [$graphicsFeatureFactory jget SPRITE_FULL_GRAPHICS]]
            [my jget logUtil] putF [$stringBuffer toString] [self] [[my jget commonStrings] jget INIT]
        }
    }
    

    method clear {} {
        [my jget list] clear
    }
    

    method add {featureInterface} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget START_LABEL]] append [[::StringUtil::getInstance] toString1 $featureInterface]] toString] [self] [[my jget commonStrings] jget ADD]
        [my jget list] add $featureInterface
    }
    

    method getList {} {
        return [my jget list]
    }
}

namespace eval ::FeaturedResourceFactory {
}


