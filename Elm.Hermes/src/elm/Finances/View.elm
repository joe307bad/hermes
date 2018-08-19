module Finances.View exposing (root)

import Html exposing (Html, h1, text, tr, td, input, label, i, div, thead, th, tbody, table)
import Html.Attributes exposing (class, id, for, type_)

import Types exposing (Msg)

import Finances.Types exposing (Model, MonthUtilities, bills)
import Finances.Types.Month exposing (Month, monthToString, enumMonth)
import Finances.Types.Utility exposing (Utility)

root : Model -> Html Msg
root model =
    financesTable model

billsRow : Month -> Html Msg
billsRow month =
    tr []
        (List.concat
            [ [ td [] [ text (monthToString month) ] ]
            , (List.map (\utility -> (td [] [ billTextBox month ])) (listOfUtiliiesForMonth month))
            , [ td [] [ text "123" ] ]
            ]
        )

billTextBox : Month -> Html Msg
billTextBox month =
    div [ class "input-field" ]
        [ i [ class "material-icons prefix" ] [ text "attach_money" ]
        , input [ id "icon_prefix", type_ "text", class "validate" ] []
        , label [ for "icon_prefix" ] [ text "Amount" ]
        ]

monthsUtilities : Month -> List MonthUtilities
monthsUtilities month =
    List.filter (\bill -> bill.month == month) bills
    
listOfUtiliiesForMonth : Month -> List Utility
listOfUtiliiesForMonth month =
    List.concat (List.map (\mUtils -> mUtils.utilities) (monthsUtilities month))

financesTable : Model -> Html Msg
financesTable model =
    table [ class "striped" ]
        [ thead []
            [ tr []
                [ th [] [ text "Bill" ]
                , th [] [ text "Electric" ]
                , th [] [ text "Gas" ]
                , th [] [ text "Water/Sewege" ]
                , th [] [ text "Cable" ]
                , th [] [ text "Phone" ]
                , th [] [ text "Total" ]
                ]
            ]
        , tbody [] (List.map (\month -> (billsRow month)) enumMonth)
        ]
