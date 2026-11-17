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
# package org.allbinary.game.configuration.feature

oo::class create ::Feature {
    superclass ::JObject
}

oo::define ::Feature {
    method initFields_Feature {} {
        my jset name {}
        
        return
    }
    

    constructor {name} {
        next
        my initFields_Feature
        my jset name $name
        ::Feature::add $name [self]
        [::ChangedGameFeatureListener::getInstance] add [self]
    }
    
    
    

    method toString {} {
        return [my getName]
    }
    

    method getName {} {
        return [my jget name]
    }
}

namespace eval ::Feature {
    variable hashtableValue {}
    variable hashtableSet 0
    proc staticGet_hashtable {} {
        variable hashtableValue
        variable hashtableSet
        if {!$hashtableSet} {
            set hashtableSet 1
            set hashtableValue [[::StdUtil::getInstance] createHashtable]
        }
        return $hashtableValue
    }
    proc staticSet_hashtable {value} {
        variable hashtableValue
        variable hashtableSet
        set hashtableSet 1
        set hashtableValue $value
    }
    proc getInstance {name} {
        return [[::Feature::staticGet_hashtable] get $name]
    }
    proc add {name gameFeature} {
        [::Feature::staticGet_hashtable] put $name $gameFeature
    }
}


