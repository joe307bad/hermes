module Types exposing (..)


type alias Model =
    Int


initialModel : Model
initialModel =
    3


type Msg
    = Increment
    | Decrement
