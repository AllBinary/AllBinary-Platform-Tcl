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
# package org.allbinary.midlet

oo::class create ::AllBinaryMidlet {
    superclass ::MIDlet
}

oo::define ::AllBinaryMidlet {
    method initFields_AllBinaryMidlet {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset SET_DISPLAY {}
        my jset SETTING_ {}
        my jset _DISPLAY_ {}
        my jset SETTING_NO_TITLE {}
        my jset hashtable {}
        my jset midletDestroyed false
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset SET_DISPLAY "setDisplay"
        my jset SETTING_ "Setting: "
        my jset _DISPLAY_ " Display: "
        my jset SETTING_NO_TITLE "Setting: No Title, Display: "
        my jset hashtable [[::StdUtil::getInstance] createHashtable]
        my jset midletDestroyed false
        return
    }
    
    

    constructor {} {
        next
        my initFields_AllBinaryMidlet
        [my jget logUtil] putF [[my jget commonStrings] jget CONSTRUCTOR] [self] "AllBinaryMidlet::AllBinaryMidlet"
    }
    

    method setDisplay {newDisplay} {
        set title [[::StringUtil::getInstance] jget EMPTY_STRING]
        if {[expr {$newDisplay ne [::NullCanvas::staticGet_NULL_CANVAS]}]} {
            set title [$newDisplay getTitle]
            [my jget logUtil] putF [[[[[[::StringMaker new] append [my jget SETTING_]] append $title] append [my jget _DISPLAY_]] append [[::StringUtil::getInstance] toString1 $newDisplay]] toString] [self] [my jget SET_DISPLAY]
        }
        set display [my getDisplay]
        $display setCurrent $newDisplay
    }
    

    method getDisplay {} {
        return [::Display::getDisplay [self]]
    }
    

    method getCurrentDisplayable {} {
        return [[::Display::getDisplay [self]] getCurrent]
    }
    

    method setDestroyed {destroyed} {
        my jset midletDestroyed $destroyed
    }
    

    method isDestroyed {} {
        return [my jget midletDestroyed]
    }
    

    method startApp {} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method pauseApp {} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method destroyAppInRunnable {unconditional isProgress} {
    }
    

    method destroyApp {unconditional} {
        set METHOD_NAME "AllBinaryMidlet::destroyApp"
        try {
            [my jget logUtil] putF [[my jget commonStrings] jget START] [self] $METHOD_NAME
            ::PreLogUtil::put [::Memory::getInfo] [self] $METHOD_NAME
            my setDestroyed true
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] $METHOD_NAME $e
        }
    }
    

    method setStartStateHashtable {hashtable} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget START_LABEL]] append [[::StringUtil::getInstance] toString1 $hashtable]] toString] [self] "setStartStateHashtable"
        my jset hashtable $hashtable
    }
    

    method getStartStateHashtable {} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget START_LABEL]] append [[::StringUtil::getInstance] toString1 [my jget hashtable]]] toString] [self] "getStartStateHashtable"
        return [my jget hashtable]
    }
    

    method getCurrentStateHashtable {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] "getStateHashtable"
        return [[::StdUtil::getInstance] jget NULL_TABLE]
    }
    

    method commandAction {command displayable} {
    }
}

namespace eval ::AllBinaryMidlet {
    variable NULL_ALLBINARY_MIDLETValue {}
    variable NULL_ALLBINARY_MIDLETSet 0
    proc staticGet_NULL_ALLBINARY_MIDLET {} {
        variable NULL_ALLBINARY_MIDLETValue
        variable NULL_ALLBINARY_MIDLETSet
        if {!$NULL_ALLBINARY_MIDLETSet} {
            set NULL_ALLBINARY_MIDLETSet 1
            set NULL_ALLBINARY_MIDLETValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $NULL_ALLBINARY_MIDLETValue
    }
    proc staticSet_NULL_ALLBINARY_MIDLET {value} {
        variable NULL_ALLBINARY_MIDLETValue
        variable NULL_ALLBINARY_MIDLETSet
        set NULL_ALLBINARY_MIDLETSet 1
        set NULL_ALLBINARY_MIDLETValue $value
    }
    proc getNullInstance {} {
        if {[expr {[::AllBinaryMidlet::staticGet_NULL_ALLBINARY_MIDLET] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::AllBinaryMidlet::staticSet_NULL_ALLBINARY_MIDLET [::AllBinaryMidlet new]
        }
        return [::AllBinaryMidlet::staticGet_NULL_ALLBINARY_MIDLET]
    }
}


