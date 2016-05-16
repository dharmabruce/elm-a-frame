module AFrame.Attributes exposing
  ( crossorigin, geometry, material, position, rotation, scale, attribute, begin
  , Direction(Alternate, AlternateReverse, Normal, Reverse), direction
  , dur, easing, Fill(Backwards, Both, Forwards, None), fill, from
  , Repeat(Indefinite), repeat, to, timeout, camera, canvas, colladaModel, cursor
  , cursorListener, fog, keyboardShortcuts, lookAt, lookControls, objModel, sound
  , stats, visible, vrModeUI, wasdControls, color, metalness, opacity, roughness
  , shader, src, translate, transparent, depth, height, width, far, fov
  , lookControlsEnabled, near, wasdControlsEnabled, openEnded, radiusBottom
  , radiusTop, segmentsHeight, segmentsRadial, thetaLength, thetaStart, fuse
  , maxDistance, radius, angle, decay, distance, exponent, groundColor, intensity
  , lightType, mtl, radiusInner, radiusOuter, segmentsPhi, segmentsWidth, arc
  , radiusTubular, segmentsTubular, crossOrigin )

import Html exposing (Attribute)
import VirtualDom

-- import Json.Encode as Json
import String

-- Welp, a-frame has an attribute named attribute so we do this...
vattribute = VirtualDom.attribute

{-| Some a-frame entity attributes are generally like the HTML style attributes.
    For now at least, in lieu of HTML element versions of the primitives,
    we don't model the geometry properties.

    myGeometry : Attribute msg
    myGeometry =
      geometry primitive: box; width: 1; height: 1; depth: 1
        [ ("primitive", "box")
        , ("width", "1")
        , ("height", "1")
        , ("depth", "1")
        ]

    myEntity : a_entity
    myEntity =
      a_entity [ myGeometry ] []
-}
styleListToString : List ( String, String ) -> String
styleListToString list =
  list
    |> List.map (\(key, value) -> key ++ ": " ++ value)
    |> String.join "; "


-- a-entity Attributes


{-| The a-frame geometry attribute is similar to the style Html attribute
-}
geometry : List (String, String) -> Attribute msg
geometry list =
  vattribute "geometry" (styleListToString list)

{-| The a-frame material attribute is similar to the style Html attribute
-}
material : List (String, String) -> Attribute msg
material list =
  vattribute "material" (styleListToString list)

nlistToString : List number -> String
nlistToString list =
  String.join " " (List.map toString list)

{-| position attribute takes x, y, z numbers.
-}
position : number -> number -> number -> Attribute msg
position x y z =
  vattribute "position" (nlistToString [x, y, z])

{-| rotation attribute takes x, y, z degrees.
-}
rotation : number -> number -> number -> Attribute msg
rotation x y z =
  vattribute "rotation" (nlistToString [x, y, z])

{-| scale attribute takes x, y, z numbers.
-}
scale : number -> number -> number -> Attribute msg
scale x y z =
  vattribute "scale" (nlistToString [x, y, z])


-- a-animation attributes


{-| attribute, um, attribute takes an a-frame component.
-}
attribute : String -> Attribute msg
attribute component =
  vattribute "attribute" component


{-| begin attribute takes a time delay in milliseconds.
-}
begin : Int -> Attribute msg
begin ms =
  vattribute "begin" ( toString ms )

type Direction = Alternate | AlternateReverse | Normal | Reverse
{-| direction of the animation (between from and to).
One of alternate, alternateReverse, normal (default), reverse.
-}
direction : Direction -> Attribute msg
direction d =
  let dString = case d of
    Alternate -> "alternate"
    AlternateReverse -> "alternate-reverse"
    Normal -> "normal"
    Reverse -> "reverse"
  in vattribute "direction" dString

{-| dur - Duration in (milliseconds) of the animation; default: 1000.
-}
dur : Int -> Attribute msg
dur ms =
  vattribute "dur" ( toString ms )

{-| easing - Easing function of the animation; default: ease. There are many
so no type defined.
-}
easing : String -> Attribute msg
easing f =
  vattribute "easing" f

type Fill = Backwards | Both | Forwards | None
{-| fill - Determines effect of animation when not actively in play.
 One of backwards, both, forwards, none. Default: forwards.
-}
fill : Fill -> Attribute msg
fill f =
  let fString = case f of
    Backwards -> "backwards"
    Both -> "both"
    Forwards -> "forwards"
    None -> "none"
  in vattribute "fill" fString

{-| from - Starting value. Default: Current value.
-}
from : String -> Attribute msg
from value =
  vattribute "from" value

type Repeat = Indefinite | Int | Float
{-| repeat - Repeat count or indefinite; default: 0
-}
repeat : Repeat -> Attribute msg
repeat r =
  let rString = case r of
    Indefinite -> "indefinite"
    _ -> toString r
  in vattribute "repeat" rString

{-| to - Ending value. Must be specified.
-}
to : String -> Attribute msg
to value =
  vattribute "to" value


-- a-frame a-assets attribute

{-| crossorigin - set for crossorigin asset requests.
-}
crossorigin : String -> Attribute msg
crossorigin origin =
  vattribute "crossorigin" origin

{-| timeout - set timeout in milliseconds for loading a-assets.
-}
timeout : Int -> Attribute msg
timeout ms =
  vattribute "timeout" ( toString ms )


-- a-frame components properties


{-| camera
-}
camera : List (String, String) -> Attribute msg
camera list =
  vattribute "camera" (styleListToString list)

{-| canvas
-}
canvas : List (String, String) -> Attribute msg
canvas list =
  vattribute "canvas" (styleListToString list)

{-| collada-model
-}
colladaModel : String -> Attribute msg
colladaModel model =
  vattribute "collada-model" model

{-| cursor
-}
cursor : List (String, String) -> Attribute msg
cursor list =
  vattribute "cursor" (styleListToString list)

{-| cursor-listener
-}
cursorListener : Attribute msg
cursorListener =
  vattribute "cursor-listener" ""

{-| fog
-}
fog : List (String, String) -> Attribute msg
fog list =
  vattribute "fog" (styleListToString list)

{-| keyboard-shortcuts
-}
keyboardShortcuts : List (String, String) -> Attribute msg
keyboardShortcuts list =
  vattribute "keyboard-shortcuts" (styleListToString list)

{-| light
-}
light : List (String, String) -> Attribute msg
light list =
  vattribute "light" (styleListToString list)

{-| look-at
-}
lookAt : String -> Attribute msg
lookAt spec =
  vattribute "look-at" spec

{-| lookControls
-}
lookControls : Attribute msg
lookControls =
  vattribute "lookControls" ""

{-| obj-model
-}
objModel : List (String, String) -> Attribute msg
objModel list =
  vattribute "obj-model" (styleListToString list)

{-| raycaster
-}
raycaster : List (String, String) -> Attribute msg
raycaster list =
  vattribute "raycaster" (styleListToString list)

{-| sound
-}
sound : List (String, String) -> Attribute msg
sound list =
  vattribute "sound" (styleListToString list)

{-| stats
-}
stats : Attribute msg
stats =
  vattribute "lookControls" ""

{-| visible
-}
visible : Bool -> Attribute msg
visible isVisible =
  vattribute "visible" ( toString isVisible )

{-| vr-mode-ui
-}
vrModeUI : List (String, String) -> Attribute msg
vrModeUI list =
  vattribute "vr-mode-ui" (styleListToString list)

{-| wasd-controls
-}
wasdControls : List (String, String) -> Attribute msg
wasdControls list =
  vattribute "wasd-controls" (styleListToString list)


-- a-frame mesh attributes (shared by all primitive elements)


{-| color - material.color; default: gray
-}
color : String -> Attribute msg
color c =
  vattribute "color" c

{-| metalness - material.metalness; default: 0
-}
metalness : number -> Attribute msg
metalness value =
  vattribute "metalness" ( toString value )

{-| opacity - material.opacity; default: 1
-}
opacity : number -> Attribute msg
opacity value =
  vattribute "opacity" ( toString value )

{-| roughness - material.roughness; default: 0.5.
-}
roughness : number -> Attribute msg
roughness value =
  vattribute "roughness" ( toString value )

{-| shader - material.shader; default: standard.
-}
shader : String -> Attribute msg
shader value =
  vattribute "shader" value

{-| src - material.src; default: None.
-}
src : String -> Attribute msg
src value =
  vattribute "src" value

{-| translate - geometry; default: translate 0 0 0
-}
translate : number -> number -> number -> Attribute msg
translate x y z =
  vattribute "translate" ( nlistToString [x, y, z] )

{-| transparent - material.transparent; default: true.
-}
transparent : Bool -> Attribute msg
transparent isTransparent =
  vattribute "transparent" ( toString isTransparent )


-- a-box attributes


{-| depth -}
depth : number -> Attribute msg
depth meters =
  vattribute "depth" ( toString meters )

{-| height -}
height : number -> Attribute msg
height meters =
  vattribute "height" ( toString meters )

{-| width -}
width : number -> Attribute msg
width meters =
  vattribute "width" ( toString meters )


-- a-camera attributes


{-| far - camera.far; default: 10000.
-}
far : number -> Attribute msg
far value =
  vattribute "far" ( toString value )

{-| fov - camera.fov; default: 80.
-}
fov : number -> Attribute msg
fov value =
  vattribute "fov" ( toString value )

{-| look-controls-enabled - look-controls.default: enabled=true
-}
lookControlsEnabled : Bool -> Attribute msg
lookControlsEnabled isEnabled =
  vattribute "look-controls-enabled" ( toString isEnabled )

{-| near - camera.near; default: 0.5
-}
near : number -> Attribute msg
near value =
  vattribute "near" ( toString value )

{-| wasd-controls-enabled - wasd-controls.enabled; default: true
-}
wasdControlsEnabled : Bool -> Attribute msg
wasdControlsEnabled isEnabled =
  vattribute "wasd-controls-enabled" ( toString isEnabled )

{-| open-ended - geometry.openEnded; default: false
-}
openEnded : Bool -> Attribute msg
openEnded isOpenEnded =
  vattribute "open-ended" ( toString isOpenEnded )

{-| radius-bottom - geometry.radiusBottom; default: 0.75.
-}
radiusBottom : number -> Attribute msg
radiusBottom value =
  vattribute "radius-bottom" ( toString value )

{-| radius-top - geometry.radiusTop; default: 0.75.
-}
radiusTop : number -> Attribute msg
radiusTop value =
  vattribute "radius-top" ( toString value )

{-| segments-height - geometry.segmentsHeight; default: 1.
-}
segmentsHeight : number -> Attribute msg
segmentsHeight value =
  vattribute "segments-height" ( toString value )

{-| segments-radial - geometry.segmentsRadial; default: 36.
-}
segmentsRadial : number -> Attribute msg
segmentsRadial value =
  vattribute "segments-radial" ( toString value )

{-| theta-length - geometry.thetaLength; default: 360;
-}
thetaLength : number -> Attribute msg
thetaLength value =
  vattribute "theta-length" ( toString value )

{-| theta-start - geometry.thetaStart; default: 0.
-}
thetaStart : number -> Attribute msg
thetaStart value =
  vattribute "theta-start" ( toString value )

{-| fuse - cursor.fuse; default: false.
-}
fuse : Bool -> Attribute msg
fuse isFuse =
  vattribute "fuse" ( toString isFuse )

{-| max-distance - cursor.maxDistance; default: 1000.
-}
maxDistance : number -> Attribute msg
maxDistance meters =
  vattribute "max-distance" ( toString meters )

{-| radius - geometry.radius; default: 2.
-}
radius : number -> Attribute msg
radius value =
  vattribute "radius" ( toString value )

{-| angle - light.angle; default: 60.
-}
angle : number -> Attribute msg
angle value =
  vattribute "angle" ( toString value )

{-| decay - light.decay; default: 1.
-}
decay : number -> Attribute msg
decay value =
  vattribute "decay" ( toString value )

{-| distance - light.distance; default: 0.0.
-}
distance : number -> Attribute msg
distance meters =
  vattribute "distance" ( toString meters )

{-| exponent - light.exponent; default: 10.0.
-}
exponent : number -> Attribute msg
exponent value =
  vattribute "exponent" ( toString value )

{-| ground-color - light.groundColor; default: #fff.
-}
groundColor : String -> Attribute msg
groundColor c =
  vattribute "ground-color" c

{-| intensity - light.intensity; default: 1.0.
-}
intensity : number -> Attribute msg
intensity value =
  vattribute "intensity" ( toString value )

{-| type - light.type; default: directional.
-}
lightType : String -> Attribute msg
lightType value =
  vattribute "type" value

{-| mtl - obj-model.mtl; default: null.
-}
mtl : String -> Attribute msg
mtl value =
  vattribute "mtl" value

{-| radius-inner - geometry.radiusInner
-}
radiusInner : number -> Attribute msg
radiusInner value =
  vattribute "radius-inner" ( toString value )

{-| radius-outer - geometry.radiusOuter
-}
radiusOuter : number -> Attribute msg
radiusOuter value =
  vattribute "radius-outer" ( toString value )

{-| segments-phi - geometry.segmentsPhi
-}
segmentsPhi : number -> Attribute msg
segmentsPhi value =
  vattribute "segments-phi" ( toString value )

{-| segments-width - geometry.segmentsWidth; default: 64.
-}
segmentsWidth : number -> Attribute msg
segmentsWidth meters =
  vattribute "segments-width" ( toString meters )

{-| arc - geometry.arc; default: 360.
-}
arc : number -> Attribute msg
arc value =
  vattribute "arc" ( toString value )

{-| radius-tubular - geometry.radiusTubular; default: 0.2.
-}
radiusTubular : number -> Attribute msg
radiusTubular value =
  vattribute "radius-tubular" ( toString value )

{-| segments-tubular - geometry.segmentsTubular; default: 8.
-}
segmentsTubular : number -> Attribute msg
segmentsTubular value =
  vattribute "segments-tubular" ( toString value )

{-| crossOrigin - <video>.crossOrigin; default: anonymous. }
-}
crossOrigin : String -> Attribute msg
crossOrigin value =
  vattribute "crossOrigin" value

