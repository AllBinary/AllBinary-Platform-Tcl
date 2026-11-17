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
# package org.allbinary.graphics.form.item

oo::class create ::CustomTextBox {
    superclass ::GameCommandCanvas
}

oo::define ::CustomTextBox {
    method initFields_CustomTextBox {} {
        my jset textFieldItem {}
        my jset inputFactory {}
        
        my jset inputFactory [::InputFactory::getInstance]
        return
    }
    

    constructor {cmdListener label text maxSize constraints font backgroundBasicColor foregroundBasicColor} {
        next $cmdListener $label $backgroundBasicColor $foregroundBasicColor
        my initFields_CustomTextBox
        set stringUtil [::StringUtil::getInstance]
        set textFieldItem [::ABTextFieldItem new [self] [::TextItemVisitor new] [$stringUtil jget EMPTY_STRING] [$stringUtil jget EMPTY_STRING] $maxSize 0 [$stringUtil jget EMPTY_STRING] $font $backgroundBasicColor $foregroundBasicColor]
        $textFieldItem setString $text
        my jset textFieldItem $textFieldItem
        my setTitle $label
    }
    

    method submit {} {
    }
    

    method onEventRaw {keyCode deviceId repeated} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[my jget commonStrings] jget START]] appendint $keyCode] toString] [self] "onEvent"
        my keyPressedByDevice $keyCode $deviceId
    }
    

    method keyPressed {keyCode} {
        my keyPressedByDevice $keyCode 0
    }
    

    method keyReleased {keyCode} {
        my keyReleasedByDevice $keyCode 0
    }
    

    method keyRepeated {keyCode} {
        my keyRepeatedByDevice $keyCode 0
    }
    

    method keyPressedByDevice {keyCode deviceId} {
        try {
            [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonSeps::getInstance] jget SPACE]] appendint $keyCode] toString] [self] [[my jget gameInputStrings] jget KEY_PRESSED]
            set platformKeyFactory [::PlatformKeyFactory::getInstance]
            set input [[my jget inputFactory] getInstanceById $keyCode]
            if {[$platformKeyFactory isSubmission $input]} {
                my submit
            } else {
                [my jget textFieldItem] keyPressed $keyCode
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget gameInputStrings] jget KEY_PRESSED] $e
        }
    }
    

    method keyReleasedByDevice {keyCode deviceId} {
    }
    

    method paint {graphics} {
        $graphics setColor [my jget backgroundColor]
        $graphics fillRect 0 0 [[my jget displayInfo] getLastWidth] [[my jget displayInfo] getLastHeight]
        $graphics setColor [my jget foregroundColor]
        if {[expr {![::J2MEUtil::isJ2ME]}]} {
            $graphics drawString [my getTitle] 8 1 0
        }
        my paintXY $graphics 8 [expr {[[$graphics getFont] getHeight] + 2}]
        next $graphics
    }
    

    method paintXY {graphics x y} {
        [my jget textFieldItem] paintXY $graphics $x $y
    }
    

    method getTextFieldItem {} {
        return [my jget textFieldItem]
    }
}

namespace eval ::CustomTextBox {
}


