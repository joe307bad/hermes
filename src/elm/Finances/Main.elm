module Finances.Main exposing (..)

import Finances.Types.Utility exposing (Utility, enumUtility)
import Finances.Types.Month exposing (Month, enumMonth)


type alias MonthUtilities =
    { month : Month, utilities : List Utility }


bills : List MonthUtilities
bills =
    List.map (\month -> ({ month = month, utilities = List.map (\utility -> utility) enumUtility })) enumMonth



-- type alias Bill =
--     { month : Month, utility : Utility }
-- andThen : (a -> List b) -> List a -> List b
-- andThen =
--     List.concatMap
-- lift2 : (a -> b -> c) -> List a -> List b -> List c
-- lift2 f la lb =
--     la |> andThen (\a -> lb |> andThen (\b -> [ f a b ]))
-- bills : List Bill
-- bills =
--     lift2 (\month -> \utility -> ({ month = month, utility = utility })) enumMonth enumUtility
