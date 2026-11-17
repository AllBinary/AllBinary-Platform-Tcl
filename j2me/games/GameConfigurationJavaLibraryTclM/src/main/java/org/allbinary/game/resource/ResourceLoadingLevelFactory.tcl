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

oo::class create ::ResourceLoadingLevelFactory {
    superclass ::JObject
}

oo::define ::ResourceLoadingLevelFactory {
    method initFields_ResourceLoadingLevelFactory {} {
        my jset LOAD_EARLY {}
        my jset LOAD_TOUCH {}
        my jset LOAD_GAME {}
        my jset LEVEL {}
        my jset MAX_LEVEL {}
        my jset LOAD_ALL {}
        my jset RESOURCE_LOADING_LEVEL_ARRAY {}
        my jset LOAD_EARLY [::ResourceLoadingLevel new "Load Early" [::Integer::staticGet_MAX_VALUE]]
        my jset LOAD_TOUCH [::ResourceLoadingLevel new "Load Touch" [jint [expr {[::Integer::staticGet_MAX_VALUE] - 1}]]]
        my jset LOAD_GAME [::ResourceLoadingLevel new "Load Game" [jint [expr {[::Integer::staticGet_MAX_VALUE] - 2}]]]
        my jset LEVEL [::ResourceLoadingLevel new "Level" [jint [expr {[::Integer::staticGet_MAX_VALUE] - 99}]]]
        my jset MAX_LEVEL [::ResourceLoadingLevel new "Max Level" [jint [expr {[::Integer::staticGet_MAX_VALUE] - 100}]]]
        my jset LOAD_ALL [::ResourceLoadingLevel new "Load All" [expr {-1}]]
        my jset RESOURCE_LOADING_LEVEL_ARRAY [jarrayfrom [list [my jget LOAD_ALL] [my jget MAX_LEVEL] [my jget LEVEL] [my jget LOAD_GAME] [my jget LOAD_TOUCH] [my jget LOAD_EARLY]]]
        return
    }

    constructor {} {
        next
        my initFields_ResourceLoadingLevelFactory
    }
    
    

    method getLevelString {level} {
        for {set index 0} {[expr {$index < [[my jget RESOURCE_LOADING_LEVEL_ARRAY] length]}]} {jpostincr index 1} {
            if {[expr {$level == [[[my jget RESOURCE_LOADING_LEVEL_ARRAY] get $index] getLevel]}]} {
                return [[[my jget RESOURCE_LOADING_LEVEL_ARRAY] get $index] getName]
            }
        }
        return [jstr $level]
    }
}

namespace eval ::ResourceLoadingLevelFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ResourceLoadingLevelFactory new]
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
        return [::ResourceLoadingLevelFactory::staticGet_instance]
    }
}


