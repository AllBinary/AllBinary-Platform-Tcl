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

oo::class create ::ResourceRelativeRelationshipFactory {
    superclass ::JObject
}

oo::define ::ResourceRelativeRelationshipFactory {
    method initFields_ResourceRelativeRelationshipFactory {} {
        my jset basicArrayListUtil {}
        my jset hashtable {}
        my jset initialized false
        my jset basicArrayListUtil [::BasicArrayListUtil::getInstance]
        my jset hashtable [[::StdUtil::getInstance] createHashtable]
        my jset initialized false
        return
    }

    constructor {} {
        next
        my initFields_ResourceRelativeRelationshipFactory
    }
    

    method init {level} {
        my setInitialized true
    }
    

    method getResourceRelativeRelationshipList {resource} {
        set listCanBeNull [[my jget hashtable] get $resource]
        if {[expr {$listCanBeNull eq {}}]} {
            return [[my jget basicArrayListUtil] getImmutableInstance]
        }
        return $listCanBeNull
    }
    

    method addResourceRelativeRelationship {resource hardPoint} {
        set list [my getResourceRelativeRelationshipList $resource]
        if {[expr {$list eq [[my jget basicArrayListUtil] getImmutableInstance]}]} {
            set list [::BasicArrayListD new]
        }
        $list add $hardPoint
        [my jget hashtable] put $resource $list
    }
    

    method isLoadingLevel {level} {
        return false
    }
    

    method isFeature {} {
        return false
    }
    

    method setInitialized {initialized} {
        my jset initialized $initialized
    }
    

    method isInitialized {} {
        return [my jget initialized]
    }
}

namespace eval ::ResourceRelativeRelationshipFactory {
}


