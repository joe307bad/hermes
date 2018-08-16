module Finances.Types.Main exposing (..)

import Finances.Types.Month as Month
import Finances.Types.MonthUtilities as MonthUtilities
import Finances.Types.Utility as Utilities


type alias Utility = Utilities.Utility

utilityToString : Utilities.Utility -> String
utilityToString utility = Utilities.utilityToString utility

enumUtility : List Utilities.Utility
enumUtility = Utilities.enumUtility

type alias Month = Month.Month

monthToString : Month.Month -> String
monthToString month = Month.monthToString month

enumMonth : List Month.Month
enumMonth = Month.enumMonth

type alias MonthUtilities = MonthUtilities.MonthUtilities
