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

oo::class create ::GameInputMappingInstructionsCanvas {
    superclass ::GameCommandCanvas
}

oo::define ::GameInputMappingInstructionsCanvas {
    method initFields_GameInputMappingInstructionsCanvas {} {
        my jset drawStringUtil {}
        my jset TITLE {}
        my jset instructions {}
        my jset colorFillPaintable {}
        my jset anchor 0
        my jset drawStringUtil [::DrawStringUtil::getInstance]
        my jset TITLE "Input Instructions"
        my jset instructions [jarrayfrom [list "Add Input Mapping:" "1. Select the desired action by generating a currently defined input for a given action." "(Example: Press the '1' key to select the Fire action)" "2. Make the newly desired input for the selected action." "(Example: Press 'f' to add it to the selected action)" "Note: If the input is already mapped to another action then it will not be added. You" "will need to deleted from the other action before adding it to another." "Warning: Not all keys map for a given platform and show as Unknown." [[::StringUtil::getInstance] jget EMPTY_STRING] "Remove Input Mapping:" "1. Select the desired action by generating a currently defined input for a given action." "(Example: Press the key '1' to select the Fire action)" "2. Select a mapped input for the selected action." "(Example: Press the key '1' to select the '1' key input for the selected Fire action)" "3. Press the Delete Key."]]
        
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }
    

    constructor {commandListener allBinaryGameLayerManager} {
        next $commandListener [::GameInputMappingInstructionsCanvas::staticGet_NAME] [$allBinaryGameLayerManager getBackgroundBasicColor] [$allBinaryGameLayerManager getForegroundBasicColor]
        my initFields_GameInputMappingInstructionsCanvas
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        my jset colorFillPaintable [[::ColorFillPaintableFactory::getInstance] getInstance [$allBinaryGameLayerManager getBackgroundBasicColor] false]
    }
    

    method initCommands {cmdListener} {
        my removeAllCommands
        my addCommand [::GameInputMappingInstructionsCanvas::staticGet_CLOSE]
        my setCommandListener $cmdListener
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        [my jget colorFillPaintable] paint $graphics
        set halfWidth [[my jget displayInfo] getLastHalfWidth]
        set beginWidth ([expr {[[$graphics getFont] stringWidth [my jget TITLE]] >> 1}])
        $graphics setColor [my jget foregroundColor]
        $graphics drawString [my jget TITLE] [jint [expr {$halfWidth - $beginWidth}]] [my jget fontHeight] [my jget anchor]
        [my jget drawStringUtil] drawCenterStrings $graphics [my jget instructions] [[my jget displayInfo] getLastWidth] [my jget fontHeight] $halfWidth [expr {3 * [my jget fontHeight]}]
        next $graphics
    }
}

namespace eval ::GameInputMappingInstructionsCanvas {
    variable DISPLAYValue {}
    variable DISPLAYSet 0
    proc staticGet_DISPLAY {} {
        variable DISPLAYValue
        variable DISPLAYSet
        if {!$DISPLAYSet} {
            set DISPLAYSet 1
            set DISPLAYValue [::Command new "Help" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        }
        return $DISPLAYValue
    }
    proc staticSet_DISPLAY {value} {
        variable DISPLAYValue
        variable DISPLAYSet
        set DISPLAYSet 1
        set DISPLAYValue $value
    }
    variable CLOSEValue {}
    variable CLOSESet 0
    proc staticGet_CLOSE {} {
        variable CLOSEValue
        variable CLOSESet
        if {!$CLOSESet} {
            set CLOSESet 1
            set CLOSEValue [::Command new "Close" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        }
        return $CLOSEValue
    }
    proc staticSet_CLOSE {value} {
        variable CLOSEValue
        variable CLOSESet
        set CLOSESet 1
        set CLOSEValue $value
    }
    variable NAMEValue {}
    variable NAMESet 0
    proc staticGet_NAME {} {
        variable NAMEValue
        variable NAMESet
        if {!$NAMESet} {
            set NAMESet 1
            set NAMEValue "GameInputMappingInstructionsCanvas"
        }
        return $NAMEValue
    }
    proc staticSet_NAME {value} {
        variable NAMEValue
        variable NAMESet
        set NAMESet 1
        set NAMEValue $value
    }
}


