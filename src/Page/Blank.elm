module Page.Blank exposing (view)

import Html.Styled as Html exposing (Html)


view : { title : String, content : Html msg }
view =
    { title = ""
    , content = Html.text ""
    }
