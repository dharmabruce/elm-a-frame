import AFrame exposing (..)
import AFrame.Attributes exposing (..)
import Html.Attributes exposing (id)

main =
  a_scene [ ]
    [ a_sphere  [ position 0 1.25 -1, radius 1.25, color "#EF2D5E" ] []
    , a_box   [ position -1 0.5 1, rotation 0 45 0, width 1, height 1
              , depth 1, color "#4CC3D9" ] []
    , a_cylinder [ position 1 0.75 1, radius 0.5, height 1.5
              , color "#FFC65D" ] []
    , a_plane [ rotation -90 0 0, width 4, height 4, color "#4b2e83" ] []
    , a_sky   [ color "#ECE9E2" ] []
    ]
