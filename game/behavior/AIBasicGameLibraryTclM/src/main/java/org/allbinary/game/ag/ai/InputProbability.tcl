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

oo::class create ::InputProbability {
    superclass ::JObject
}

oo::define ::InputProbability {
    method initFields_InputProbability {} {
        my jset likelyhoodIntegerArray {}
        my jset repeatLikelyhoodIntegerArray {}
        my jset max 0
        my jset timeDelayHelper {}
        
        
        
        
        return
    }
    

    constructor {likelyhoodIntegerArray repeatLikelyhoodIntegerArray max timeDelayHelper} {
        next
        my initFields_InputProbability
        my jset likelyhoodIntegerArray $likelyhoodIntegerArray
        my jset repeatLikelyhoodIntegerArray $repeatLikelyhoodIntegerArray
        my jset max $max
        my jset timeDelayHelper $timeDelayHelper
    }
    

    method getLikelyhoodIntegerArray {} {
        return [my jget likelyhoodIntegerArray]
    }
    

    method getRepeatLikelyhoodIntegerArray {} {
        return [my jget repeatLikelyhoodIntegerArray]
    }
    

    method getMax {} {
        return [my jget max]
    }
    

    method getTimeDelayHelper {} {
        return [my jget timeDelayHelper]
    }
    

    method toHashtable {} {
        set hashtable [[::StdUtil::getInstance] createHashtable]
        $hashtable put [::InputProbability::staticGet_INPUT_PROBABILITY] [self]
        return $hashtable
    }
}

namespace eval ::InputProbability {
    variable INPUT_PROBABILITYValue {}
    variable INPUT_PROBABILITYSet 0
    proc staticGet_INPUT_PROBABILITY {} {
        variable INPUT_PROBABILITYValue
        variable INPUT_PROBABILITYSet
        if {!$INPUT_PROBABILITYSet} {
            set INPUT_PROBABILITYSet 1
            set INPUT_PROBABILITYValue [[::SmallIntegerSingletonFactory::getInstance] getAt 0]
        }
        return $INPUT_PROBABILITYValue
    }
    proc staticSet_INPUT_PROBABILITY {value} {
        variable INPUT_PROBABILITYValue
        variable INPUT_PROBABILITYSet
        set INPUT_PROBABILITYSet 1
        set INPUT_PROBABILITYValue $value
    }
}


