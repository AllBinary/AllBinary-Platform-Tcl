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
# package org.allbinary.midlet

#J2MEForJ2ME
oo::class create ::ProgressMidlet {
    superclass ::AllBinaryMidlet
}

oo::define ::ProgressMidlet {
    method initFields_ProgressMidlet {} {
        my jset abeClientInformation {}
        
        return
    }
    

    constructor {clientInformationFactory} {
        next
        my initFields_ProgressMidlet
        my preInit
        my jset abeClientInformation [$clientInformationFactory getInstance]
    }
    

    method preInit {} {
    }
    

    method exitProgress {isProgress} {
        set processor [[::MidletExitProcessorFactory::getInstance] getExitInstance [self]]
        try {
            set primaryThreadPool [::PrimaryThreadPool::getInstance]
            set runnable [::ExitRunnable new [self] $processor $isProgress]
            $primaryThreadPool runTask $runnable
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "exit" $e
            try {
                $processor process
            } on error {e2} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "exit" $e
            }
        }
    }
}

namespace eval ::ProgressMidlet {
}


