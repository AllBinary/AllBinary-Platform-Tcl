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
# package org.allbinary.media.audio

#NotDeviceSpecificNoMediaMIDP1Library
oo::class create ::AllBinaryMediaManager {
    superclass ::JObject
}

oo::define ::AllBinaryMediaManager {
    method initFields_AllBinaryMediaManager {} {
        return
    }
    

    constructor {} {
        next
        my initFields_AllBinaryMediaManager
    }
    
    
    
    
    
    
    
    
    
    
}

namespace eval ::AllBinaryMediaManager {
    variable THISValue {}
    variable THISSet 0
    proc staticGet_THIS {} {
        variable THISValue
        variable THISSet
        if {!$THISSet} {
            set THISSet 1
            set THISValue "AllBinaryMediaManagerNoMediaMIDP1"
        }
        return $THISValue
    }
    proc staticSet_THIS {value} {
        variable THISValue
        variable THISSet
        set THISSet 1
        set THISValue $value
    }
    proc isMuted {} {
        return false
    }
    proc setMuted {aMuted} {
    }
    proc update {} {
        return true
    }
    proc init {soundsFactoryInterface} {
        set logUtil [::LogUtil::getInstance]
        set commonString [::CommonStrings::getInstance]
        $logUtil putF [$commonString jget START] [::AllBinaryMediaManager::staticGet_THIS] [$commonString jget INIT]
        [::ProgressCanvasFactory::getInstance] addNormalPortion 50 "Media Manager"
        [::Sounds new $soundsFactoryInterface] init
    }
    proc shutdown {soundsFactoryInterface} {
        [::Sounds new $soundsFactoryInterface] stopAll
        [::Sounds new $soundsFactoryInterface] closeAll
        [::TsUtil::getInstance] gc
    }
    proc createPlayerFromInputStream {stream type} {
        set logUtil [::LogUtil::getInstance]
        set commonString [::CommonStrings::getInstance]
        $logUtil putF [$commonString jget START] [::AllBinaryMediaManager::staticGet_THIS] "creatPlayer(InputStream)"
        return [::NoPlayer::staticGet_NO_PLAYER]
    }
    proc createPlayer {locator} {
        set logUtil [::LogUtil::getInstance]
        set commonString [::CommonStrings::getInstance]
        $logUtil putF [$commonString jget START] [::AllBinaryMediaManager::staticGet_THIS] "creatPlayer(locator)"
        return [::NoPlayer::staticGet_NO_PLAYER]
    }
    proc playTone {frequency time volume} {
    }
    proc getSupportedContentTypes {protocol} {
        return [[::StringUtil::getInstance] getArrayInstance]
    }
    proc getSupportedProtocols {content_type} {
        return [[::StringUtil::getInstance] getArrayInstance]
    }
}


