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
# package org.allbinary.game.score

oo::class create ::HighScore {
    superclass ::JObject
}

oo::define ::HighScore {
    method initFields_HighScore {} {
        my jset id 0
        my jset name {}
        my jset gameInfo {}
        my jset score 0
        my jset scoreString {}
        
        
        
        
        
        return
    }
    

    constructor {id name gameInfo score} {
        next
        my initFields_HighScore
        my jset id $id
        my jset name $name
        my jset gameInfo $gameInfo
        my jset score $score
        my jset scoreString [jstr [my jget score]]
    }
    

    method getId {} {
        return [my jget id]
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method getScore {} {
        return [my jget score]
    }
    

    method getAsBytes {} {
        set byteArrayOutputStream [::ByteArrayOutputStream new]
        set outputStream [::DataOutputStream new $byteArrayOutputStream]
        $outputStream writeUTF [my getName]
        $outputStream writeLong [my getScore]
        return [$byteArrayOutputStream toByteArray]
    }
    

    method getGameInfo {} {
        return [my jget gameInfo]
    }
    

    method getScoreString {} {
        return [my jget scoreString]
    }
    

    method setName {name} {
        my jset name $name
    }
    

    method toString {} {
        set commonSeps [::CommonSeps::getInstance]
        return [[[[[[[::StringMaker new] append [my jget name]] append [$commonSeps jget COLON]] appendlong [my jget score]] append [$commonSeps jget FORWARD_SLASH]] append [my jget scoreString]] toString]
    }
}

namespace eval ::HighScore {
}


