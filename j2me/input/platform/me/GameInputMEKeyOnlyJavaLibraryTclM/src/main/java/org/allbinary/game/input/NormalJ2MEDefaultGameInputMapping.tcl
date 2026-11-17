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

oo::class create ::NormalJ2MEDefaultGameInputMapping {
    superclass ::PersistentInputMapping
}

oo::define ::NormalJ2MEDefaultGameInputMapping {
    method initFields_NormalJ2MEDefaultGameInputMapping {} {
        return
    }
    

    constructor {} {
        next [[::GamePersistanceStrings::getInstance] jget DEFAULT_INPUT_MAPPING_RECORD_ID]
        my initFields_NormalJ2MEDefaultGameInputMapping
        set inputToGameKeyMapping [my getInputMapping]
        set gameKeyFactory [::GameKeyFactory::getInstance]
        $inputToGameKeyMapping add [$gameKeyFactory jget UP] [$gameKeyFactory jget KEY_NUM2]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEFT] [$gameKeyFactory jget KEY_NUM4]
        $inputToGameKeyMapping add [$gameKeyFactory jget RIGHT] [$gameKeyFactory jget KEY_NUM6]
        $inputToGameKeyMapping add [$gameKeyFactory jget DOWN] [$gameKeyFactory jget KEY_NUM8]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM1] [$gameKeyFactory jget GAME_A]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM3] [$gameKeyFactory jget GAME_B]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM7] [$gameKeyFactory jget GAME_C]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM9] [$gameKeyFactory jget GAME_D]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEVEL_DOWN] [$gameKeyFactory jget LEVEL_DOWN]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEVEL_UP] [$gameKeyFactory jget LEVEL_UP]
        $inputToGameKeyMapping add [$gameKeyFactory jget UP] [$gameKeyFactory jget UP]
        $inputToGameKeyMapping add [$gameKeyFactory jget DOWN] [$gameKeyFactory jget DOWN]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEFT] [$gameKeyFactory jget LEFT]
        $inputToGameKeyMapping add [$gameKeyFactory jget RIGHT] [$gameKeyFactory jget RIGHT]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_POUND] [$gameKeyFactory jget KEY_POUND]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_STAR] [$gameKeyFactory jget KEY_STAR]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM1] [$gameKeyFactory jget KEY_NUM1]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM3] [$gameKeyFactory jget KEY_NUM3]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM5] [$gameKeyFactory jget KEY_NUM5]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM7] [$gameKeyFactory jget KEY_NUM7]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM9] [$gameKeyFactory jget KEY_NUM9]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM0] [$gameKeyFactory jget KEY_NUM0]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM1] [$gameKeyFactory jget FIRE]
    }
}

namespace eval ::NormalJ2MEDefaultGameInputMapping {
}


