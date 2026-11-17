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
# package org.allbinary.animation.resource

oo::class create ::BaseResourceAnimationInterfaceFactoryInterfaceFactory {
    superclass ::JObject
}

oo::define ::BaseResourceAnimationInterfaceFactoryInterfaceFactory {
    method initFields_BaseResourceAnimationInterfaceFactoryInterfaceFactory {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset hashtable {}
        my jset rectangleHashtable {}
        my jset rectangleArrayOfArraysHashtable {}
        my jset name {}
        my jset initialized false
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        
        
        my jset initialized false
        return
    }
    

    constructor {name hashtable rectangleHashtable rectangleArrayHashtable} {
        next
        my initFields_BaseResourceAnimationInterfaceFactoryInterfaceFactory
        my jset hashtable $hashtable
        my jset rectangleHashtable $rectangleHashtable
        my jset rectangleArrayOfArraysHashtable $rectangleArrayHashtable
        my jset name $name
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method init {level} {
        set commonStrings [::CommonStrings::getInstance]
        [my jget logUtil] putF [[[[::StringMaker new] append "Available List of Animations: "] append [[my jget hashtable] toString]] toString] [self] [$commonStrings jget INIT]
        my setInitialized true
    }
    

    method initImageCache {imageCache level} {
    }
    

    method add {resource animationInterfaceFactoryInterface} {
        if {[[my jget hashtable] containsKey $resource]} {
            error [jexception Exception [[[[::StringMaker new] append "Resource Already Created: "] append $resource] toString]]
        }
        [my jget hashtable] put $resource $animationInterfaceFactoryInterface
    }
    

    method getBasicAnimationInterfaceFactoryInstance {resource} {
        set basicAnimationInterfaceFactoryInterfaceCanBeNull [[my jget hashtable] get $resource]
        if {[expr {$basicAnimationInterfaceFactoryInterfaceCanBeNull eq {}}]} {
            return [::NullAnimationFactory::staticGet_NULL_NOT_FOR_USE_ANIMATION_FACTORY]
        }
        return $basicAnimationInterfaceFactoryInterfaceCanBeNull
    }
    

    method getRectangle {resource} {
        set rectangleCanBeNull [[my jget rectangleHashtable] get $resource]
        if {[expr {$rectangleCanBeNull eq {}}]} {
            return [::RectangleFactory::staticGet_SINGLETON]
        }
        return $rectangleCanBeNull
    }
    

    method addRectangle {resource rectangle} {
        [my jget rectangleHashtable] put $resource $rectangle
    }
    

    method getRectangleArrayOfArrays {resource} {
        set valueCanBeNull [[my jget rectangleArrayOfArraysHashtable] get $resource]
        if {[expr {$valueCanBeNull ne {}}]} {
            set rectangleArrayOfArrays $valueCanBeNull
            return $rectangleArrayOfArrays
        } else {
            return [::RectangleFactory::staticGet_ARRAY_OF_ARRAYS]
        }
    }
    

    method addRectangleArrayOfArrays {resource rectangleArrayOfArrays} {
        [my jget rectangleArrayOfArraysHashtable] put $resource $rectangleArrayOfArrays
    }
    

    method isFeature {} {
        return false
    }
    

    method isLoadingLevel {level} {
        set resourceLoadingLevelFactory [::ResourceLoadingLevelFactory::getInstance]
        if {[expr {$level == [[$resourceLoadingLevelFactory jget LOAD_ALL] getLevel]}]} {
            return true
        } else {
            return false
        }
    }
    

    method toString {} {
        return [[[[[[::StringMaker new] append [jclassname [self]]] append [[::CommonSeps::getInstance] jget SEMICOLON]] append [[::CommonSeps::getInstance] jget SPACE]] append [my jget name]] toString]
    }
    

    method getHashtable {} {
        return [my jget hashtable]
    }
    

    method getRectangleHashtable {} {
        return [my jget rectangleHashtable]
    }
    

    method getRectangleArrayOfArraysHashtable {} {
        return [my jget rectangleArrayOfArraysHashtable]
    }
    

    method setInitialized {initialized} {
        my jset initialized $initialized
    }
    

    method isInitialized {} {
        return [my jget initialized]
    }
}

namespace eval ::BaseResourceAnimationInterfaceFactoryInterfaceFactory {
}


