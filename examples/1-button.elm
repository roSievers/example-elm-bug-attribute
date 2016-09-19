module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as Html
import Html.Events exposing (onClick)


main =
    Html.beginnerProgram
        { model = model
        , view = view
        , update = update
        }



-- MODEL


type Model
    = WithoutTextarea
    | WithTextarea


model : Model
model =
    WithoutTextarea



-- UPDATE


type Msg
    = SetRoute Model


update : Msg -> Model -> Model
update msg model =
    case msg of
        SetRoute route ->
            route



-- VIEW


view : Model -> Html Msg
view model =
    case model of
        WithoutTextarea ->
            div []
                [ input [ type' "text" ] []
                , button [ onClick (SetRoute WithTextarea) ] [ text "WithTextarea"]
                ]

        WithTextarea ->
            div []
                [ textarea [ type' "text" ] []
                , button [ onClick (SetRoute WithoutTextarea) ] [ text "WithoutTextarea"]
                ]
