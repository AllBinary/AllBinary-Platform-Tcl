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
# package org.allbinary.game.input.mapping

oo::class create ::InputToGameKeyMapping {
    superclass ::InputMapping
}

oo::define ::InputToGameKeyMapping {
    method initFields_InputToGameKeyMapping {} {
        my jset gameKeyFactory {}
        my jset mappedGameKeys {}
        my jset platformToGameKeyMapping {}
        my jset negativePlatformToGameKeyMapping {}
        my jset gameKeyFactory [::GameKeyFactory::getInstance]
        my jset mappedGameKeys [jarrayfrom [list [[my jget gameKeyFactory] jget UP] [[my jget gameKeyFactory] jget DOWN] [[my jget gameKeyFactory] jget LEFT] [[my jget gameKeyFactory] jget RIGHT]]]
        my jset platformToGameKeyMapping [jarray [[::InputFactory::getInstance] jget MAX] {}]
        my jset negativePlatformToGameKeyMapping [jarray 0 {}]
        return
    }
    
    

    constructor {} {
        next
        my initFields_InputToGameKeyMapping
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        my clear
    }
    

    method clear {} {
        for {set index [jint [expr {[[my jget platformToGameKeyMapping] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [my jget platformToGameKeyMapping] set $index [[my jget gameKeyFactory] jget NONE]
        }
    }
    

    method removeAll {} {
        next
        my clear
    }
    

    method addMapping {inputToGameKeyMapping} {
        for {set index [jint [expr {[$inputToGameKeyMapping getMaxMappable] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set input [$inputToGameKeyMapping getInstance $index]
            if {[expr {$input ne [[my jget gameKeyFactory] jget NONE]}]} {
                my addAll $input [$inputToGameKeyMapping getMappedInput $input]
            }
        }
    }
    

    method addAll {input list} {
        for {set index [jint [expr {[$list size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set mappedToInput [[$list jget objectArray] get $index]
            my add $input $mappedToInput
        }
    }
    

    method add {input mappedToInput} {
        next $input $mappedToInput
        my set $input $mappedToInput
    }
    

    method remove {input mappedToInput} {
        [my jget logUtil] putF [[[[[[::StringMaker new] append [[::CommonLabels::getInstance] jget START_LABEL]] append [[::StringUtil::getInstance] toString1 $input]] append " == "] append [[::StringUtil::getInstance] toString1 $mappedToInput]] toString] [self] "InputToGameKeyMapping::remove"
        next $input $mappedToInput
        my set $input [[my jget gameKeyFactory] jget NONE]
    }
    

    method set {input mappedToInput} {
        set id [$mappedToInput getId]
        if {[expr {[expr {$id >= 0}] && [expr {$id < [[my jget platformToGameKeyMapping] length]}]}]} {
            [my jget platformToGameKeyMapping] set $id $input
        }
    }
    

    method getMaxMappable {} {
        return [[my jget platformToGameKeyMapping] length]
    }
    

    method getReverseInstance {id} {
        set list [::BasicArrayListD new]
        set inputFactory [::InputFactory::getInstance]
        for {set index 0} {[expr {$index < [[my jget platformToGameKeyMapping] length]}]} {jpostincr index 1} {
            if {[expr {[[[my jget platformToGameKeyMapping] get $index] getId] == $id}]} {
                set input [$inputFactory getInstanceById $index]
                if {[expr {$input ne {}}]} {
                    $list add $input
                }
            }
        }
        return $list
    }
    

    method initGameKey {canvas gameKey} {
        set key [$canvas getKeyCode [$gameKey getId]]
        if {[expr {[expr {$key < 0}] && [expr {[expr {-$key}] < [[my jget negativePlatformToGameKeyMapping] length]}]}]} {
            [my jget negativePlatformToGameKeyMapping] set [expr {-$key}] $gameKey
        } elseif {[expr {$key > 0}]} {
            if {[expr {[[my jget platformToGameKeyMapping] get $key] eq [[my jget gameKeyFactory] jget NONE]}]} {
                [my jget platformToGameKeyMapping] set $key $gameKey
            }
        } else {
            ::PreLogUtil::putOE [[[[[::StringMaker new] append [$gameKey toString]] append [[::CommonSeps::getInstance] jget COLON_SEP]] appendint $key] toString] [self] [[my jget commonStrings] jget INIT] [jexception Exception {}]
        }
    }
    

    method getSmallestCanvasGameKeyCode {canvas} {
        set nextKey 0
        set smallestKey 0
        for {set index [[my jget mappedGameKeys] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set nextKey [$canvas getKeyCode [[[my jget mappedGameKeys] get $index] getId]]
            if {[expr {$nextKey < $smallestKey}]} {
                set smallestKey $nextKey
            }
        }
        return $smallestKey
    }
    

    method init {canvas} {
        try {
            set negativePlatformToGameKeyMapping [jarray 0 {}]
            set smallestKey [my getSmallestCanvasGameKeyCode $canvas]
            if {[expr {$smallestKey < 0}]} {
                jpostincr smallestKey -1
                if {[expr {$smallestKey < [expr {-256}]}]} {
                    set smallestKey [expr {-256}]
                }
                set negativePlatformToGameKeyMapping [jarray [expr {-$smallestKey}] {}]
                for {set index [$negativePlatformToGameKeyMapping length]} {[expr {[jpreincr index -1] >= 0}]} {} {
                    $negativePlatformToGameKeyMapping set $index [[my jget gameKeyFactory] jget NONE]
                }
                my jset negativePlatformToGameKeyMapping $negativePlatformToGameKeyMapping
            }
            for {set index [[my jget mappedGameKeys] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
                my initGameKey $canvas [[my jget mappedGameKeys] get $index]
            }
        } on error {t} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget INIT] $t
        }
    }
    

    method getInstanceForCanvas {canvas id} {
        if {[expr {[expr {$id >= 0}] && [expr {$id < [[my jget platformToGameKeyMapping] length]}]}]} {
            return [[my jget platformToGameKeyMapping] get $id]
        } elseif {[expr {[expr {$id < 0}] && [expr {[expr {-$id}] < [[my jget negativePlatformToGameKeyMapping] length]}]}]} {
            return [[my jget negativePlatformToGameKeyMapping] get [expr {-$id}]]
        } else {
            return [[my jget gameKeyFactory] jget NONE]
        }
    }
    

    method getInstance {id} {
        if {[expr {[expr {$id >= 0}] && [expr {$id < [[my jget platformToGameKeyMapping] length]}]}]} {
            return [[my jget platformToGameKeyMapping] get $id]
        } elseif {[expr {[expr {$id < 0}] && [expr {[expr {-$id}] < [[my jget negativePlatformToGameKeyMapping] length]}]}]} {
            return [[my jget negativePlatformToGameKeyMapping] get [expr {-$id}]]
        } else {
            return [[my jget gameKeyFactory] jget NONE]
        }
    }
}

namespace eval ::InputToGameKeyMapping {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getNullInstance {} {
        if {[expr {[::InputToGameKeyMapping::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::InputToGameKeyMapping::staticSet_instance [::InputToGameKeyMapping new]
        }
        return [::InputToGameKeyMapping::staticGet_instance]
    }
}


