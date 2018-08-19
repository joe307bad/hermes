module View exposing (..)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

import Types exposing (..)

root : Model -> Html Msg
root model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]