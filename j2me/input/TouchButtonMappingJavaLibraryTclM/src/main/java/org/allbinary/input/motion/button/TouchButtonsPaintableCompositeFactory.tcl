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
# package org.allbinary.input.motion.button

oo::class create ::TouchButtonsPaintableCompositeFactory {
    superclass ::JObject
}

oo::define ::TouchButtonsPaintableCompositeFactory {
    method initFields_TouchButtonsPaintableCompositeFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_TouchButtonsPaintableCompositeFactory
    }
    
}

namespace eval ::TouchButtonsPaintableCompositeFactory {
    proc getInstance {inputMappingInterface basicColor} {
        return [::TouchButtonsPaintableComposite new $inputMappingInterface $basicColor]
    }
}


