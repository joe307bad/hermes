module Finances.Types exposing (Model, Msg, MonthUtilities, initialModel, bills)

import Finances.Types.Month exposing (Month, enumMonth)
import Finances.Types.Utility exposing (Utility, enumUtility)

type alias MonthUtilities =
    { month : Month, utilities : List Utility }


type alias Model =
    List MonthUtilities


initialModel : Model
initialModel =
    bills


type Msg
    = Increment
    | Decrement


bills : List MonthUtilities
bills =
    List.map (\month -> ({ month = month, utilities = List.map (\utility -> utility) enumUtility })) enumMonth
