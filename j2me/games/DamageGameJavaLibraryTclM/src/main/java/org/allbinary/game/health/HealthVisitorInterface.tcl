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
# package org.allbinary.game.health

oo::class create ::HealthVisitorInterface {
    superclass ::JObject
}

oo::define ::HealthVisitorInterface {
    method initFields_HealthVisitorInterface {} {
        return
    }
    

    method visit {healthInterface} {
        error [jexception AbstractMethodError visit]
    }
}

namespace eval ::HealthVisitorInterface {
}


