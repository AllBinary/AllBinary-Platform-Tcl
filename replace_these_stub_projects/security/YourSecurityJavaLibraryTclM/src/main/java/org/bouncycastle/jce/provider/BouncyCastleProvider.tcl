# Generated Code Do Not Modify
# package org.bouncycastle.jce.provider

oo::class create ::BouncyCastleProvider {
    superclass ::Provider
}

oo::define ::BouncyCastleProvider {
    method initFields_BouncyCastleProvider {} {
        return
    }
    

    constructor {} {
        next [::BouncyCastleProvider::staticGet_PROVIDER_NAME] 1.41 [::BouncyCastleProvider::staticGet_info]
        my initFields_BouncyCastleProvider
    }
    

    method setParameter {parameterName parameter} {
    }
}

namespace eval ::BouncyCastleProvider {
    variable infoValue {}
    variable infoSet 0
    proc staticGet_info {} {
        variable infoValue
        variable infoSet
        if {!$infoSet} {
            set infoSet 1
            set infoValue "BouncyCastle Security Provider v1.41"
        }
        return $infoValue
    }
    proc staticSet_info {value} {
        variable infoValue
        variable infoSet
        set infoSet 1
        set infoValue $value
    }
    variable PROVIDER_NAMEValue {}
    variable PROVIDER_NAMESet 0
    proc staticGet_PROVIDER_NAME {} {
        variable PROVIDER_NAMEValue
        variable PROVIDER_NAMESet
        if {!$PROVIDER_NAMESet} {
            set PROVIDER_NAMESet 1
            set PROVIDER_NAMEValue "BC"
        }
        return $PROVIDER_NAMEValue
    }
    proc staticSet_PROVIDER_NAME {value} {
        variable PROVIDER_NAMEValue
        variable PROVIDER_NAMESet
        set PROVIDER_NAMESet 1
        set PROVIDER_NAMEValue $value
    }
}


