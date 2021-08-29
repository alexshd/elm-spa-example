module Avatar exposing (Avatar, decoder, encode, src, toMaybeString)

import Asset
import Html.Styled exposing (Attribute)
import Html.Styled.Attributes as Attr
import Json.Decode as Decode exposing (Decoder)
import Json.Encode as Encode exposing (Value)



-- TYPES


type Avatar
    = Avatar (Maybe String)



-- CREATE


decoder : Decoder Avatar
decoder =
    Decode.map Avatar (Decode.nullable Decode.string)



-- TRANSFORM


encode : Avatar -> Value
encode (Avatar maybeUrl) =
    case maybeUrl of
        Just url ->
            Encode.string url

        Nothing ->
            Encode.null


src : Avatar -> Attribute msg
src (Avatar maybeUrl) =
    case maybeUrl of
        Nothing ->
            Asset.src Asset.defaultAvatar

        Just "" ->
            Asset.src Asset.defaultAvatar

        Just url ->
            Attr.src url


toMaybeString : Avatar -> Maybe String
toMaybeString (Avatar maybeUrl) =
    maybeUrl
