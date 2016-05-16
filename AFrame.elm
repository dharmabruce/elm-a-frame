module AFrame exposing
  ( a_assets, a_asset_item, a_entity, a_animation, a_box, a_camera, a_collada_model, a_cone, a_cubemap, a_cursor, a_curvedimage
  , a_cylinder, a_image, a_light, a_mixin, a_obj_model, a_plane, a_ring, a_scene, a_sky
  , a_sphere, a_torus, a_video, a_videosphere
  )

{-|
# A-Frame Nodes
@docs a_assets, a_asset_item, a_entity, a_animation, a_box, a_camera, a_collada_model, a_cone, a_cubemap, a_cursor, a_curvedimage
  , a_cylinder, a_image, a_light, a_mixin, a_obj_model, a_plane, a_ring, a_scene, a_sky
  , a_sphere, a_torus, a_video, a_videosphere
-}

import Html exposing (Html, Attribute, node)


-- A-Frame nodes


{-| defines a-entity in a document
-}
a_entity : List (Attribute msg) -> List (Html msg) -> Html msg
a_entity =
  node "a-entity"

{-| defines a-scene in a document
-}
a_scene : List (Attribute msg) -> List (Html msg) -> Html msg
a_scene =
  node "a-scene"

{-| defines a-animation in a document
-}
a_animation : List (Attribute msg) -> List (Html msg) -> Html msg
a_animation =
  node "a-animation"

{-| defines a-mixin in a document
-}
a_mixin : List (Attribute msg) -> List (Html msg) -> Html msg
a_mixin =
  node "a-mixin"

{-| defines a-assets in a document
-}
a_assets : List (Attribute msg) -> List (Html msg) -> Html msg
a_assets =
  node "a-assets"

{-| defines a-asset-item in a document
-}
a_asset_item : List (Attribute msg) -> List (Html msg) -> Html msg
a_asset_item =
  node "a-asset-item"


-- a-frame component primitive elements


{-| defines a-box in a document
-}
a_box : List (Attribute msg) -> List (Html msg) -> Html msg
a_box =
  node "a-box"

{-| defines a-camera in a document
-}
a_camera : List (Attribute msg) -> List (Html msg) -> Html msg
a_camera =
  node "a-camera"

{-| defines a-collada-model in a document
-}
a_collada_model : List (Attribute msg) -> List (Html msg) -> Html msg
a_collada_model =
  node "a-collada-model"

{-| defines a-cone in a document
-}
a_cone : List (Attribute msg) -> List (Html msg) -> Html msg
a_cone =
  node "a-cone"

{-| defines a-cubemap in a document
-}
a_cubemap : List (Attribute msg) -> List (Html msg) -> Html msg
a_cubemap =
  node "a-cubemap"

{-| defines a-cursor in a document
-}
a_cursor : List (Attribute msg) -> List (Html msg) -> Html msg
a_cursor =
  node "a-cursor"

{-| defines a-curvedimage in a document
-}
a_curvedimage : List (Attribute msg) -> List (Html msg) -> Html msg
a_curvedimage =
  node "a-curvedimage"

{-| defines a-cylinder in a document
-}
a_cylinder : List (Attribute msg) -> List (Html msg) -> Html msg
a_cylinder =
  node "a-cylinder"

{-| defines a-image in a document
-}
a_image : List (Attribute msg) -> List (Html msg) -> Html msg
a_image =
  node "a-image"

{-| defines a-light in a document
-}
a_light : List (Attribute msg) -> List (Html msg) -> Html msg
a_light =
  node "a-light"

{-| defines a-obj-model in a document
-}
a_obj_model : List (Attribute msg) -> List (Html msg) -> Html msg
a_obj_model =
  node "a-obj-model"

{-| defines a-plane in a document
-}
a_plane : List (Attribute msg) -> List (Html msg) -> Html msg
a_plane =
  node "a-plane"

{-| defines a-ring in a document
-}
a_ring : List (Attribute msg) -> List (Html msg) -> Html msg
a_ring =
  node "a-ring"

{-| defines a-sky in a document
-}
a_sky : List (Attribute msg) -> List (Html msg) -> Html msg
a_sky =
  node "a-sky"

{-| defines a-sphere in a document
-}
a_sphere : List (Attribute msg) -> List (Html msg) -> Html msg
a_sphere =
  node "a-sphere"

{-| defines a-torus in a document
-}
a_torus : List (Attribute msg) -> List (Html msg) -> Html msg
a_torus =
  node "a-torus"

{-| defines a-video in a document
-}
a_video : List (Attribute msg) -> List (Html msg) -> Html msg
a_video =
  node "a-video"

{-| defines a-videosphere in a document
-}
a_videosphere : List (Attribute msg) -> List (Html msg) -> Html msg
a_videosphere =
  node "a-videosphere"

