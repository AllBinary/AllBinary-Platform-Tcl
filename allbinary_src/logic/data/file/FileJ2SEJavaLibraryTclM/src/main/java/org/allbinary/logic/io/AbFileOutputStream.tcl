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
# package org.allbinary.logic.io

oo::class create ::AbFileOutputStream {
    superclass ::FileOutputStream
}

oo::define ::AbFileOutputStream {
    method initFields_AbFileOutputStream {} {
        return
    }
    
    
    
    
    

    constructor {name append} {
        next $name $append
        my initFields_AbFileOutputStream
    }
}

namespace eval ::AbFileOutputStream {
    proc createFromAbFile {file} {
        return [::AbFileOutputStream new [$file getPath] false]
    }
    proc createFromAbFileAppend {file append} {
        return [::AbFileOutputStream new [$file getPath] $append]
    }
    proc createFromFilePath {name} {
        return [::AbFileOutputStream new $name false]
    }
    proc createFromFilePathAppend {name append} {
        return [::AbFileOutputStream new $name $append]
    }
}


