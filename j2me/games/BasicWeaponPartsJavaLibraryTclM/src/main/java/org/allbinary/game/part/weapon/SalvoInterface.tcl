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
# package org.allbinary.game.part.weapon

oo::class create ::SalvoInterface {
    superclass ::JObject
}

oo::define ::SalvoInterface {
    method initFields_SalvoInterface {} {
        return
    }
    

    method process {allbinaryLayerManager angle otherAngle} {
        error [jexception AbstractMethodError process]
    }
    

    method processScore {allbinaryLayerManager angle otherAngle weaponProperties scoreableInterface} {
        error [jexception AbstractMethodError processScore]
    }
}

namespace eval ::SalvoInterface {
}


