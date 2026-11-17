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
# package org.allbinary.game.displayable.canvas

oo::class create ::PopupCommandFormInputProcessor {
    superclass ::CommandFormInputProcessor
}

oo::define ::PopupCommandFormInputProcessor {
    method initFields_PopupCommandFormInputProcessor {} {
        return
    }
    

    constructor {gameKeyEventList playerInputId gameCanvas form popupMenuInputProcessor} {
        next $gameKeyEventList $playerInputId $gameCanvas $form
        my initFields_PopupCommandFormInputProcessor
    }
    

    method processInput {key} {
        return [next $key]
    }
    

    method processMotionInput {motionGestureEvent} {
        next $motionGestureEvent
    }
}

namespace eval ::PopupCommandFormInputProcessor {
}


