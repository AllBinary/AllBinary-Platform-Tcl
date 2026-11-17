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
# package org.allbinary.game.layer.resources

oo::class create ::BasicGameResources {
    superclass ::JObject
}

oo::define ::BasicGameResources {
    method initFields_BasicGameResources {} {
        my jset logUtil {}
        my jset RESOURCE {}
        my jset RESOURCE_DESTROY {}
        my jset logUtil [::LogUtil::getInstance]
        my jset RESOURCE [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset RESOURCE_DESTROY [[::StringUtil::getInstance] jget EMPTY_STRING]
        return
    }
    

    constructor {} {
        next
        my initFields_BasicGameResources
    }
    

    method init {ROOT SIZE} {
        try {
            set scale [[[[::GameConfigurationCentral::getInstance] jget SCALE] getValue] intValue]
            if {[expr {[expr {$scale > 1}] && [expr {[jint [expr {$scale - 1}]] < [$SIZE length]}]}]} {
                my append $ROOT [$SIZE get [jint [expr {$scale - 1}]]]
            } else {
                error [jexception Exception [[[[::StringMaker new] append "Invalid Value: "] appendint $scale] toString]]
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget INIT] $e
        }
    }
    

    method append {ROOT sizeString} {
        set DESTROY "_destroy"
        set string [my getString]
        [::BasicGameResources::staticGet_stringBuffer] delete 0 [[::BasicGameResources::staticGet_stringBuffer] length]
        [::BasicGameResources::staticGet_stringBuffer] append $ROOT
        [::BasicGameResources::staticGet_stringBuffer] append $string
        [::BasicGameResources::staticGet_stringBuffer] append $sizeString
        my jset RESOURCE [[::BasicGameResources::staticGet_stringBuffer] toString]
        [::BasicGameResources::staticGet_stringBuffer] delete 0 [[::BasicGameResources::staticGet_stringBuffer] length]
        [::BasicGameResources::staticGet_stringBuffer] append $ROOT
        [::BasicGameResources::staticGet_stringBuffer] append $DESTROY
        [::BasicGameResources::staticGet_stringBuffer] append $string
        [::BasicGameResources::staticGet_stringBuffer] append $sizeString
        my jset RESOURCE_DESTROY [[::BasicGameResources::staticGet_stringBuffer] toString]
    }
    

    method getString {} {
        return [[::GameGraphicsResourceUtil::getInstance] getName]
    }
}

namespace eval ::BasicGameResources {
    variable stringBufferValue {}
    variable stringBufferSet 0
    proc staticGet_stringBuffer {} {
        variable stringBufferValue
        variable stringBufferSet
        if {!$stringBufferSet} {
            set stringBufferSet 1
            set stringBufferValue [::StringMaker new]
        }
        return $stringBufferValue
    }
    proc staticSet_stringBuffer {value} {
        variable stringBufferValue
        variable stringBufferSet
        set stringBufferSet 1
        set stringBufferValue $value
    }
}


