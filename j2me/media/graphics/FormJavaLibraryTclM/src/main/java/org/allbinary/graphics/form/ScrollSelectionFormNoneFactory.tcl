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
# package org.allbinary.graphics.form

oo::class create ::ScrollSelectionFormNoneFactory {
    superclass ::JObject
}

oo::define ::ScrollSelectionFormNoneFactory {
    method initFields_ScrollSelectionFormNoneFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_ScrollSelectionFormNoneFactory
    }
    
}

namespace eval ::ScrollSelectionFormNoneFactory {
    proc getInstance {} {
        return [::ScrollSelectionForm::getNullScrollSelectionFormHorizontal]
    }
}


