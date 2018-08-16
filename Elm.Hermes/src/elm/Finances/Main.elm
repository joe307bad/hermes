module Finances.Main exposing (..)
import Html exposing (..)
import Shared.Types.Msg exposing (Msg)

import Finances.Types.MonthUtilities exposing(MonthUtilities)
import Finances.Data.Bills as FinancesData
import Finances.View as FinancesView
import Finances.Data.Model as FinancesModel

bills : List MonthUtilities
bills = FinancesData.bills

financesTable : Html Msg
financesTable = FinancesView.financesTable FinancesData.bills

type alias Model = FinancesModel.FinancesModel