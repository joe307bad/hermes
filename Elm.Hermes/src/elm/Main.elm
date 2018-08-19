module Main exposing (main)

import Html
import State exposing (update, subscriptions)
import View
import Types exposing (Model, Msg)


main : Program Never Model Msg
main =
    Html.program
        { init = State.initialState
        , update = State.update
        , subscriptions = State.subscriptions
        , view = View.root
        }
