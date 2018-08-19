module Finances.Types.Utility exposing (Utility, utilityToString, enumUtility)


type Utility
    = Electric
    | Gas
    | WaterSewege
    | Cable
    | Phone


utilityToString : Utility -> String
utilityToString utility =
    case utility of
        Electric ->
            "Electric"

        Gas ->
            "Gas"

        WaterSewege ->
            "Water/Sewege"

        Cable ->
            "Cable"

        Phone ->
            "Phone"


enumUtility : List Utility
enumUtility =
    let
        ignored thing =
            case thing of
                Electric ->
                    ()

                Gas ->
                    ()

                WaterSewege ->
                    ()

                Cable ->
                    ()

                Phone ->
                    ()

    in
        [ Electric, Gas, WaterSewege, Cable, Phone ]
