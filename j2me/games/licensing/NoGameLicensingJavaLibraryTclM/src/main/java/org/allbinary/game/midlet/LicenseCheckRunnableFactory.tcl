# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.midlet

oo::class create ::LicenseCheckRunnableFactory {
    superclass ::JObject
}

oo::define ::LicenseCheckRunnableFactory {
    method initFields_LicenseCheckRunnableFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_LicenseCheckRunnableFactory
    }
    

    method getInstance {specialDemoGameMidlet} {
        return [::NullABRunnable::getInstance]
    }
}

namespace eval ::LicenseCheckRunnableFactory {
}


