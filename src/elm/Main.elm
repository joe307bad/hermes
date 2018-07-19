module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Http
import Json.Decode as Decode
import Finances.Main exposing (MonthUtilities, bills)
import Finances.Types.Utility exposing (Utility, utilityToString)
import Finances.Types.Month exposing (Month, enumMonth, monthToString)


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
    { jokes : List String }


init : ( Model, Cmd Msg )
init =
    ( Model [ "354" ], Cmd.none )



-- UPDATE


type Msg
    = FindJoke
    | NewJoke (Result Http.Error String)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        FindJoke ->
            ( model, getRandomJoke )

        NewJoke (Ok joke) ->
            ( { model | jokes = joke :: model.jokes }, Cmd.none )

        _ ->
            Model [] ! []



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ header
        , financesTable model
        ]


billsRow : Month -> Html Msg
billsRow month =
    tr []
        (List.concat
            [ [ td [] [ text (monthToString month) ] ]
            , (List.map (\utility -> (td [] [ text (utilityToString utility) ])) (listOfUtiliiesForMonth month))
            , [ td [] [ text "123" ] ]
            ]
        )


monthsUtilities : Month -> List MonthUtilities
monthsUtilities month =
    List.filter (\bill -> bill.month == month) bills


listOfUtiliiesForMonth : Month -> List Utility
listOfUtiliiesForMonth month =
    List.concat (List.map (\mUtils -> mUtils.utilities) (monthsUtilities month))


financesTable : Model -> Html Msg
financesTable model =
    table [ class "striped" ]
        [ thead []
            [ tr []
                [ th [] [ text "Bill" ]
                , th [] [ text "Electric" ]
                , th [] [ text "Gas" ]
                , th [] [ text "Water/Sewege" ]
                , th [] [ text "Cable" ]
                , th [] [ text "Phone" ]
                , th [] [ text "Total" ]
                ]
            ]
        , tbody [] (List.map (\month -> (billsRow month)) enumMonth)
        ]


header : Html Msg
header =
    div [ class "navbar-fixed scrollspy" ]
        [ nav [ class "blue lighten-2" ]
            [ div [ class "nav-wrapper container" ]
                [ a [ href "#", class "brand-logo" ] [ text "BadaDash" ]
                , ul [ id "nav-mobile", class "right hide-on-med-and-down" ]
                    [ li [] [ a [ onClick FindJoke ] [ text "Joke" ] ]
                    ]
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


{-| Provides section to show jokes saved in model.
-}
jokeSection : List String -> Html Msg
jokeSection jokes =
    section [] [ div [] (List.map toCard <| jokes) ]



-- REQUESTS


{-| Request a random joke from the Chuck Norris Database.
-}
getRandomJoke : Cmd Msg
getRandomJoke =
    let
        url =
            "https://api.icndb.com/jokes/random"

        request =
            Http.get url decodeJoke
    in
        Http.send NewJoke request


{-| Given a response from the Chuck Norris Database, for instance:
{ "value": { "id": 527, "joke": "No one has ever lived to tell about it." } }

This function retrieves the value of "joke" attribute.

-}
decodeJoke : Decode.Decoder String
decodeJoke =
    Decode.at [ "value", "joke" ] Decode.string
