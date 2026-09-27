# Verification and friction — 2026-09-24

Read both scripts/scenes, upstream README and project settings; no source
viewport AGENTS.md found. No Godot worker existed at preflight. Created an
independent copy and kept assets and contributor license unchanged.

Godot 4.7.2 headless import and 120-frame normal runtime exited 0. First
diagnostic wrongly called get_viewport_path(), a nonexistent method. Interrupted
that process; failure remains in viewport-20260924.log. Fixed only the probe
to read the viewport_path property, not runtime code.

viewport-fixed-20260924.log exits 0 with 12 passing checks: five-frame 2D
animation starts/advances, 3D model rotation advances, the sprite has the intended
ViewportTexture path, and resizing root to 1280x720, 1920x1080 and 800x600
updates the SubViewport to the height-sized square with compensating sprite
scale (scale times height remains 300). Root size was assigned through the
engine window property; this was not an OS mouse-driven window resize or film.

No GPU texture pixels, transparency, lighting, MSAA, appearance or 4K capture
were inspected. Model-specific attribution should be reviewed before any future
redistribution; no distribution was performed. Headless behavior is not visual
verification. Next feasible source may be inspected while both films remain
pending under the shared capture blocker; no item retired or approved.
