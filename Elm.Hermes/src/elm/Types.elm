module Types exposing (Model, Msg, initialModel)


type alias Model =
    Int


initialModel : Model
initialModel =
    3


type Msg
    = Increment
    | Decrement
