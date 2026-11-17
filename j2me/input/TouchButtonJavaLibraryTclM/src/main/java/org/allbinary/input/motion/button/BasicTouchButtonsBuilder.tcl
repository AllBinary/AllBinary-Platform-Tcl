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
# package org.allbinary.input.motion.button

oo::class create ::BasicTouchButtonsBuilder {
    superclass ::BaseTouchInput
}

oo::define ::BasicTouchButtonsBuilder {
    method initFields_BasicTouchButtonsBuilder {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_BasicTouchButtonsBuilder
    }
    

    method getList {} {
        try {
            [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
            set list [::BasicArrayListD new]
            set commonButtons [::CommonButtons::getInstance]
            set touchButtonLocationHelper [::TouchButtonLocationHelper new]
            set basicTouchButtonCellPositionFactory [::BasicTouchButtonCellPositionFactory new]
            set UP [::TouchButton::createButton [[::BasicTouchInputFactory::getInstance] jget UP] [::TouchButtonUpResource::getInstance] [$commonButtons jget NORMAL_BUTTON] [$basicTouchButtonCellPositionFactory jget SECOND_FROM_BOTTOM_LEFT] [$touchButtonLocationHelper getColumnsRemainderHalf] [$touchButtonLocationHelper getRowsRemainderHalf]]
            set DOWN [::TouchButton::createButton [[::BasicTouchInputFactory::getInstance] jget DOWN] [::TouchButtonDownResource::getInstance] [$commonButtons jget NORMAL_BUTTON] [$basicTouchButtonCellPositionFactory jget BOTTOM_LEFT] [$touchButtonLocationHelper getColumnsRemainderHalf] [$touchButtonLocationHelper getRowsRemainderHalf]]
            set LEFT [::TouchButton::createButton [[::BasicTouchInputFactory::getInstance] jget SPECIAL_BUTTON_FOUR] [::TouchButtonTurnLeftResource::getInstance] [$commonButtons jget NORMAL_BUTTON] [$basicTouchButtonCellPositionFactory jget BOTTOM_SECOND_FROM_RIGHT] [$touchButtonLocationHelper getColumnsRemainderHalf] [$touchButtonLocationHelper getRowsRemainderHalf]]
            set RIGHT [::TouchButton::createButton [[::BasicTouchInputFactory::getInstance] jget SPECIAL_BUTTON_THREE] [::TouchButtonTurnRightResource::getInstance] [$commonButtons jget NORMAL_BUTTON] [$basicTouchButtonCellPositionFactory jget BOTTOM_RIGHT] [$touchButtonLocationHelper getColumnsRemainderHalf] [$touchButtonLocationHelper getRowsRemainderHalf]]
            $list add $UP
            $list add $LEFT
            $list add $RIGHT
            $list add $DOWN
            return $list
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget GET_LIST] $e
            return [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        }
    }
}

namespace eval ::BasicTouchButtonsBuilder {
}


