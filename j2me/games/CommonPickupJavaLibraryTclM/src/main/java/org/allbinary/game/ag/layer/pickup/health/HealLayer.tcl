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
# package org.allbinary.game.ag.layer.pickup.health

oo::class create ::HealLayer {
    superclass ::AllBinaryLayer
}

oo::define ::HealLayer {
    method initFields_HealLayer {} {
        return
    }
    

    constructor {} {
        next [[::StringUtil::getInstance] jget EMPTY_STRING] [::Rectangle new [[::PointFactory::getInstance] jget ZERO_ZERO] 0 0] [::ViewPosition::getInstanceD]
        my initFields_HealLayer
    }
    

    method paint {graphics} {
    }
    

    method visit {healthInterface} {
        if {[$healthInterface isAlive]} {
            $healthInterface healMax
        } else {
            [my jget logUtil] putF "Heal attempt on dead: Does not currently occur" [self] "visit"
        }
    }
}

namespace eval ::HealLayer {
}


