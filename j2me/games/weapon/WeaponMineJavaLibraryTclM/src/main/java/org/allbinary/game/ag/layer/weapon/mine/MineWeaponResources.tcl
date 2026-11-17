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
# package org.allbinary.game.ag.layer.weapon.mine

oo::class create ::MineWeaponResources {
    superclass ::BasicGameResources
}

oo::define ::MineWeaponResources {
    method initFields_MineWeaponResources {} {
        my jset DROP_TEXT_RESOURCE {}
        my jset DROP_RESOURCE {}
        my jset DROP_ICON_RESOURCE {}
        my jset DROP_TEXT_RESOURCE "/mine_drop_text_20_by_20.png"
        my jset DROP_RESOURCE "/mine_drop_20_by_20.png"
        my jset DROP_ICON_RESOURCE "/mine_drop_icon_20_by_20.png"
        return
    }
    
    

    constructor {} {
        next
        my initFields_MineWeaponResources
        set ROOT "/mine"
        set SMALL "_20_by_20.png"
        set MEDIUM $SMALL
        set SIZE_FOUR $SMALL
        set SIZE_FIVE $SMALL
        set SIZE_SIX $SMALL
        set SIZE [jarrayfrom [list $SMALL $MEDIUM $SIZE_FOUR $SIZE_FIVE $SIZE_SIX]]
        next $ROOT $SIZE
    }
}

namespace eval ::MineWeaponResources {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        if {[expr {[::MineWeaponResources::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::MineWeaponResources::staticSet_instance [::MineWeaponResources new]
        }
        return [::MineWeaponResources::staticGet_instance]
    }
}


