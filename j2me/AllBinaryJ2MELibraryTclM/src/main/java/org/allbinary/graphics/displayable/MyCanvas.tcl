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
# package org.allbinary.graphics.displayable

oo::class create ::MyCanvas {
    superclass ::Canvas
}

oo::define ::MyCanvas {
    method initFields_MyCanvas {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset canvasStrings {}
        my jset stringUtil {}
        my jset displayInfo {}
        my jset name {}
        my jset childNameList {}
        my jset commandStack {}
        my jset commandListener {}
        my jset paused false
        my jset touchME {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset canvasStrings [::CanvasStrings::getInstance]
        my jset stringUtil [::StringUtil::getInstance]
        my jset displayInfo [::DisplayInfoSingleton::getInstance]
        
        
        
        my jset commandListener [::NullCommandListener::staticGet_NULL_COMMAND_LISTENER]
        my jset paused false
        my jset touchME [::TouchJ2ME new]
        return
    }
    

    constructor {name childNameList} {
        next
        my initFields_MyCanvas
        [my jget logUtil] putF [[my jget commonStrings] jget CONSTRUCTOR] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        [my jget displayInfo] update [self] [[my jget canvasStrings] jget CONSTRUCTOR]
        my jset name $name
        my jset childNameList $childNameList
        my jset commandStack [[::StdUtil::getInstance] createStack]
    }
    

    method getWidth {} {
        return [next]
    }
    

    method getHeight {} {
        return [next]
    }
    

    method setFullScreenMode {mode} {
        next $mode
        [my jget displayInfo] update [self] [[my jget canvasStrings] jget SET_FULL_SCREEN_MODE]
    }
    

    method sizeChanged {w h} {
        [my jget displayInfo] update [self] [[my jget canvasStrings] jget SIZE_CHANGED]
    }
    

    method getCommandStack {} {
        return [my jget commandStack]
    }
    

    method isCommand {command} {
        return [[my jget commandStack] contains $command]
    }
    

    method addCommand {command} {
        if {[expr {![[my jget commandStack] contains $command]}]} {
            [my jget commandStack] push $command
            next $command
        }
    }
    

    method removeCommand {command} {
        [my jget commandStack] removeElement $command
        next $command
    }
    

    method removeAllCommands {} {
        set size [[my jget commandStack] size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            next [[my jget commandStack] pop]
        }
    }
    

    method setCommandListener {l} {
        next $l
        my jset commandListener $l
    }
    

    method getCustomCommandListener {} {
        return [my jget commandListener]
    }
    

    method isPaused {} {
        return [my jget paused]
    }
    

    method removePauseCommand {} {
        my removeCommand [[::MyCommandsFactory::getInstance] jget PAUSE_COMMAND]
    }
    

    method pause {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget canvasStrings] jget PAUSE]
        my removePauseCommand
        my addCommand [[::MyCommandsFactory::getInstance] jget RESUME_COMMAND]
        my setPaused true
    }
    

    method unPause {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget canvasStrings] jget UN_PAUSE]
        my removeCommand [[::MyCommandsFactory::getInstance] jget RESUME_COMMAND]
        my addCommand [[::MyCommandsFactory::getInstance] jget PAUSE_COMMAND]
        my setPaused false
    }
    

    method process {} {
        [my jget displayInfo] process
    }
    

    method paint {graphics} {
    }
    

    method draw {graphics} {
    }
    

    method hasChild {displayable} {
        return [[my jget childNameList] contains [$displayable jget name]]
    }
    

    method destroy {} {
        [my jget logUtil] putF "Destroyed MyCanvas" [self] "destroy"
    }
    

    method setPaused {isPaused} {
        my jset paused $isPaused
    }
    

    method keyPressedByDevice {keyCode deviceId} {
    }
    

    method keyRepeatedByDevice {keyCode deviceId} {
    }
    

    method keyReleasedByDevice {keyCode deviceId} {
    }
    

    method pointerDragged {x y} {
        [my jget touchME] pointerDragged $x $y
    }
    

    method pointerPressed {x y} {
        [my jget touchME] pointerPressed $x $y
    }
    

    method pointerReleased {x y} {
        [my jget touchME] pointerReleased $x $y
    }
    

    method nextSong {nextSongSound leftVolume rightVolume} {
    }
}

namespace eval ::MyCanvas {
}


