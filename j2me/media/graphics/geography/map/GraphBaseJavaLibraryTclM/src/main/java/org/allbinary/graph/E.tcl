# Generated Code Do Not Modify
# package org.allbinary.graph

oo::class create ::E {
    superclass ::JObject
}

oo::define ::E {
    method initFields_E {} {
        return
    }

    constructor {} {
        next
        my initFields_E
    }
    

    method newInstance {} {
        return [::E::staticGet_e]
    }
}

namespace eval ::E {
    variable eValue {}
    variable eSet 0
    proc staticGet_e {} {
        variable eValue
        variable eSet
        if {!$eSet} {
            set eSet 1
            set eValue [::E new]
        }
        return $eValue
    }
    proc staticSet_e {value} {
        variable eValue
        variable eSet
        set eSet 1
        set eValue $value
    }
}


