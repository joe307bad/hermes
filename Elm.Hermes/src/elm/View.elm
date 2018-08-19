module View exposing (root)

import Html exposing (Html, button, div, text, nav, a, ul)
import Html.Attributes exposing (id, class, href)

import Types exposing (Model, Msg)

import Finances.View exposing (root)
import Finances.Types exposing (bills)


root : Model -> Html Msg
root model =
    div []
        [ header
        , Finances.View.root bills
        ]


header : Html Msg
header =
    div [ class "navbar-fixed scrollspy" ]
        [ nav [ class "blue lighten-2" ]
            [ div [ class "nav-wrapper container" ]
                [ a [ href "#", class "brand-logo" ] [ text "BadaDash" ]
                , ul [ id "nav-mobile", class "right hide-on-med-and-down" ] []
                ]
            ]
        ]
