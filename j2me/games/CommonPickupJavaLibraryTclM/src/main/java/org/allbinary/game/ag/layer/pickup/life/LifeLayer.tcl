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
# package org.allbinary.game.ag.layer.pickup.life

oo::class create ::LifeLayer {
    superclass ::AllBinaryLayer
}

oo::define ::LifeLayer {
    method initFields_LifeLayer {} {
        return
    }
    

    constructor {} {
        next [[::StringUtil::getInstance] jget EMPTY_STRING] [::Rectangle new [[::PointFactory::getInstance] jget ZERO_ZERO] 0 0] [::ViewPosition::getInstanceD]
        my initFields_LifeLayer
    }
    

    method paint {graphics} {
    }
    

    method visit {lifeInterface} {
        $lifeInterface add [jshort 1]
    }
}

namespace eval ::LifeLayer {
}


