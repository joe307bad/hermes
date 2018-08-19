module Finances.View exposing (root)

import Html exposing (Html, h1, text)

import Types exposing (Model, Msg)

root : Model -> Html Msg
root model =
    h1 [] [ text "Hey there" ]



-- module Finances.View exposing (..)
-- import Html exposing (..)
-- import Html.Attributes exposing (..)
-- import Finances.Types.Main as FinancesTypes
-- import Finances.Data.Main as FinancesData
-- import Finances.Model as FinancesModel
-- import Shared.Types.Msg exposing (Msg)
-- billsRow : FinancesTypes.Month -> Html Msg
-- billsRow month =
--     tr []
--         (List.concat
--             [ [ td [] [ text (FinancesTypes.monthToString month) ] ]
--             , (List.map (\utility -> (td [] [ billTextBox month ])) (listOfUtiliiesForMonth month))
--             , [ td [] [ text "123" ] ]
--             ]
--         )
-- billTextBox : FinancesTypes.Month -> Html Msg
-- billTextBox month =
--     div [ class "input-field" ]
--         [ i [ class "material-icons prefix" ] [ text "attach_money" ]
--         , input [ id "icon_prefix", type_ "text", class "validate" ] []
--         , label [ for "icon_prefix" ] [ text "Amount" ]
--         ]
-- monthsUtilities : FinancesTypes.Month -> List FinancesTypes.MonthUtilities
-- monthsUtilities month =
--     List.filter (\bill -> bill.month == month) FinancesData.bills
-- listOfUtiliiesForMonth : FinancesTypes.Month -> List FinancesTypes.Utility
-- listOfUtiliiesForMonth month =
--     List.concat (List.map (\mUtils -> mUtils.utilities) (monthsUtilities month))
-- financesTable : FinancesModel.Model -> Html Msg
-- financesTable model =
--     table [ class "striped" ]
--         [ thead []
--             [ tr []
--                 [ th [] [ text "Bill" ]
--                 , th [] [ text "Electric" ]
--                 , th [] [ text "Gas" ]
--                 , th [] [ text "Water/Sewege" ]
--                 , th [] [ text "Cable" ]
--                 , th [] [ text "Phone" ]
--                 , th [] [ text "Total" ]
--                 ]
--             ]
--         , tbody [] (List.map (\month -> (billsRow month)) FinancesTypes.enumMonth)
--         ]
