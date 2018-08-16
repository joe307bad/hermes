module Finances.Main exposing (..)

import Html exposing (..)
import Shared.Types.Msg exposing (Msg)
import Finances.Types.Main exposing (MonthUtilities)
import Finances.Data.Main as FinancesData
import Finances.Model as FinancesModel
import Finances.View as FinancesView


bills : List MonthUtilities
bills =
    FinancesData.bills


view : Html Msg
view =
    FinancesView.financesTable FinancesData.bills


type alias Model =
    FinancesModel.Model
