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
# package org.allbinary.game.physics.friction

oo::class create ::FrictionData {
    superclass ::JObject
}

oo::define ::FrictionData {
    method initFields_FrictionData {} {
        return
    }
    

    constructor {} {
        next
        my initFields_FrictionData
    }
    
}

namespace eval ::FrictionData {
    variable FRICTION_DENOMINATORValue {}
    variable FRICTION_DENOMINATORSet 0
    proc staticGet_FRICTION_DENOMINATOR {} {
        variable FRICTION_DENOMINATORValue
        variable FRICTION_DENOMINATORSet
        if {!$FRICTION_DENOMINATORSet} {
            set FRICTION_DENOMINATORSet 1
            set FRICTION_DENOMINATORValue 100
        }
        return $FRICTION_DENOMINATORValue
    }
    proc staticSet_FRICTION_DENOMINATOR {value} {
        variable FRICTION_DENOMINATORValue
        variable FRICTION_DENOMINATORSet
        set FRICTION_DENOMINATORSet 1
        set FRICTION_DENOMINATORValue $value
    }
    proc getFrictionDenominator {} {
        return [::FrictionData::staticGet_FRICTION_DENOMINATOR]
    }
}


