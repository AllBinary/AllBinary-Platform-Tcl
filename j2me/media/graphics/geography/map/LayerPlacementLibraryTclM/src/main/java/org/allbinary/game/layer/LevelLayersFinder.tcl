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
# package org.allbinary.game.layer

oo::class create ::LevelLayersFinder {
    superclass ::JObject
}

oo::define ::LevelLayersFinder {
    method initFields_LevelLayersFinder {} {
        my jset enumerationUtil {}
        my jset enumerationUtil [::EnumerationUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_LevelLayersFinder
    }
    
    

    method get {hashtable} {
        set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
        set list [::BasicArrayListD new]
        set enumeration [$hashtable keys]
        set layerHashtableCanBeNull {}
        set integerCanBeNull {}
        set cachedIntegerCanBeNull {}
        while {[[my jget enumerationUtil] hasMoreElements $enumeration]} {
            set layerHashtableCanBeNull [$hashtable get [[my jget enumerationUtil] nextElement $enumeration]]
            set integerCanBeNull [$layerHashtableCanBeNull get [::Layer::staticGet_ID]]
            set cachedIntegerCanBeNull [$smallIntegerSingletonFactory getAt [$integerCanBeNull intValue]]
            if {[expr {![$list contains $cachedIntegerCanBeNull]}]} {
                $list add $cachedIntegerCanBeNull
            }
        }
        return $list
    }
}

namespace eval ::LevelLayersFinder {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LevelLayersFinder new]
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
        return [::LevelLayersFinder::staticGet_instance]
    }
}


