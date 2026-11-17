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
# package org.allbinary.game.layer.resources

oo::class create ::GameGraphicsResourceUtil {
    superclass ::JObject
}

oo::define ::GameGraphicsResourceUtil {
    method initFields_GameGraphicsResourceUtil {} {
        my jset logUtil {}
        my jset SPRITE {}
        my jset QUARTER {}
        my jset name {}
        my jset logUtil [::LogUtil::getInstance]
        my jset SPRITE "_sprite"
        my jset QUARTER "_quarter"
        my jset name [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }
    
    

    constructor {} {
        next
        my initFields_GameGraphicsResourceUtil
        try {
            my jset name [my getString]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget CONSTRUCTOR] $e
        }
    }
    

    method getString {} {
        set graphicsFeatureFactory [::GraphicsFeatureFactory::getInstance]
        set graphicsFeature [$graphicsFeatureFactory jget NONE]
        set features [::Features::getInstance]
        if {[$features isFeature [$graphicsFeatureFactory jget IMAGE_TO_ARRAY_GRAPHICS]]} {
            set graphicsFeature [$graphicsFeatureFactory jget IMAGE_TO_ARRAY_GRAPHICS]
        } elseif {[$features isFeature [$graphicsFeatureFactory jget SPRITE_FULL_GRAPHICS]]} {
            set graphicsFeature [$graphicsFeatureFactory jget SPRITE_FULL_GRAPHICS]
        } elseif {[$features isFeature [$graphicsFeatureFactory jget SPRITE_QUARTER_ROTATION_GRAPHICS]]} {
            set graphicsFeature [$graphicsFeatureFactory jget SPRITE_QUARTER_ROTATION_GRAPHICS]
        } elseif {[$features isFeature [$graphicsFeatureFactory jget IMAGE_ROTATION_ON_THE_FLY]]} {
            set graphicsFeature [$graphicsFeatureFactory jget IMAGE_ROTATION_ON_THE_FLY]
        }
        return [my getStringForFeature $graphicsFeature]
    }
    

    method getStringForFeature {graphicsFeature} {
        set stringBuffer [::StringMaker new]
        set graphicsFeatureFactory [::GraphicsFeatureFactory::getInstance]
        $stringBuffer delete 0 [$stringBuffer length]
        set features [::Features::getInstance]
        if {[$features isFeature [$graphicsFeatureFactory jget VECTOR_GRAPHICS]]} {
        } elseif {[$features isFeature [$graphicsFeatureFactory jget IMAGE_GRAPHICS]]} {
            if {[expr {[expr {$graphicsFeature eq [$graphicsFeatureFactory jget IMAGE_TO_ARRAY_GRAPHICS]}] || [expr {$graphicsFeature eq [$graphicsFeatureFactory jget IMAGE_ROTATION_ON_THE_FLY]}]}]} {
            } elseif {[expr {$graphicsFeature eq [$graphicsFeatureFactory jget SPRITE_FULL_GRAPHICS]}]} {
                $stringBuffer append [my jget SPRITE]
            } elseif {[expr {$graphicsFeature eq [$graphicsFeatureFactory jget SPRITE_QUARTER_ROTATION_GRAPHICS]}]} {
                $stringBuffer append [my jget QUARTER]
                $stringBuffer append [my jget SPRITE]
            } else {
                error [jexception Exception "None/Unknown Sub Image Resource Type Specified"]
            }
        } elseif {[[::OpenGLFeatureUtil::getInstance] isAnyThreed]} {
            $stringBuffer append [[::CanvasStrings::getInstance] jget OBJ_MODEL]
        } else {
            error [jexception Exception "None/Unknown Main Image Resource Type Specified"]
        }
        return [$stringBuffer toString]
    }
    

    method getName {} {
        return [my jget name]
    }
}

namespace eval ::GameGraphicsResourceUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        if {[expr {[::GameGraphicsResourceUtil::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::GameGraphicsResourceUtil::staticSet_instance [::GameGraphicsResourceUtil new]
        }
        return [::GameGraphicsResourceUtil::staticGet_instance]
    }
}


