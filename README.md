# vim-unityeditor
Work with the Unity game engine from vim.

# Load callstacks from the editor log

cs.vim enhances c# output to find unity errors. Use something like this to load them:

    " Platform dependent. See https://docs.unity3d.com/Manual/LogFiles.html
    let logfile = $LocalAppData .'/Unity/Editor/Editor.log'
    " Project dependent.
    let g:project_root = 'c:/blah/project'

    if !isdirectory(g:project_root .'/Assets')
        echoerr "project_root should be the root of your Unity project"
        return
    endif
    let logfile = fnamemodify(logfile, ":p")
    " Unity logs can be massive (GBs) when you have spam, so only take the last chunk.
    exec '!tail --lines=5000 '. logfile .'> /tmp/shortened.log'
    exec 'cd '. g:project_root
    compiler cs
    cgetfile /tmp/shortened.log
    copen


# See also

* [ctrlp unity3d docs](https://github.com/idbrii/ctrlp-unity3d-docs) for searching Unity documentation.


# TODO
Check out VimUnity3D to get building working:
https://github.com/K-Tone/VimUnity3D/blob/master/vimcompile.py

