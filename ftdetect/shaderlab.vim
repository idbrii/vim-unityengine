" Basic (bad) syntax for Unity's ShaderLab language
"
" If useful, checkout better versions:
" * https://github.com/mingchaoyan/vim-shaderlab
" * https://github.com/vim-scripts/ShaderHighLight

if get(g:, "unityengine_detect_shader_filetypes", 1)
    " Godot also uses .shader, so require Assets folder.
    au BufNewFile,BufRead */Assets/*/*.shader setfiletype glsl
endif
