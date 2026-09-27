extends SceneTree

var failures := 0
func _initialize() -> void:
	call_deferred("run")

func check(ok: bool, label: String) -> void:
	if not ok:
		failures += 1
	print("PASS " if ok else "FAIL ", label)

func run() -> void:
	var demo: Node2D = load("res://3d_in_2d.tscn").instantiate()
	root.add_child(demo)
	await process_frame
	await process_frame
	var sprite: AnimatedSprite2D = demo.get_node("AnimatedSprite2D")
	var model: Node3D = demo.get_node("SubViewport/Robot3D/Model")
	check(sprite.is_playing(), "2D animation started")
	check(sprite.sprite_frames.get_frame_count("default") == 5, "five atlas frames")
	var frame := sprite.frame
	var rotation := model.rotation.y
	await create_timer(0.45).timeout
	check(sprite.frame != frame, "2D animation advances")
	check(model.rotation.y > rotation + 0.2, "3D robot rotates with processing")
	check(demo.viewport_sprite.texture is ViewportTexture, "sprite uses viewport texture")
	check(demo.viewport_sprite.texture.viewport_path == NodePath("SubViewport"), "texture references correct viewport")
	for dimensions in [Vector2i(1280, 720), Vector2i(1920, 1080), Vector2i(800, 600)]:
		root.size = dimensions
		await process_frame
		await process_frame
		check(demo.viewport.size == Vector2i(dimensions.y, dimensions.y), "square render target " + str(dimensions))
		check(absf(demo.viewport_sprite.scale.y * dimensions.y - 300) < 0.01, "compensated sprite size " + str(dimensions))
	print("RESULT failures=", failures, "; headless state, no GPU pixel verification")
	quit(1 if failures else 0)
