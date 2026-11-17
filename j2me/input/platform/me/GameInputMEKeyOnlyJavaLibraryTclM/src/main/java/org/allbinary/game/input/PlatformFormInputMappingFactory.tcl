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

oo::class create ::PlatformFormInputMappingFactory {
    superclass ::JObject
}

oo::define ::PlatformFormInputMappingFactory {
    method initFields_PlatformFormInputMappingFactory {} {
        my jset logUtil {}
        my jset inputToGameKeyMapping {}
        my jset logUtil [::LogUtil::getInstance]
        my jset inputToGameKeyMapping [::InputToGameKeyMapping::getNullInstance]
        return
    }

    constructor {} {
        next
        my initFields_PlatformFormInputMappingFactory
    }
    
    

    method getOrCreate {} {
        try {
            if {[expr {[my jget inputToGameKeyMapping] eq [::InputToGameKeyMapping::getNullInstance]}]} {
                set inputToGameKeyMapping [::InputToGameKeyMapping new]
                set gameKeyFactory [::GameKeyFactory::getInstance]
                $inputToGameKeyMapping add [$gameKeyFactory jget UP] [$gameKeyFactory jget UP]
                $inputToGameKeyMapping add [$gameKeyFactory jget DOWN] [$gameKeyFactory jget DOWN]
                $inputToGameKeyMapping add [$gameKeyFactory jget LEFT] [$gameKeyFactory jget LEFT]
                $inputToGameKeyMapping add [$gameKeyFactory jget RIGHT] [$gameKeyFactory jget RIGHT]
                $inputToGameKeyMapping add [$gameKeyFactory jget KEY_NUM1] [$gameKeyFactory jget GAME_A]
                my jset inputToGameKeyMapping $inputToGameKeyMapping
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget GET_INSTANCE] $e
        }
        return [my jget inputToGameKeyMapping]
    }
}

namespace eval ::PlatformFormInputMappingFactory {
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
    proc getInstance {} {
        if {[expr {[::PlatformFormInputMappingFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::PlatformFormInputMappingFactory::staticSet_instance [::PlatformFormInputMappingFactory new]
        }
        return [::PlatformFormInputMappingFactory::staticGet_instance]
    }
}


