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

oo::class create ::CommandTextItemArrayFactory {
    superclass ::JObject
}

oo::define ::CommandTextItemArrayFactory {
    method initFields_CommandTextItemArrayFactory {} {
        my jset list {}
        my jset visitorInterface {}
        my jset list [::BasicArrayListD new]
        
        return
    }
    

    constructor {visitorInterface} {
        next
        my initFields_CommandTextItemArrayFactory
        my jset visitorInterface $visitorInterface
    }
    

    method getInstance {vector backgroundBasicColor foregroundBasicColor} {
        set vectorUtil [::VectorUtil::getInstance]
        set size [$vectorUtil getSize $vector]
        [my jget list] clear
        set textItem {}
        set priorityLimit 7
        set displayInfo [::DisplayInfoSingleton::getInstance]
        set isLargeEnoughDisplayForBigMenu [expr {([expr {[$displayInfo isPortrait] && [expr {[$displayInfo getLastHeight] >= [[::ScreenInfo::getInstance] jget MEDIUM_WIDTH]}]}]) || ([expr {[expr {![$displayInfo isPortrait]}] && [expr {[$displayInfo getLastWidth] >= [[::ScreenInfo::getInstance] jget MEDIUM_WIDTH]}]}])}]
        if {[expr {[expr {!$isLargeEnoughDisplayForBigMenu}] && [expr {$size > 3}]}]} {
            set priorityLimit 3
        }
        set command {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set command [$vectorUtil elementAt $vector $index]
            if {[expr {[$command getPriority] < $priorityLimit}]} {
                set aBoolean [[my jget visitorInterface] visit $command]
                if {[$aBoolean booleanValue]} {
                    set textItem [::CommandTextItem new $command [::ImageItem::staticGet_LAYOUT_DEFAULT] [[::StringUtil::getInstance] jget EMPTY_STRING] $backgroundBasicColor $foregroundBasicColor]
                    [my jget list] add $textItem
                }
            }
        }
        set textItemArray [jarray [[my jget list] size] {}]
        set size2 [$textItemArray length]
        for {set index 0} {[expr {$index < $size2}]} {jpostincr index 1} {
            $textItemArray set $index [[[my jget list] jget objectArray] get $index]
        }
        return $textItemArray
    }
}

namespace eval ::CommandTextItemArrayFactory {
}


