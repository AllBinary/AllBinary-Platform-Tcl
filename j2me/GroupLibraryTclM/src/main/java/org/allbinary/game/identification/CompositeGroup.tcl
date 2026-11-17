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
# package org.allbinary.game.identification

oo::class create ::CompositeGroup {
    superclass ::JObject
}

oo::define ::CompositeGroup {
    method initFields_CompositeGroup {} {
        my jset logUtil {}
        my jset groupInterface {}
        my jset list {}
        my jset logUtil [::LogUtil::getInstance]
        
        my jset list [::BasicArrayListD new]
        return
    }
    

    constructor {groupInterface} {
        next
        my initFields_CompositeGroup
        my jset groupInterface $groupInterface
    }
    

    method clear {} {
        [my jget list] clear
    }
    

    method add {groupInterface} {
        set commonStrings [::CommonStrings::getInstance]
        set groupCommonFactory [::GroupCommonFactory::getInstance]
        set stringBuffer [::StringMaker new]
        $stringBuffer append [$groupCommonFactory jget ADDING_LABEL]
        $stringBuffer append [$groupInterface toString]
        $stringBuffer append [$groupCommonFactory jget TO_LABEL]
        $stringBuffer append [[::StringUtil::getInstance] toString1 [my jget groupInterface]]
        [my jget logUtil] putF [$stringBuffer toString] [self] [$commonStrings jget ADD]
        [my jget list] add $groupInterface
    }
    

    method isInGroup {groupInterface} {
        if {[[my jget list] contains $groupInterface]} {
            return true
        } else {
            return false
        }
    }
    

    method getGroup {} {
        return [my jget groupInterface]
    }
}

namespace eval ::CompositeGroup {
}


