# Generated Code Do Not Modify
# package org.allbinary.graphics.form

oo::class create ::ABCustomForm {
    superclass ::CustomScreen
}

oo::define ::ABCustomForm {
    method initFields_ABCustomForm {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        return
    }
    

    constructor {title items backgroundBasicColor foregroundBasicColor} {
        next
        my initFields_ABCustomForm
    }
    

    method getAllitems {} {
        return [jarray 0 {}]
    }
    

    method size {} {
        return 0
    }
    

    method setSelectedIndex {index} {
    }
    

    method getSelectedIndex {} {
        return 0
    }
    

    method deleteAll {} {
    }
    

    method delete {itemNum} {
    }
    

    method append {item} {
        return [expr {-1}]
    }
    

    method insert {itemNum item} {
    }
    

    method set {itemNum item} {
    }
    

    method get {itemNum} {
        return [::ABCustomItem::getNullInstance]
    }
    

    method getWidth {} {
        error [jexception RuntimeException {}]
    }
    

    method paint {graphics} {
    }
    

    method getTitle {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
}

namespace eval ::ABCustomForm {
}


