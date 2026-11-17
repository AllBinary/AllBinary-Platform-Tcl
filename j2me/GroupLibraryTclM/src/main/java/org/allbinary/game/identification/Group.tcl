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

oo::class create ::Group {
    superclass ::JObject
}

oo::define ::Group {
    method initFields_Group {} {
        my jset name {}
        my jset teamId 0
        my jset string {}
        my jset name [[::StringUtil::getInstance] jget EMPTY_STRING]
        
        my jset string [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }
    

    constructor {teamName teamId} {
        next
        my initFields_Group
        my jset teamId $teamId
        my setName $teamName
    }
    

    method getGroupName {} {
        return [my jget name]
    }
    

    method setName {name} {
        my jset name $name
        set groupCommonFactory [::GroupCommonFactory::getInstance]
        set stringBuffer [::StringMaker new]
        $stringBuffer append [$groupCommonFactory jget GROUP_NAME_LABEL]
        $stringBuffer append [my jget name]
        $stringBuffer append [$groupCommonFactory jget ID_LABEL]
        $stringBuffer appendshort [my jget teamId]
        my jset string [$stringBuffer toString]
    }
    

    method getGroupId {} {
        return [my jget teamId]
    }
    

    method toString {} {
        return [my jget string]
    }
}

namespace eval ::Group {
}


