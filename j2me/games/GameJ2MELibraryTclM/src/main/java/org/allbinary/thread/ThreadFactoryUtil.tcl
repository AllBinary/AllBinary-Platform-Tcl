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
# package org.allbinary.thread

oo::class create ::ThreadFactoryUtil {
    superclass ::JObject
}

oo::define ::ThreadFactoryUtil {
    method initFields_ThreadFactoryUtil {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_ThreadFactoryUtil
    }
    
    

    method getInstanceGameCanvasRunnable {runnable} {
        return [my getInstanceType $runnable [$runnable getType]]
    }
    

    method getInstanceForRunnable {runnable} {
        return [my getInstanceType $runnable [$runnable getType]]
    }
    

    method getInstanceType {runnable type} {
        set commonStrings [::CommonStrings::getInstance]
        if {[::J2MEUtil::isHTML]} {
            if {[expr {[expr {$type == [::DemoCanvas::staticGet_TYPE]}] || [expr {$type == [::AllBinaryGameCanvas::staticGet_TYPE]}]}]} {
                set demoGameSingleThreadStartRunnable [::RunnableCanvasSingleThreadStartRunnable new $runnable]
                ::PreLogUtil::put [[[[::StringMaker new] append "Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: "] append [[::StringUtil::getInstance] toString1 $runnable]] toString] [self] [$commonStrings jget CONSTRUCTOR]
                set primaryThreadPool [::PrimaryThreadPool::getInstance]
                $primaryThreadPool runTask $demoGameSingleThreadStartRunnable
            } else {
                ::PreLogUtil::put [[[[::StringMaker new] append "Using Pseudo Thread for Runnable under PlayN/HTML5: "] append [[::StringUtil::getInstance] toString1 $runnable]] toString] [self] [$commonStrings jget CONSTRUCTOR]
                set primaryThreadPool [::PrimaryThreadPool::getInstance]
                $primaryThreadPool runTask $runnable
            }
        }
        set thread [::Thread new $runnable [$runnable toString]]
        [my jget logUtil] putF [$thread toString] [self] [$commonStrings jget CONSTRUCTOR]
        return $thread
    }
    

    method start {thread} {
        $thread start
    }
}

namespace eval ::ThreadFactoryUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ThreadFactoryUtil new]
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
        return [::ThreadFactoryUtil::staticGet_instance]
    }
}


