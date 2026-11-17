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
# package org.allbinary.game.input

oo::class create ::Input {
    superclass ::JObject
}

oo::define ::Input {
    method initFields_Input {} {
        my jset id 0
        my jset name {}
        my jset id 0
        my jset name [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }
    

    constructor {id name} {
        next
        my initFields_Input
        my setId $id
        my setName $name
    }
    

    method getId {} {
        return [my jget id]
    }
    

    method setId {key} {
        my jset id $key
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method setName {keyName} {
        my jset name $keyName
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "Name: "
        $stringBuffer append [my getName]
        $stringBuffer append " Id: "
        $stringBuffer appendint [my getId]
        return [$stringBuffer toString]
    }
}

namespace eval ::Input {
}


