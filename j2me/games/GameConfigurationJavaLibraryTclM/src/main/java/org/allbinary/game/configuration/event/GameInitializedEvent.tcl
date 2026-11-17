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
# package org.allbinary.game.configuration.event

oo::class create ::GameInitializedEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::GameInitializedEvent {
    method initFields_GameInitializedEvent {} {
        my jset resourceLoadingLevel {}
        my jset level 0
        my jset resourceLoadingLevel [[::ResourceLoadingLevelFactory::getInstance] jget LEVEL]
        my jset level 0
        return
    }
    

    constructor {anyType} {
        next $anyType
        my initFields_GameInitializedEvent
    }
    

    method setLevel {level} {
        my jset level $level
        my jset resourceLoadingLevel [[::ResourceLoadingLevelFactory::getInstance] jget LEVEL]
    }
    

    method getLevel {} {
        return [my jget level]
    }
    

    method setResourceLoadingLevel {resourceLoadingLevel} {
        my jset resourceLoadingLevel $resourceLoadingLevel
        my jset level [[my jget resourceLoadingLevel] getLevel]
    }
    

    method getResourceLoadingLevel {} {
        return [my jget resourceLoadingLevel]
    }
}

namespace eval ::GameInitializedEvent {
}


