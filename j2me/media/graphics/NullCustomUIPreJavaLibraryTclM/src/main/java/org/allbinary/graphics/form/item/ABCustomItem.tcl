# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

oo::class create ::ABCustomItem {
    superclass ::JObject
}

oo::define ::ABCustomItem {
    method initFields_ABCustomItem {} {
        return
    }
    
    

    constructor {label backgroundBasicColor foregroundBasicColor} {
        next
        my initFields_ABCustomItem
    }
    

    method setOwner {owner} {
    }
    

    method paintXY {graphics x y} {
    }
    

    method paintUnselected {graphics x y} {
    }
    

    method isFocusable {} {
        return false
    }
    

    method getLabel {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method setLabel {label} {
    }
    

    method getHeight {} {
        return 0
    }
    

    method setHeight {height} {
    }
    

    method getValue {} {
        return 0.0
    }
    

    method setValue {value} {
    }
    

    method getMinimumWidth {} {
        return 0
    }
    

    method getMinimumHeight {} {
        return 0
    }
    

    method preMeasurement {graphics} {
    }
}

namespace eval ::ABCustomItem {
    variable NULL_CUSTOM_ITEMValue {}
    variable NULL_CUSTOM_ITEMSet 0
    proc staticGet_NULL_CUSTOM_ITEM {} {
        variable NULL_CUSTOM_ITEMValue
        variable NULL_CUSTOM_ITEMSet
        if {!$NULL_CUSTOM_ITEMSet} {
            set NULL_CUSTOM_ITEMSet 1
            set NULL_CUSTOM_ITEMValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $NULL_CUSTOM_ITEMValue
    }
    proc staticSet_NULL_CUSTOM_ITEM {value} {
        variable NULL_CUSTOM_ITEMValue
        variable NULL_CUSTOM_ITEMSet
        set NULL_CUSTOM_ITEMSet 1
        set NULL_CUSTOM_ITEMValue $value
    }
    proc getNullInstance {} {
        if {[expr {[::ABCustomItem::staticGet_NULL_CUSTOM_ITEM] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::ABCustomItem::staticSet_NULL_CUSTOM_ITEM [::ABCustomItem new [[::StringUtil::getInstance] jget EMPTY_STRING] [[::BasicColorFactory::getInstance] jget BLACK] [[::BasicColorFactory::getInstance] jget WHITE]]
        }
        return [::ABCustomItem::staticGet_NULL_CUSTOM_ITEM]
    }
}


