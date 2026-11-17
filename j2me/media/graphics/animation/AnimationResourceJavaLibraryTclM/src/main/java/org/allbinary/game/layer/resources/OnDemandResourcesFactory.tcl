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

oo::class create ::OnDemandResourcesFactory {
    superclass ::JObject
}

oo::define ::OnDemandResourcesFactory {
    method initFields_OnDemandResourcesFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_OnDemandResourcesFactory
    }
    

    method size {} {
        return 0
    }
    

    method remove {layerId} {
        return [::OnDemandResources::staticGet_NULL_ON_DEMAND_RESOURCES]
    }
}

namespace eval ::OnDemandResourcesFactory {
}


