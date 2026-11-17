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
# package org.allbinary.data.tree.dom

oo::class create ::DomData {
    superclass ::JObject
}

oo::define ::DomData {
    method initFields_DomData {} {
        return
    }
    

    constructor {} {
        next
        my initFields_DomData
    }
}

namespace eval ::DomData {
    variable IDValue {}
    variable IDSet 0
    proc staticGet_ID {} {
        variable IDValue
        variable IDSet
        if {!$IDSet} {
            set IDSet 1
            set IDValue "id"
        }
        return $IDValue
    }
    proc staticSet_ID {value} {
        variable IDValue
        variable IDSet
        set IDSet 1
        set IDValue $value
    }
    variable CHILDValue {}
    variable CHILDSet 0
    proc staticGet_CHILD {} {
        variable CHILDValue
        variable CHILDSet
        if {!$CHILDSet} {
            set CHILDSet 1
            set CHILDValue "child"
        }
        return $CHILDValue
    }
    proc staticSet_CHILD {value} {
        variable CHILDValue
        variable CHILDSet
        set CHILDSet 1
        set CHILDValue $value
    }
    variable NAMEValue {}
    variable NAMESet 0
    proc staticGet_NAME {} {
        variable NAMEValue
        variable NAMESet
        if {!$NAMESet} {
            set NAMESet 1
            set NAMEValue "name"
        }
        return $NAMEValue
    }
    proc staticSet_NAME {value} {
        variable NAMEValue
        variable NAMESet
        set NAMESet 1
        set NAMEValue $value
    }
    variable VALUEValue {}
    variable VALUESet 0
    proc staticGet_VALUE {} {
        variable VALUEValue
        variable VALUESet
        if {!$VALUESet} {
            set VALUESet 1
            set VALUEValue "value"
        }
        return $VALUEValue
    }
    proc staticSet_VALUE {value} {
        variable VALUEValue
        variable VALUESet
        set VALUESet 1
        set VALUEValue $value
    }
    variable INDEXValue {}
    variable INDEXSet 0
    proc staticGet_INDEX {} {
        variable INDEXValue
        variable INDEXSet
        if {!$INDEXSet} {
            set INDEXSet 1
            set INDEXValue "index"
        }
        return $INDEXValue
    }
    proc staticSet_INDEX {value} {
        variable INDEXValue
        variable INDEXSet
        set INDEXSet 1
        set INDEXValue $value
    }
}


