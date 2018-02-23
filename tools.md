Editor Windows
==============

* [Preview animations in editor](https://forum.unity.com/threads/sample-mecanim-animations-in-editor.262973/#post-1741587)
    * Simple code to preview animations on objects in edit mode.


Attributes
==========

* [ReadOnlyAttribute](https://gist.github.com/MattRix/9fb45606bfbc16254641e4d462117737)
    * Make properties visible but not editable.
* [MinMaxRangeAttribute](http://www.grapefruitgames.com/blog/2013/11/a-min-max-range-for-unity/)
    * A min-max field. Like RangeInt, but editable.
    * There's a similar RangedFloat from [this Unite 2016 talk on Scriptable Object](https://youtu.be/6vmRwLYWNRo?t=39m9s). Looks like [this is the relevant commit](https://bitbucket.org/richardfine/scriptableobjectdemo/commits/03a730f1b0581c0d424268bc03e33dac21f34248). Look at MinMaxRangeAttribute, RangedFloat, and RangedFloatDrawer. I think the real magic happens in RangedFloatDrawer.
* [NamedArrayAttribute](https://answers.unity.com/answers/1472176/view.html)
    * a user-friendly array with indices based on an enum shown as labels in editor.


Standalone Objects
==================

* [NestedPrefabs](https://gist.github.com/karlmarxman/b1b05c1d8e4166d1d5eea8589445cffa)
    * Simple version of nesting prefabs that draws meshes of the nested objects.

* [FlyCam_Extended](http://wiki.unity3d.com/index.php/FlyCam_Extended)
    * Debug fly camera


Code Tutorials
==============

* [Attributes that operate on objects](https://answers.unity.com/answers/1471740/view.html)
    * Basics of how to access objects (Object children or any Serializable).
* [Attributes that reference other variables](https://answers.unity.com/questions/1471758/create-an-attribute-that-references-another-proper.html)
    * Info on how to write PropertyDrawers that link two variables.



