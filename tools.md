Editor Windows
==============

* [Preview animations in editor](https://forum.unity.com/threads/sample-mecanim-animations-in-editor.262973/#post-1741587)
    * Simple code to preview animations on objects in edit mode.
* [TeleportSceneCamera](https://forum.unity.com/threads/moving-scene-view-camera-from-editor-script.64920/#post-3425242)
    * Move the scene camera to look somewhere.
    * Alternative: [use AlignViewToObject](http://answers.unity.com/answers/256969/view.html)
    * Alternative: [SceneViewCameraFollower](http://wiki.unity3d.com/index.php/SceneViewCameraFollower)
* [Comparing Profiler captures](https://answers.unity.com/questions/1507144/how-do-i-compare-two-profiler-captures-against-eac.html)
    * Compare before and after Profiler captures.

* [Focus UI on Selection](https://www.reddit.com/r/Unity3D/comments/6yaiit/free_editor_script_to_automatically_hide_ui_layer/dmmc393/)
    * Helpful for doing UI editing. Like a modal editor for Unity UI.
    * You must put all UI on the UI layer.
    * Focuses UI on selection and switch to ortho.
    * Hides UI on deselection and goes back to previous world view.

Attributes
==========

* [ReadOnlyAttribute](https://gist.github.com/MattRix/9fb45606bfbc16254641e4d462117737)
    * Make properties visible but not editable.
* [MinMaxRangeAttribute](http://www.grapefruitgames.com/blog/2013/11/a-min-max-range-for-unity/)
    * A min-max field. Like RangeInt, but editable.
    * There's a similar RangedFloat from [this Unite 2016 talk on Scriptable Object](https://youtu.be/6vmRwLYWNRo?t=39m9s). Looks like [this is the relevant commit](https://bitbucket.org/richardfine/scriptableobjectdemo/commits/03a730f1b0581c0d424268bc03e33dac21f34248). Look at MinMaxRangeAttribute, RangedFloat, and RangedFloatDrawer. I think the real magic happens in RangedFloatDrawer.
* [NamedArrayAttribute](https://answers.unity.com/answers/1472176/view.html)
    * a user-friendly array with indices based on an enum shown as labels in editor.
* [NaughtyAttributes](https://github.com/dbrizov/NaughtyAttributes)
    * A library of simple but useful Attributes.


Standalone Objects
==================

* [NestedPrefabs](https://gist.github.com/karlmarxman/b1b05c1d8e4166d1d5eea8589445cffa)
    * Simple version of nesting prefabs that draws meshes of the nested objects.

* [FlyCam_Extended](http://wiki.unity3d.com/index.php/FlyCam_Extended)
    * Debug fly camera

* Debug.DrawArrow()
    * [DrawArrow](https://forum.unity.com/threads/debug-drawarrow.85980/) - code snippet from forum.
    * [Debug Drawing Extension](https://forum.unity.com/threads/debug-drawing-extension-arkham-interactive.202237/) - free asset that includes several other shapes. Could use better debug vs gizmo namespacing.

* [keijiro's kvant effects suite](https://github.com/search?q=kvant+user%3Akeijiro&type=Repositories)
    * Tunnel for a loading screen tunnel transition.
    * Wig for silly hair.
    * Lattice/Wall for surfaces.
    * etc.


Code Tutorials
==============

* [Attributes that operate on objects](https://answers.unity.com/answers/1471740/view.html)
    * Basics of how to access objects (Object children or any Serializable).
* [Attributes that reference other variables](https://answers.unity.com/questions/1471758/create-an-attribute-that-references-another-proper.html)
    * Info on how to write PropertyDrawers that link two variables.
* [Auto Refresh](https://gist.github.com/cobbpg/a74c8a5359554eb3daa5)
    * Auto Refresh, or hot-loading, is where you run the game, modify code, and the game continues executing with the new code active. So if you need to kite some enemies behind the player to test a some broken jumping code, you can modify the code and test the jump without having to restart the game and re-kite the enemies.


Callstacks
==========

Clone [UnityCsReference](https://github.com/Unity-Technologies/UnityCsReference) somewhere (e.g., `e:\code\clones\unity-csref`).

Make a link to it in Unity's default location:

    (Win, cmd, Ctrl-Shift-Enter)
    > mklink /D c:\buildslave\unity\build e:\code\clones\unity-csref
    symbolic link created for c:\buildslave\unity\build <<===>> e:\code\clones\unity-csref

Now you can jump to Unity code from callstacks (in editor and vim).
