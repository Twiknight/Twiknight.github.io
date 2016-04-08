import Html exposing (div, text)
import Html.Attributes exposing (style)
import StartApp.Simple as StartApp

main =
    StartApp.start {model = model, view = view, update =update}

model =
    "hello, this is a test page:)"

view address model =
  div [style divStyle] [text (toString model)]

divStyle =
  [("font-size", "2em")]

update action model =
  model
