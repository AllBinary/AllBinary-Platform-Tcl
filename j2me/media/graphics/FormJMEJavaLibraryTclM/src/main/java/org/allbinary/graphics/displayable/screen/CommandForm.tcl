# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
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
# package org.allbinary.graphics.displayable.screen

oo::class create ::CommandForm {
    superclass ::Form
}

oo::define ::CommandForm {
    method initFields_CommandForm {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset repaintProcessor {}
        my jset commandStack {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset repaintProcessor [[::ScreenRepaintProcessorFactory::getInstance] create [self]]
        
        return
    }
    
    

    constructor {commandListener formTitle backgrounBasicColor foregroundBasicColor} {
        next $formTitle
        my initFields_CommandForm
        my jset commandStack [[::StdUtil::getInstance] createStack]
        try {
            [my jget repaintProcessor] process
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget CONSTRUCTOR] $e
        }
    }
    

    method initCommands {cmdListener} {
    }
    

    method open {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] "open"
    }
    

    method close {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CLOSE]
    }
    

    method update {} {
        [my jget repaintProcessor] process
    }
    

    method getSourceId {} {
        return 0
    }
    

    method addCommand {command} {
        [my jget commandStack] push $command
        next $command
    }
    

    method removeAllCommands {} {
        set size [[my jget commandStack] size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            next [[my jget commandStack] pop]
        }
    }
}

namespace eval ::CommandForm {
    variable NULL_COMMAND_FORMValue {}
    variable NULL_COMMAND_FORMSet 0
    proc staticGet_NULL_COMMAND_FORM {} {
        variable NULL_COMMAND_FORMValue
        variable NULL_COMMAND_FORMSet
        if {!$NULL_COMMAND_FORMSet} {
            set NULL_COMMAND_FORMSet 1
            set NULL_COMMAND_FORMValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $NULL_COMMAND_FORMValue
    }
    proc staticSet_NULL_COMMAND_FORM {value} {
        variable NULL_COMMAND_FORMValue
        variable NULL_COMMAND_FORMSet
        set NULL_COMMAND_FORMSet 1
        set NULL_COMMAND_FORMValue $value
    }
    proc getNullCommandForm {} {
        if {[expr {[::CommandForm::staticGet_NULL_COMMAND_FORM] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::CommandForm::staticSet_NULL_COMMAND_FORM [::CommandForm new [::NullCommandListener::staticGet_NULL_COMMAND_LISTENER] [[::StringUtil::getInstance] jget EMPTY_STRING] [[::BasicColorFactory::getInstance] jget BLACK] [[::BasicColorFactory::getInstance] jget WHITE]]
        }
        return [::CommandForm::staticGet_NULL_COMMAND_FORM]
    }
}


