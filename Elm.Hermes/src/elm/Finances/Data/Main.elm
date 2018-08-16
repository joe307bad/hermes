module Finances.Data.Main exposing (..)

import Finances.Data.Bills as FinancesBills
import Finances.Types.Main exposing (MonthUtilities)

bills : List MonthUtilities
bills = FinancesBills.bills
