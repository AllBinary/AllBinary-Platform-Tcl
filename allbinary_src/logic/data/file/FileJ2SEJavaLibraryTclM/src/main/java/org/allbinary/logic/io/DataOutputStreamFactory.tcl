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

oo::class create ::DataOutputStreamFactory {
    superclass ::JObject
}

oo::define ::DataOutputStreamFactory {
    method initFields_DataOutputStreamFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_DataOutputStreamFactory
    }
    
    

    method getInstanceForAbFile {file} {
        set idFileOutputStream [::AbFileOutputStream::createFromAbFile $file]
        set idOutData [::AbDataOutputStream new $idFileOutputStream]
        return $idOutData
    }
    

    method getInstance {filePath fileName} {
        set fileStreamFactory [::FileStreamFactory::getInstance]
        set fileOutputStream [$fileStreamFactory getFileOutputStreamInstance $filePath $fileName]
        set idOutData [::AbDataOutputStream new $fileOutputStream]
        return $idOutData
    }
}

namespace eval ::DataOutputStreamFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::DataOutputStreamFactory new]
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
        return [::DataOutputStreamFactory::staticGet_instance]
    }
}


