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

oo::class create ::MotionLaptopDefaultGameInputMapping {
    superclass ::PersistentInputMapping
}

oo::define ::MotionLaptopDefaultGameInputMapping {
    method initFields_MotionLaptopDefaultGameInputMapping {} {
        return
    }
    

    constructor {} {
        next [[::GamePersistanceStrings::getInstance] jget DEFAULT_INPUT_MAPPING_RECORD_ID]
        my initFields_MotionLaptopDefaultGameInputMapping
        set pcKeyFactory [::PCKeyFactory::getInstance]
        set inputToGameKeyMapping [my getInputMapping]
        set gameKeyFactory [::GameKeyFactory::getInstance]
        set touchMotionGestureFactory [::TouchMotionGestureFactory::getInstance]
        set basicTouchInputFactory [::BasicTouchInputFactory::getInstance]
        $inputToGameKeyMapping add [$gameKeyFactory jget FIRE] [$pcKeyFactory jget ENTER]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM1] [$pcKeyFactory jget FOUR]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM1] [$pcKeyFactory jget _P]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM1] [$pcKeyFactory jget p]
        $inputToGameKeyMapping add [$gameKeyFactory jget UP] [$pcKeyFactory jget DPAD_UP]
        $inputToGameKeyMapping add [$gameKeyFactory jget DOWN] [$pcKeyFactory jget DPAD_DOWN]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEFT] [$pcKeyFactory jget DPAD_LEFT]
        $inputToGameKeyMapping add [$gameKeyFactory jget RIGHT] [$pcKeyFactory jget DPAD_RIGHT]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM7] [$pcKeyFactory jget _Y]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM9] [$pcKeyFactory jget _I]
        $inputToGameKeyMapping add [$gameKeyFactory jget UP] [$pcKeyFactory jget _U]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEFT] [$pcKeyFactory jget _H]
        $inputToGameKeyMapping add [$gameKeyFactory jget RIGHT] [$pcKeyFactory jget _J]
        $inputToGameKeyMapping add [$gameKeyFactory jget DOWN] [$pcKeyFactory jget _N]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM5] [$pcKeyFactory jget _M]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM7] [$pcKeyFactory jget y]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM9] [$pcKeyFactory jget i]
        $inputToGameKeyMapping add [$gameKeyFactory jget UP] [$pcKeyFactory jget u]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEFT] [$pcKeyFactory jget h]
        $inputToGameKeyMapping add [$gameKeyFactory jget RIGHT] [$pcKeyFactory jget j]
        $inputToGameKeyMapping add [$gameKeyFactory jget DOWN] [$pcKeyFactory jget n]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM5] [$pcKeyFactory jget m]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM7] [$pcKeyFactory jget _Q]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM9] [$pcKeyFactory jget _E]
        $inputToGameKeyMapping add [$gameKeyFactory jget UP] [$pcKeyFactory jget _W]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEFT] [$pcKeyFactory jget _A]
        $inputToGameKeyMapping add [$gameKeyFactory jget RIGHT] [$pcKeyFactory jget _D]
        $inputToGameKeyMapping add [$gameKeyFactory jget DOWN] [$pcKeyFactory jget _S]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM5] [$pcKeyFactory jget _X]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM7] [$pcKeyFactory jget q]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM9] [$pcKeyFactory jget e]
        $inputToGameKeyMapping add [$gameKeyFactory jget UP] [$pcKeyFactory jget w]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEFT] [$pcKeyFactory jget a]
        $inputToGameKeyMapping add [$gameKeyFactory jget RIGHT] [$pcKeyFactory jget d]
        $inputToGameKeyMapping add [$gameKeyFactory jget DOWN] [$pcKeyFactory jget s]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM5] [$pcKeyFactory jget x]
        $inputToGameKeyMapping add [$gameKeyFactory jget UP] [$touchMotionGestureFactory jget UP]
        $inputToGameKeyMapping add [$gameKeyFactory jget DOWN] [$touchMotionGestureFactory jget DOWN]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEFT] [$touchMotionGestureFactory jget LEFT]
        $inputToGameKeyMapping add [$gameKeyFactory jget RIGHT] [$touchMotionGestureFactory jget RIGHT]
        $inputToGameKeyMapping add [$gameKeyFactory jget UP] [$basicTouchInputFactory jget UP]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEFT] [$basicTouchInputFactory jget LEFT]
        $inputToGameKeyMapping add [$gameKeyFactory jget RIGHT] [$basicTouchInputFactory jget RIGHT]
        $inputToGameKeyMapping add [$gameKeyFactory jget DOWN] [$basicTouchInputFactory jget DOWN]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM0] [$basicTouchInputFactory jget SPECIAL_BUTTON_FIVE]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM7] [$basicTouchInputFactory jget SPECIAL_BUTTON_FOUR]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM9] [$basicTouchInputFactory jget SPECIAL_BUTTON_THREE]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM1] [$basicTouchInputFactory jget SPECIAL_BUTTON_TWO]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM3] [$basicTouchInputFactory jget SPECIAL_BUTTON_ONE]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM2] [$basicTouchInputFactory jget SPECIAL_BUTTON_SIX]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM3] [$pcKeyFactory jget THREE]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM0] [$pcKeyFactory jget ZERO]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM0] [$pcKeyFactory jget ONE]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM0] [$pcKeyFactory jget SPACE]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_POUND] [$pcKeyFactory jget DEL]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_POUND] [$pcKeyFactory jget TWO]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_STAR] [$pcKeyFactory jget ESCAPE]
        $inputToGameKeyMapping add [$gameKeyFactory jget KEY_STAR] [$pcKeyFactory jget STAR]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEVEL_DOWN] [$pcKeyFactory jget COMMA]
        $inputToGameKeyMapping add [$gameKeyFactory jget LEVEL_UP] [$pcKeyFactory jget PERIOD]
    }
}

namespace eval ::MotionLaptopDefaultGameInputMapping {
}


