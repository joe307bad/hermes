module Finances.Types.MonthUtilities exposing (..)

import Finances.Types.Utility exposing (Utility, enumUtility)
import Finances.Types.Month exposing (Month, enumMonth)


type alias MonthUtilities =
    { month : Month, utilities : List Utility }
