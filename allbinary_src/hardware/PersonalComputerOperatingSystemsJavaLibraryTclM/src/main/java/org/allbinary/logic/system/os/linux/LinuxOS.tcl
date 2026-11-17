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
# package org.allbinary.logic.system.os.linux

oo::class create ::LinuxOS {
    superclass ::GenericOperatingSystem
}

oo::define ::LinuxOS {
    method initFields_LinuxOS {} {
        return
    }
    

    constructor {} {
        next
        my initFields_LinuxOS
        my jset scalable true
    }
    

    method isAutoHide {} {
        return true
    }
}

namespace eval ::LinuxOS {
}


