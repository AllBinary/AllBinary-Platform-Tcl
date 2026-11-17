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

oo::class create ::LayerPlacementType {
    superclass ::JObject
}

oo::define ::LayerPlacementType {
    method initFields_LayerPlacementType {} {
        my jset type 0
        
        return
    }
    

    constructor {type} {
        next
        my initFields_LayerPlacementType
        my jset type $type
    }
    

    method getType {} {
        return [my jget type]
    }
    

    method setType {type} {
        my jset type $type
    }
}

namespace eval ::LayerPlacementType {
}


