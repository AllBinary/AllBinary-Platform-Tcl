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

oo::class create ::FeatureResourceInitializationUtil {
    superclass ::JObject
}

oo::define ::FeatureResourceInitializationUtil {
    method initFields_FeatureResourceInitializationUtil {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_FeatureResourceInitializationUtil
    }
    
    

    method init {level} {
        set commonStrings [::CommonStrings::getInstance]
        [my jget logUtil] putF [$commonStrings jget START] [self] [$commonStrings jget INIT]
        set featuredResourceFactory [::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance]
        $featuredResourceFactory init $level
        [::FeaturedResourceRelativeRelationshipFactory::getInstance] init $level
    }
}

namespace eval ::FeatureResourceInitializationUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::FeatureResourceInitializationUtil new]
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
        return [::FeatureResourceInitializationUtil::staticGet_instance]
    }
}


