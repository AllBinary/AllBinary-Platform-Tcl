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
# package org.allbinary.logic.io.file

oo::class create ::AbFileInterface {
    superclass ::JObject
}

oo::define ::AbFileInterface {
    method initFields_AbFileInterface {} {
        return
    }
    

    method canRead {} {
        error [jexception AbstractMethodError canRead]
    }
    

    method canWrite {} {
        error [jexception AbstractMethodError canWrite]
    }
    

    method createNewFile {} {
        error [jexception AbstractMethodError createNewFile]
    }
    

    method delete {} {
        error [jexception AbstractMethodError delete]
    }
    

    method deleteOnExit {} {
        error [jexception AbstractMethodError deleteOnExit]
    }
    

    method exists {} {
        error [jexception AbstractMethodError exists]
    }
    

    method getAbsolutePath {} {
        error [jexception AbstractMethodError getAbsolutePath]
    }
    

    method getCanonicalPath {} {
        error [jexception AbstractMethodError getCanonicalPath]
    }
    

    method getParent {} {
        error [jexception AbstractMethodError getParent]
    }
    

    method getPath {} {
        error [jexception AbstractMethodError getPath]
    }
    

    method isAbsolute {} {
        error [jexception AbstractMethodError isAbsolute]
    }
    

    method isDirectory {} {
        error [jexception AbstractMethodError isDirectory]
    }
    

    method isFile {} {
        error [jexception AbstractMethodError isFile]
    }
    

    method isHidden {} {
        error [jexception AbstractMethodError isHidden]
    }
    

    method lastModified {} {
        error [jexception AbstractMethodError lastModified]
    }
    

    method length {} {
        error [jexception AbstractMethodError length]
    }
    

    method list {} {
        error [jexception AbstractMethodError list]
    }
    

    method listWithFilter {filter} {
        error [jexception AbstractMethodError listWithFilter]
    }
    

    method mkdir {} {
        error [jexception AbstractMethodError mkdir]
    }
    

    method mkdirs {} {
        error [jexception AbstractMethodError mkdirs]
    }
    

    method setLastModified {time} {
        error [jexception AbstractMethodError setLastModified]
    }
    

    method setReadOnly {} {
        error [jexception AbstractMethodError setReadOnly]
    }
    

    method toString {} {
        error [jexception AbstractMethodError toString]
    }
    

    method toURI {} {
        error [jexception AbstractMethodError toURI]
    }
}

namespace eval ::AbFileInterface {
}


