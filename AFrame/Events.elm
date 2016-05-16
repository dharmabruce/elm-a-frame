module AFrame.Events exposing
  ( onChild_Attached, onComponentChanged, onLoaded, onPause, onPlay
  , onStateAdded, onStateRemoved, onTimeout, onModelTimeot, onCursorClick
  , onCursorMouseDown, onCursorMouseEnter, onCursorMouseUp, onCursorMouseLeave
  , onRaycasterIntersected, onRaycasterIntersectedCleared
  , onRaycasterIntersection, onRaycasterIntersectionCleared, soundEnded )

import Html exposing (Attribute)
import Html.Events exposing (on)
import VirtualDom exposing (attribute)

import Json.Decode as Json exposing ((:=))

{- (From Html.Events...)
Create custom event listeners. Normally this will not be necessary, but
you have the power! Here is how `onClick` is defined for example:

    import Json.Decode as Json

    onClick : msg -> Attribute msg
    onClick message =
      on "click" (Json.succeed message)

The first argument is the event name in the same format as with JavaScript's
[`addEventListener`][aEL] function.

The second argument is a JSON decoder. Read more about these [here][decoder].
When an event occurs, the decoder tries to turn the event object into an Elm
value. If successful, the value is routed to your `update` function. In the
case of `onClick` we always just succeed with the given `message`.

If this is confusing, work through the [Elm Architecture Tutorial][tutorial].
It really does help!

[aEL]: https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener
[decoder]: http://package.elm-lang.org/packages/elm-lang/core/latest/Json-Decode
[tutorial]: https://github.com/evancz/elm-architecture-tutorial/
-}

-- a-entity Events
-- Some of these are shared by other elements such as a-scene.


{-|-}
onChild_Attached : msg -> Attribute msg
onChild_Attached msg =
  on "child-attached" (Json.succeed msg)

{-|-}
onComponentChanged : msg -> Attribute msg
onComponentChanged msg =
  on "componentchanged" (Json.succeed msg)

{-|-}
onLoaded : msg -> Attribute msg
onLoaded msg =
  on "loaded" (Json.succeed msg)

{-|-}
onPause : msg -> Attribute msg
onPause msg =
  on "pause" (Json.succeed msg)

{-|-}
onPlay : msg -> Attribute msg
onPlay msg =
  on "play" (Json.succeed msg)

{-|-}
onStateAdded : msg -> Attribute msg
onStateAdded msg =
  on "stateadded" (Json.succeed msg)

{-|-}
onStateRemoved : msg -> Attribute msg
onStateRemoved msg =
  on "stateremoved" (Json.succeed msg)


-- a-scene Events


{-|-}
onEnter_VR : msg -> Attribute msg
onEnter_VR msg =
  on "enter-vr" (Json.succeed msg)

{-|-}
onExit_VR : msg -> Attribute msg
onExit_VR msg =
  on "exit-vr" (Json.succeed msg)

{-|-}
onRender : msg -> Attribute msg
onRender msg =
  on "render" (Json.succeed msg)


-- a-assets events


{-|-}
onTimeout : msg -> Attribute msg
onTimeout msg =
  on "timeout" (Json.succeed msg)


-- a-frame components events


{-| Timeout handler for collada-model component.
-}
onModelTimeot : msg -> Attribute msg
onModelTimeot msg =
  on "model-timeout" (Json.succeed msg)

{-| cursor-click - Emitted on both cursor and intersected entity if a currently
intersected entity is clicked (whether by mouse or by fuse).
-}
onCursorClick : msg -> Attribute msg
onCursorClick msg =
  on "cursor-click" (Json.succeed msg)

{-| cursor-mousedown - Emitted on both cursor and intersected entity (if any)
on mousedown on the canvas element.
-}
onCursorMouseDown : msg -> Attribute msg
onCursorMouseDown msg =
  on "cursor-mousedown" (Json.succeed msg)

{-| cursor-mouseenter- Emitted on both cursor and intersected entity (if any)
when cursor intersects with an entity.
-}
onCursorMouseEnter : msg -> Attribute msg
onCursorMouseEnter msg =
  on "cursor-mouseenter" (Json.succeed msg)

{-| cursor-mouseleave - Emitted on both cursor and intersected entity (if any)
when cursor no longer intersects with previously intersected entity.
-}
onCursorMouseLeave : msg -> Attribute msg
onCursorMouseLeave msg =
  on "cursor-mouseleave" (Json.succeed msg)

{- cursor-mouseup - Emitted on both cursor and intersected entity (if any) on
mouseup on the canvas element.
-}
onCursorMouseUp : msg -> Attribute msg
onCursorMouseUp msg =
  on "cursor-mouseup" (Json.succeed msg)


-- a-frame raycaster events


{-| raycaster-intersected - Emitted on the intersected entity. Entity is
intersecting with a raycaster. Event detail will contain el, the raycasting
entity, and intersection, an object containing detailed data about the
intersection.
-}
onRaycasterIntersected : msg -> Attribute msg
onRaycasterIntersected msg =
  on "raycaster-intersected" (Json.succeed msg)

{-| raycaster-intersected-cleared -Emitted on the intersected entity. Entity is
no longer intersecting with a raycaster. Event detail will contain el, the
raycasting entity.
-}
onRaycasterIntersectedCleared : msg -> Attribute msg
onRaycasterIntersectedCleared msg =
  on "raycaster-intersected-cleared" (Json.succeed msg)

{-| raycaster-intersection - Emitted on the raycasting entity. Raycaster is
intersecting with one or more entities. Event detail will contain els, an array
with the intersected entities, and intersections, an array of objects containing
detailed data about the intersections.
-}
onRaycasterIntersection : msg -> Attribute msg
onRaycasterIntersection msg =
  on "raycaster-intersection" (Json.succeed msg)

{-| raycaster-intersection-cleared - Emitted on the raycasting entity. Raycaster
is no longer intersecting with an entity. Event detail will contain el, the
formerly intersected entity.
-}
onRaycasterIntersectionCleared : msg -> Attribute msg
onRaycasterIntersectionCleared msg =
  on "raycaster-intersection-cleared" (Json.succeed msg)

{-| sound-ended - triggered when sound finishes playing.
-}
soundEnded : msg -> Attribute msg
soundEnded msg =
  on "sound-ended" (Json.succeed msg)

