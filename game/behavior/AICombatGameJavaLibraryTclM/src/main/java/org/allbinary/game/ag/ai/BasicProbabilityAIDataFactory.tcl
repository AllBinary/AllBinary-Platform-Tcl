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
# package org.allbinary.game.ag.ai

oo::class create ::BasicProbabilityAIDataFactory {
    superclass ::JObject
}

oo::define ::BasicProbabilityAIDataFactory {
    method initFields_BasicProbabilityAIDataFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_BasicProbabilityAIDataFactory
    }
    

    method getInstance {} {
        set likelyhoodIntegerArray [jarrayof [expr {[::Canvas::staticGet_KEY_NUM9] + 1}] {jarray 2 {}}]
        set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_UP]] set 0 [$smallIntegerSingletonFactory getAt 0]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_UP]] set 1 [$smallIntegerSingletonFactory getAt 10]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_DOWN]] set 0 [$smallIntegerSingletonFactory getAt 10]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_DOWN]] set 1 [$smallIntegerSingletonFactory getAt 14]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_LEFT]] set 0 [$smallIntegerSingletonFactory getAt 14]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_LEFT]] set 1 [$smallIntegerSingletonFactory getAt 18]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_RIGHT]] set 0 [$smallIntegerSingletonFactory getAt 18]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_RIGHT]] set 1 [$smallIntegerSingletonFactory getAt 22]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_KEY_NUM7]] set 0 [$smallIntegerSingletonFactory getAt 22]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_KEY_NUM7]] set 1 [$smallIntegerSingletonFactory getAt 26]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_KEY_NUM9]] set 0 [$smallIntegerSingletonFactory getAt 26]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_KEY_NUM9]] set 1 [$smallIntegerSingletonFactory getAt 30]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_KEY_NUM1]] set 0 [$smallIntegerSingletonFactory getAt 30]
        [$likelyhoodIntegerArray get [::Canvas::staticGet_KEY_NUM1]] set 1 [$smallIntegerSingletonFactory getAt 40]
        set repeatLikelyhoodIntegerArray [jarray [expr {[::Canvas::staticGet_KEY_NUM9] + 1}] {}]
        $repeatLikelyhoodIntegerArray set [::Canvas::staticGet_UP] [$smallIntegerSingletonFactory getAt 0]
        $repeatLikelyhoodIntegerArray set [::Canvas::staticGet_DOWN] [$smallIntegerSingletonFactory getAt 0]
        $repeatLikelyhoodIntegerArray set [::Canvas::staticGet_LEFT] [$smallIntegerSingletonFactory getAt 0]
        $repeatLikelyhoodIntegerArray set [::Canvas::staticGet_RIGHT] [$smallIntegerSingletonFactory getAt 0]
        $repeatLikelyhoodIntegerArray set [::Canvas::staticGet_KEY_NUM7] [$smallIntegerSingletonFactory getAt 0]
        $repeatLikelyhoodIntegerArray set [::Canvas::staticGet_KEY_NUM9] [$smallIntegerSingletonFactory getAt 0]
        $repeatLikelyhoodIntegerArray set [::Canvas::staticGet_KEY_NUM1] [$smallIntegerSingletonFactory getAt 10]
        set inputProbability [::InputProbability new $likelyhoodIntegerArray $repeatLikelyhoodIntegerArray 42 [::NoTimeDelayHelper::staticGet_SINGLETON]]
        return [$inputProbability toHashtable]
    }
}

namespace eval ::BasicProbabilityAIDataFactory {
}


