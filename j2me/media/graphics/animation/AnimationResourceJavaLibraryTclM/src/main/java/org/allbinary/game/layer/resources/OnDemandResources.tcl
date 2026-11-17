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

oo::class create ::OnDemandResources {
    superclass ::JObject
}

oo::define ::OnDemandResources {
    method initFields_OnDemandResources {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_OnDemandResources
    }
    

    method waitFor {} {
    }
    

    method init {} {
    }
    

    method initAt {imageCache resourceAnimationInterfaceFactoryInterfaceFactory portion loadingString index} {
        return 0
    }
}

namespace eval ::OnDemandResources {
    variable NULL_ON_DEMAND_RESOURCESValue {}
    variable NULL_ON_DEMAND_RESOURCESSet 0
    proc staticGet_NULL_ON_DEMAND_RESOURCES {} {
        variable NULL_ON_DEMAND_RESOURCESValue
        variable NULL_ON_DEMAND_RESOURCESSet
        if {!$NULL_ON_DEMAND_RESOURCESSet} {
            set NULL_ON_DEMAND_RESOURCESSet 1
            set NULL_ON_DEMAND_RESOURCESValue [::OnDemandResources new]
        }
        return $NULL_ON_DEMAND_RESOURCESValue
    }
    proc staticSet_NULL_ON_DEMAND_RESOURCES {value} {
        variable NULL_ON_DEMAND_RESOURCESValue
        variable NULL_ON_DEMAND_RESOURCESSet
        set NULL_ON_DEMAND_RESOURCESSet 1
        set NULL_ON_DEMAND_RESOURCESValue $value
    }
}


