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
# package org.allbinary.game.ag.life

oo::class create ::LifeVisitorInterface {
    superclass ::JObject
}

oo::define ::LifeVisitorInterface {
    method initFields_LifeVisitorInterface {} {
        return
    }
    

    method visit {lifeInterface} {
        error [jexception AbstractMethodError visit]
    }
}

namespace eval ::LifeVisitorInterface {
}


