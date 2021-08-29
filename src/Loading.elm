module Loading exposing (error, icon, slowThreshold)

{-| A loading spinner icon.
-}

import Asset
import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes exposing (alt, height, width)
import Process
import Task exposing (Task)


icon : Html msg
icon =
    Html.img
        [ Asset.src Asset.loading
        , width 64
        , height 64
        , alt "Loading..."
        ]
        []


error : String -> Html msg
error str =
    Html.text ("Error loading " ++ str ++ ".")


slowThreshold : Task x ()
slowThreshold =
    Process.sleep 500
