# Open questions log — walker-viewport-3d-in-2d

Gate — unsigned at time of writing. Written by `/gdd reverse --path godot silent`, 2026-09-27. Every `[MISSING]` in `GDD.md` is an entry here.

Format: THE QUESTION / THE STAKES / DECISION DEADLINE / OPTIONS / OWNER / STATUS. Status is Open, In Discussion, or Decided. Decided items move into their GDD section before the next session.

| # | Question | Stakes | Deadline | Options | Owner | Status |
|---|---|---|---|---|---|---|
| Q-01 | What is this demo for in Walker? | Without a purpose, nobody can say when it is done; Ghost Center stays permanent | before any further work or film | (a) film source only; (b) reusable 3D-in-2D component for a Walker game; (c) teaching example in a course | Nik Bear Brown | Open |
| Q-02 | Who is the audience, and what should they come away able to see or do? | Replaces PX goals; decides what a film must show | with Q-01 | (a) developer learning viewports; (b) student in a course; (c) none (reference copy) | Nik Bear Brown | Open |
| Q-03 | Stay a demo, or become the seed of a game? | If a game, the whole Vision layer must be written by a person (`/gdd v1`); if a demo, this GDD is complete as is | with Q-01 | demo / game / undecided | Nik Bear Brown | Open |
| Q-04 | Model-specific attribution for `robot.glb` / `robot_demo.png` | Redistribution risk if a film or repo ships the model (`FRICTIONAL.md:20-21`) | before any publication | review upstream attribution; replace model; keep private | Nik Bear Brown | Open |
| Q-05 | What counts as visual verification? | Headless PASS is not a picture; without criteria, "verified" drifts | before the films | GPU capture at 3 window sizes; human resize check (H-01); both | Nik Bear Brown | Open |
| Q-06 | Definition of done for the two pending native-4K Liam films | Films are blocked on capture; unclear what unblocks and what "review-ready" means | when the capture blocker clears | agree a shot list against F-01..F-03 | Nik Bear Brown | Open |
| Q-07 | CORE is 3/7 = 43% (over 40%). Cut or extend? | Priority Inflation flag; for a demo this is harmless | low; any time | (1) accept a reduced MVP by reclassifying F-03 as SUPPORTING (weakens the demo's point); (2) keep CORE as is and accept the overage because the demo is its CORE | Nik Bear Brown | Open (tags left unchanged) |
| Q-08 | Intended behaviour at portrait / narrow windows (width is ignored by the resize code) | Robot may be clipped on phones; mobile renderer is configured (`godot/project.godot:32`) | before any mobile claim | keep upstream behaviour and document it; propose a width-aware fix outside `godot/` | Nik Bear Brown | Open |
