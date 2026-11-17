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
# package org.allbinary.canvas

oo::class create ::RunnableCanvas {
    superclass ::MyCanvas
}

oo::define ::RunnableCanvas {
    method initFields_RunnableCanvas {} {
        my jset nullUtil {}
        my jset stdUtil {}
        my jset systemWrapper {}
        my jset tsUtil {}
        my jset thread {}
        my jset currentThread {}
        my jset running false
        my jset loopTimeHelper {}
        my jset runnableCanvasRefreshHelper {}
        my jset commonLabels {}
        my jset threadObjectUtil {}
        my jset SET_RUNNING {}
        my jset IS_RUNNING {}
        my jset THREAD {}
        my jset NOT_EQUAL {}
        my jset PAUSE_SLEEP {}
        my jset START_PAUSE {}
        my jset END_PAUSE {}
        my jset PROCESS_LOOP_SLEEP {}
        my jset pauseWait 0
        my jset notified false
        my jset nullUtil [::NullUtil::getInstance]
        my jset stdUtil [::StdUtil::getInstance]
        my jset systemWrapper [::ABSystemWrapper::getInstance]
        my jset tsUtil [::TsUtil::getInstance]
        my jset thread [::NullThread::staticGet_NULL_THREAD]
        my jset currentThread [::NullThread::staticGet_NULL_THREAD]
        my jset running false
        my jset loopTimeHelper [::TimeDelayHelper new [[::NullWaitGameRunnable::getInstance] jget WAIT]]
        my jset runnableCanvasRefreshHelper [::Processor::getInstance]
        my jset commonLabels [::CommonLabels::getInstance]
        my jset threadObjectUtil [::ThreadObjectUtil::getInstance]
        my jset SET_RUNNING "setRunning"
        my jset IS_RUNNING "isRunning"
        my jset THREAD "Thread: "
        my jset NOT_EQUAL " != "
        my jset PAUSE_SLEEP "pause sleep"
        my jset START_PAUSE "start pause - game thread sleep at: "
        my jset END_PAUSE "end pause - game thread sleep at: "
        my jset PROCESS_LOOP_SLEEP "processLoopSleep"
        my jset pauseWait 0
        my jset notified false
        return
    }
    

    constructor {commandListener childNameList hasParam} {
        next [[::CommonStrings::getInstance] jget UNKNOWN] $childNameList
        my initFields_RunnableCanvas
        [my jget logUtil] putF [[[[::StringMaker new] append "RunnableCanvas delay: "] appendint [jint [[my jget loopTimeHelper] jget delay]]] toString] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        my jset runnableCanvasRefreshHelper [::RunnableCanvasRefreshHelper new [self]]
        if {[expr {$commandListener ne {}}]} {
            my initCommands $commandListener
        } elseif {$hasParam} {
            [my jget logUtil] putF "commandListener was null" [self] "initCommands"
        }
    }
    

    method initCommands {cmdListener} {
        [my jget logUtil] putF [[my jget commonStrings] jget NOT_IMPLEMENTED] [self] "initCommands"
    }
    

    method isMainCanvas {} {
        if {[expr {[my getCustomCommandListener] ne {}}]} {
            return true
        } else {
            return false
        }
    }
    

    method setThread {thread} {
        my jset thread $thread
    }
    

    method setRunning {running} {
        my jset running $running
        if {[expr {![my jget running]}]} {
            my jset thread [::NullThread::staticGet_NULL_THREAD]
            if {1} {
                [my jget threadObjectUtil] notifyObject [self]
            }
        }
        [my jget logUtil] putF [[[[::StringMaker new] append [my jget IS_RUNNING]] appendboolean [my jget running]] toString] [self] [my jget SET_RUNNING]
    }
    

    method isRunning {} {
        if {[expr {[my jget thread] eq [my jget currentThread]}]} {
            return [my jget running]
        } else {
            set stringBuffer [::StringMaker new]
            $stringBuffer append [my jget THREAD]
            if {[expr {[my jget thread] ne {}}]} {
                $stringBuffer append [[my jget thread] toString]
            }
            $stringBuffer append [my jget NOT_EQUAL]
            if {[expr {[my jget currentThread] ne {}}]} {
                $stringBuffer append [[::StringUtil::getInstance] toString1 [my jget currentThread]]
            }
            [my jget logUtil] putF [$stringBuffer toString] [self] [my jget IS_RUNNING]
            return false
        }
    }
    

    method getLoopTimeHelperP {} {
        return [my jget loopTimeHelper]
    }
    

    method setWait {wait} {
        [my jget loopTimeHelper] jset delay $wait
        my jset pauseWait [jlong [expr {$wait * 3}]]
        [my jget logUtil] putF [[[[::StringMaker new] append "setWait - delay: "] appendint [jint [[my jget loopTimeHelper] jget delay]]] toString] [self] [[my jget commonStrings] jget CONSTRUCTOR]
    }
    

    method getWait {} {
        return [[my jget loopTimeHelper] jget delay]
    }
    

    method setCurrentThread {} {
        my jset currentThread [::Thread::currentThread]
    }
    

    method setCurrentThreadFake {} {
        my jset currentThread [my jget thread]
    }
    

    method showNotify {} {
        try {
            my stopWaiting
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "showNotify" $e
        }
    }
    

    method stopWaiting {} {
        my jset notified true
        if {1} {
            [my jget threadObjectUtil] notifyObject [self]
        }
        my repaint
    }
    

    method waitOnNotify {wait} {
        if {[expr {![my jget notified]}]} {
            if {[expr {$wait > 0}]} {
                [my jget threadObjectUtil] waitObjectFor [self] $wait
            } else {
                [my jget threadObjectUtil] waitObject [self]
            }
        }
    }
    

    method processSleep {} {
        ::Thread::sleep [my jget pauseWait]
    }
    

    method isPausable {} {
        return false
    }
    

    method processGameSleep {sleep} {
        ::Thread::sleep $sleep
    }
    

    method processLoopSleep {} {
        [my jget runnableCanvasRefreshHelper] process
        if {[my isPaused]} {
            set stringMaker [::StringMaker new]
            if {[expr {[my isRunning] && [expr {![my isSingleThread]}]}]} {
                $stringMaker delete 0 [$stringMaker length]
                set currentTimeMillis [[my jget systemWrapper] currentTimeMillis]
                [my jget logUtil] putF [[[[[$stringMaker append [my jget START_PAUSE]] appendlong $currentTimeMillis] append [my jget PAUSE_SLEEP]] appendlong [my jget pauseWait]] toString] [self] [my jget PROCESS_LOOP_SLEEP]
                while {[expr {[expr {[my isPaused] && [my isRunning]}] && [expr {![my isSingleThread]}]}]} {
                    my processSleep
                    if {[expr {![my isPausable]}]} {
                        $stringMaker delete 0 [$stringMaker length]
                        [my jget logUtil] putF [[[$stringMaker append [my jget END_PAUSE]] appendlong $currentTimeMillis] toString] [self] [my jget PROCESS_LOOP_SLEEP]
                        return
                    }
                }
            }
        }
        set elapsedTime [[my jget loopTimeHelper] getElapsedTNT]
        set wait [[my jget loopTimeHelper] jget delay]
        if {[expr {$elapsedTime > $wait}]} {
            set elapsedTime $wait
        } else {
            my processGameSleep [jlong [expr {$wait - $elapsedTime}]]
        }
    }
    

    method isSingleThread {} {
        return false
    }
    

    method run {} {
        my setCurrentThread
    }
    

    method end2 {} {
    }
    

    method getType {} {
        return [expr {-1}]
    }
}

namespace eval ::RunnableCanvas {
}


