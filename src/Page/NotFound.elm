module Page.NotFound exposing (view)

import Asset
import Html.Styled as Html exposing (Html, div, h1, img, main_, text)
import Html.Styled.Attributes exposing (class, id, tabindex)



-- VIEW


view : { title : String, content : Html msg }
view =
    { title = "Page Not Found"
    , content =
        main_ [ id "content", class "container", tabindex -1 ]
            [ h1 [] [ text "Not Found" ]
            , div [ class "row" ]
                [ img [ Asset.src Asset.error ] [] ]
            ]
    }
