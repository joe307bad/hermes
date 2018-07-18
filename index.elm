module Main exposing (..)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    Int


model : Model
model =
    0



-- UPDATE


type Random
    = RandomFunction Int String
    | AnotherThing
    | AnotherRandomThing


randomThing : Random -> String
randomThing randomFunctionCase =
    "blah"


randomFunctionCase : Random -> String -> String
randomFunctionCase thisInt thisString =
    case thisInt of
        AnotherThing ->
            "another"

        _ ->
            "heythere"


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



-- VIEW


view1 : Model -> Html Random
view1 model =
    div []
        [ button [ onClick AnotherThing ] [ text "-" ]
        , div [] [ text (toString model) ]
        , button [ onClick AnotherThing ] [ text "+sadasd" ]
        , div [ onClick AnotherThing ] [ text "hey" ]
        ]


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (toString model) ]
        , button [ onClick Increment ] [ text "+sadasd" ]
        , div [] [ text "hey" ]
        ]
