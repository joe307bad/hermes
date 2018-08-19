module State exposing (initialState, update, subscriptions)

import Types exposing (..)


initialState : ( Model, Cmd Msg )
initialState =
    ( initialModel, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        _ ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
