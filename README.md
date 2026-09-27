# Walker — 3D in 2D

This is Walker's independent local copy of the official Godot demo `viewport/3d_in_2d`: a 3D robot is rendered into a `SubViewport` and shown as an ordinary 2D sprite, and the render target is resized with the window so the robot stays sharp. It is a rendering tech demo, not a game: there are no controls, goals or fail states. It sits in Walker as a verified-in-part local adaptation with two native-4K Liam films pending and a recovered design package; its wider purpose in Walker is an open question (`design/decisions.md` Q-01). What has been found: Godot 4.7.2 headless import and a 120-frame runtime exit 0, and 12 headless state checks pass (animation, rotation, texture path, resize compensation at three sizes). No GPU pixels have been inspected, and both films remain pending.

## How to run

1. Open `godot/project.godot` in Godot 4.7 (the logs record 4.7.2.stable). The main scene is `godot/3d_in_2d.tscn`.
2. Run it. There are no input actions. The only interaction is resizing the window: the robot's render target follows the window height and the sprite scales down to compensate.

## Design

- [`GDD.md`](GDD.md): recovered design document (identical copy of `design/GDD.md`).
- [`design/DECK.html`](design/DECK.html): review slides.
- [`design/IMPLEMENTATION-MAP.md`](design/IMPLEMENTATION-MAP.md): feature → scene/script/line.
- [`design/decisions.md`](design/decisions.md): open questions (purpose in Walker, audience, attribution, visual acceptance criteria).

The GDD is a recovered, unapproved description of what the code does, written by `/gdd reverse` in silent mode. No design gate is signed, and it does not invent a player goal the demo does not have.

## Source & license

Independent local copy of Godot `viewport/3d_in_2d`, source commit `a3b5c113112f77291d5f3d1360f33a882fdc52f7`. The Godot Engine contributors' MIT notice is retained in `LICENSE.md`. The original model, sprites, import settings, UIDs and README remain under `godot/`. Upstream is untouched. Runtime change: title only. Model-specific attribution should be reviewed before any future redistribution; no distribution has been performed (`FRICTIONAL.md`).

## Status

- Godot 4.7.2 headless import and 120-frame normal runtime exited 0.
- `viewport-fixed-20260924.log`: 12 passing checks. The five-frame 2D animation starts and advances, the 3D model rotation advances, the sprite has the intended `ViewportTexture` path, and resizing the root to 1280×720, 1920×1080 and 800×600 updates the `SubViewport` to the height-sized square with a compensating sprite scale. Root size was assigned through the engine window property, not an OS mouse-driven resize or a film.
- The first diagnostic called a nonexistent `get_viewport_path()`. That was a probe bug, fixed in the probe only; the failure is kept in `viewport-20260924.log`.
- Not verified: GPU texture pixels, transparency, lighting, MSAA, appearance, 4K capture. Headless behaviour is not visual verification.
- Both native-4K Liam films and visible GPU verification remain pending under the shared user-closed capture blocker. No publishing, no human approval.

Repository: https://github.com/nikbearbrown/walker-viewport-3d-in-2d
