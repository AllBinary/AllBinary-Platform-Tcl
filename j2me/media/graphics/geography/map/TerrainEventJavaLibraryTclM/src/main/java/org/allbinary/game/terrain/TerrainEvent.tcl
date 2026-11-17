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
# package org.allbinary.game.terrain

oo::class create ::TerrainEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::TerrainEvent {
    method initFields_TerrainEvent {} {
        my jset basicTerrainInfo {}
        my jset basicTerrainInfo [::BasicTerrainInfo::staticGet_NULL_BASIC_TERRAIN_INFO]
        return
    }
    

    constructor {basicTerrainInfo} {
        next $basicTerrainInfo
        my initFields_TerrainEvent
        my setBasicTerrainInfo [my jget basicTerrainInfo]
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "TerrainEvent: \n"
        $stringBuffer append "LayerInterface: "
        $stringBuffer append [[my jget basicTerrainInfo] toString]
        return [$stringBuffer toString]
    }
    

    method getBasicTerrainInfo {} {
        return [my jget basicTerrainInfo]
    }
    

    method setBasicTerrainInfo {basicTerrainInfo} {
        my jset basicTerrainInfo $basicTerrainInfo
    }
    

    method setBasicTerrainInfoForCircularStaticPool {basicTerrainInfo} {
        my jset basicTerrainInfo $basicTerrainInfo
    }
}

namespace eval ::TerrainEvent {
}


