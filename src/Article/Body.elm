module Article.Body exposing (Body, MarkdownString, decoder, toHtml, toMarkdownString)

import Html as Ht
import Html.Styled as Html exposing (..)
import Json.Decode as Decode exposing (Decoder)
import Markdown



-- TYPES


type Body
    = Body MarkdownString


{-| Internal use only. I want to remind myself that the string inside Body contains markdown.
-}
type alias MarkdownString =
    String



-- CONVERSIONS


toHtml : Body -> List (Ht.Attribute msg) -> Html msg
toHtml (Body markdown) attributes =
    fromUnstyled (Markdown.toHtml attributes markdown)


toMarkdownString : Body -> MarkdownString
toMarkdownString (Body markdown) =
    markdown


decoder : Decoder Body
decoder =
    Decode.map Body Decode.string
