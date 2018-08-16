module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

import Finances.Main as Finances
import Shared.Types.Msg exposing (Msg)


-- APP


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , subscriptions = subscriptions
        , view = view
        , update = update
        }



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MODEL


type alias Model =
    { finances : Finances.Model }


init : ( Model, Cmd Msg )
init =
    ( Model Finances.bills, Cmd.none )



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        _ ->
            Model [] ! []



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ header
        , Finances.financesTable
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


{-| Displays text in form of a card by Materialize.
-}
toCard : String -> Html Msg
toCard content =
    div [ class "row container" ]
        [ div [ class "col s8 offset-s2" ]
            [ div [ class "card blue-grey darken-1" ]
                [ div [ class "card-content white-text center" ]
                    [ p [] [ text content ] ]
                ]
            ]
        ]
