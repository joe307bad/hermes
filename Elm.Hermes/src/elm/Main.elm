-- module Main exposing (..)

-- import Html exposing (..)
-- import Html.Attributes exposing (..)
-- import Finances.Main as Finances
-- import Shared.Types.Msg exposing (Msg)


-- -- APP

module Main exposing (..)

import Html
import State exposing (..)
import View
import Types exposing (..)

main: Program Never Model Msg
main =
    Html.program
        { init = State.initialState
        , update = State.update
        , subscriptions = State.subscriptions
        , view = View.root
        }


-- main : Program Never Model Msg
-- main =
--     Html.program
--         { init = init
--         , subscriptions = subscriptions
--         , view = view
--         , update = update
--         }



-- -- SUBSCRIPTIONS


-- subscriptions : Model -> Sub Msg
-- subscriptions model =
--     Sub.none



-- -- MODEL


-- type alias Model =
--     { finances : Finances.Model }


-- init : ( Model, Cmd Msg )
-- init =
--     ( Model Finances.bills, Cmd.none )



-- -- UPDATE


-- update : Msg -> Model -> ( Model, Cmd Msg )
-- update msg model =
--     case msg of
--         _ ->
--             Model [] ! []



-- -- VIEW


-- view : Model -> Html Msg
-- view model =
--     div []
--         [ header
--         , Finances.view
--         ]


-- header : Html Msg
-- header =
--     div [ class "navbar-fixed scrollspy" ]
--         [ nav [ class "blue lighten-2" ]
--             [ div [ class "nav-wrapper container" ]
--                 [ a [ href "#", class "brand-logo" ] [ text "BadaDash" ]
--                 , ul [ id "nav-mobile", class "right hide-on-med-and-down" ] []
--                 ]
--             ]
--         ]
