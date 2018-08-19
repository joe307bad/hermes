module Finances.Types.Month exposing (Month, monthToString, enumMonth)


type Month
    = January
    | February
    | March
    | April
    | May
    | June
    | July
    | August
    | September
    | October
    | November
    | December


monthToString : Month -> String
monthToString month =
    case month of
        January ->
            "January"

        February ->
            "February"

        March ->
            "March"

        April ->
            "April"

        May ->
            "May"

        June ->
            "June"

        July ->
            "July"

        August ->
            "August"

        September ->
            "September"

        October ->
            "October"

        November ->
            "November"

        December ->
            "December"


enumMonth : List Month
enumMonth =
    let
        ignored thing =
            case thing of
                January ->
                    ()

                February ->
                    ()

                March ->
                    ()

                April ->
                    ()

                May ->
                    ()

                June ->
                    ()

                July ->
                    ()

                August ->
                    ()

                September ->
                    ()

                October ->
                    ()

                November ->
                    ()

                December ->
                    ()
    in
        [ January, February, March, April, May, June, July, August, September, October, November, December ]
