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
# package org.allbinary.animation.image

oo::class create ::BaseImageAnimationFactory {
    superclass ::JObject
}

oo::define ::BaseImageAnimationFactory {
    method initFields_BaseImageAnimationFactory {} {
        my jset animationFactoryImageScaleUtil {}
        my jset image {}
        my jset animationBehaviorFactory {}
        my jset sequenceArray {}
        my jset animationFactoryInitializationVisitor {}
        my jset scaleProperties {}
        my jset animationFactoryImageScaleUtil [::AnimationFactoryImageScaleUtil::getInstance]
        
        
        
        
        my jset scaleProperties [::ScaleProperties::staticGet_instance]
        return
    }
    
    

    constructor {image sequenceArray width height dx dy animationBehaviorFactory} {
        next
        my initFields_BaseImageAnimationFactory
        my jset animationFactoryInitializationVisitor [::AnimationFactoryInitializationVisitor new]
        my jset image $image
        [my jget animationFactoryInitializationVisitor] jset width $width
        [my jget animationFactoryInitializationVisitor] jset height $height
        my jset animationBehaviorFactory $animationBehaviorFactory
        my jset sequenceArray $sequenceArray
        [my jget animationFactoryInitializationVisitor] jset dx $dx
        [my jget animationFactoryInitializationVisitor] jset dy $dy
    }
    

    method getInstance {instanceId} {
        return [[::NullAnimationFactory::getFactoryInstance] getInstance $instanceId]
    }
    

    method getImage {} {
        return [my jget image]
    }
    

    method getSequenceArray {} {
        return [my jget sequenceArray]
    }
    

    method setInitialScale {scaleProperties} {
        my jset scaleProperties $scaleProperties
        if {[[my jget scaleProperties] jget shouldScale]} {
            [my jget scaleProperties] jset scaleWidth [jint ([expr {[[my jget animationFactoryInitializationVisitor] jget width] * [[my jget scaleProperties] jget scaleX]}])]
            [my jget scaleProperties] jset scaleHeight [jint ([expr {[[my jget animationFactoryInitializationVisitor] jget height] * [[my jget scaleProperties] jget scaleY]}])]
        } else {
        }
    }
    

    method getAnimationFactoryInitializationVisitorP {} {
        return [my jget animationFactoryInitializationVisitor]
    }
    

    method getScalePropertiesP {} {
        return [my jget scaleProperties]
    }
    

    method toString {} {
        set commonSeps [::CommonSeps::getInstance]
        set commonLabels [::CommonLabels::getInstance]
        set stringBuffer [::StringMaker new]
        $stringBuffer append [next]
        $stringBuffer append [$commonLabels jget HEIGHT_LABEL]
        $stringBuffer appendint [jint [[my jget image] getHeight]]
        $stringBuffer append [$commonSeps jget SPACE]
        $stringBuffer append [[my jget animationFactoryInitializationVisitor] toString]
        return [$stringBuffer toString]
    }
}

namespace eval ::BaseImageAnimationFactory {
    proc createFactoryBase {image sequenceArray width height animationBehaviorFactory} {
        return [::BaseImageAnimationFactory new $image $sequenceArray $width $height 0 0 $animationBehaviorFactory]
    }
}


