# vim-unityengine
Make vim understand files and formats from the Unity game engine.

# Features

* `compiler cs` processes Unity build output to recognize callstacks.
* `unityengine#ale#setup_ale(path_to_unity_project)` simplifies linting with [ale](https://github.com/w0rp/ale).
* ShaderLab files recognized as glsl. (See [vim polyglot](https://github.com/sheerun/vim-polyglot) or [vim glsl](https://github.com/tikhomirov/vim-glsl)).

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

* [vim-unityengine-docs](https://github.com/idbrii/vim-unityengine-docs) for searching Unity documentation.
* For completion of Unity code, see [omnisharp-vim](https://github.com/OmniSharp/omnisharp-vim) for C# from dlls (use `:OmniSharpInstall` to ensure proper setup) or use ctags on [UnityCsReference](https://github.com/Unity-Technologies/UnityCsReference) (pick the branch for your version of Unity).


# TODO
Check out VimUnity3D to get building working:
https://github.com/K-Tone/VimUnity3D/blob/master/vimcompile.py

