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
# package org.allbinary.input.motion.button

oo::class create ::NoButtonsBuilder {
    superclass ::BaseTouchInput
}

oo::define ::NoButtonsBuilder {
    method initFields_NoButtonsBuilder {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_NoButtonsBuilder
    }
    

    method getList {} {
        try {
            [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
            set list [[::BasicArrayListUtil::getInstance] getImmutableInstance]
            return $list
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget GET_LIST] $e
            return [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        }
    }
}

namespace eval ::NoButtonsBuilder {
}


