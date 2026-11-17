# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

oo::class create ::ABCustomGaugeItem {
    superclass ::ABCustomItem
}

oo::define ::ABCustomGaugeItem {
    method initFields_ABCustomGaugeItem {} {
        return
    }
    

    constructor {label maxValue initialValue backgroundBasicColor foregroundBasicColor} {
        next $label $backgroundBasicColor $foregroundBasicColor
        my initFields_ABCustomGaugeItem
    }
}

namespace eval ::ABCustomGaugeItem {
    variable NULL_GAUGE_ITEMValue {}
    variable NULL_GAUGE_ITEMSet 0
    proc staticGet_NULL_GAUGE_ITEM {} {
        variable NULL_GAUGE_ITEMValue
        variable NULL_GAUGE_ITEMSet
        if {!$NULL_GAUGE_ITEMSet} {
            set NULL_GAUGE_ITEMSet 1
            set NULL_GAUGE_ITEMValue [::ABCustomGaugeItem new [[::StringUtil::getInstance] jget EMPTY_STRING] 1 0 [[::BasicColorFactory::getInstance] jget BLACK] [[::BasicColorFactory::getInstance] jget WHITE]]
        }
        return $NULL_GAUGE_ITEMValue
    }
    proc staticSet_NULL_GAUGE_ITEM {value} {
        variable NULL_GAUGE_ITEMValue
        variable NULL_GAUGE_ITEMSet
        set NULL_GAUGE_ITEMSet 1
        set NULL_GAUGE_ITEMValue $value
    }
}


