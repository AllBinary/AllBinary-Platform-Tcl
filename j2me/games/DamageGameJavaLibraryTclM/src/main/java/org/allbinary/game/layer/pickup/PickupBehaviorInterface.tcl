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
# package org.allbinary.game.layer.pickup

oo::class create ::PickupBehaviorInterface {
    superclass ::JObject
}

oo::define ::PickupBehaviorInterface {
    method initFields_PickupBehaviorInterface {} {
        return
    }
    

    method doPickup {pickupProcessorInterface} {
        error [jexception AbstractMethodError doPickup]
    }
    

    method doPickupLayer {pickupLayerInterface} {
        error [jexception AbstractMethodError doPickupLayer]
    }
}

namespace eval ::PickupBehaviorInterface {
}


