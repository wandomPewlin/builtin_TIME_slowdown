# Significant Slowdown Using TIME in Shaders with Godot Engine

Godot version: `v3.2.alpha.custom_build.2e065d8ad`
Using `OpenGL ES 3.0`

There are two scenes in the repo. Both use `MultiMeshInstance` to animate 200K spheres moving back and forth. `with_TIME.tscn` uses the built-in `TIME` variable to drive the animation; `with_uniform.tscn` uses custom uniform float updated every frame in `with_uniform.gd`. Using `TIME`, the framerate fluctuate around 30 FPS; using custom uniform, the framerate stays at 60 FPS (even for 400K spheres).

## This is probably not a bug

If you play `with_TIME.tscn` then switch the active scene in your Godot editor to an empty one, the framerate would go back to 60 FPS. It seems like the slowdown is due to the extra work done to animate the spheres inside the editor. Even though this is probably not a major issue in production, I still wanted to put this observation out there; in hopes of saving other developers' precious time.
