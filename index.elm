module TK where
import Html exposing (div, h1, h2, p, a, text, Html)
import Html.Attributes exposing (style, id, target, href)
import StartApp.Simple as StartApp

type alias Model =
  {
    name: String
    ,description: String
    , github: String
    , twitter: String
    , zhihu: String
    , mail: String
  }

main =
    StartApp.start {model = model, view = view, update =update}

model =
    {
      name ="Twiknight"
      ,description = "Developer and Software Engineering practitioner"
      , github = "https://github.com/Twiknight"
      , twitter = "https://twitter.com/twiknight1984"
      , zhihu = "https://www.zhihu.com/people/moon-silver"
      , blog = "https://twiknight.gitbooks.io/blog/content/"
    }

view address model =
  div [id "wrapper"] [
    h1 [] [text model.name]
    ,h2 [] [text model.description]
    ,div [id "socials"] [
      social "Fork me on GitHub!" model.github
     ,social "Ask me on Zhihu!" model.zhihu
     ,social "Follow me on Twitter!" model.twitter
     ,social "Read me on Gitbook!" model.blog
    ]
  ]

social : String -> String -> Html
social name ref =
  p [] [a [href ref, target "blank"] [text name] ]

update action model =
  model
