module Finances.Data.Bills exposing (..)

import Finances.Types.MonthUtilities exposing (MonthUtilities)
import Finances.Types.Utility exposing (Utility, enumUtility, utilityToString)
import Finances.Types.Month exposing (Month, enumMonth, monthToString)


bills : List MonthUtilities
bills =
    List.map (\month -> ({ month = month, utilities = List.map (\utility -> utility) enumUtility })) enumMonth
