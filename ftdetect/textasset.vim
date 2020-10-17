" Detect unity plaintext files
"

au BufNewFile,BufRead *.asmdef setfiletype json

au BufNewFile,BufRead *.unity,*.spriteatlas setfiletype yaml

" These extensions are so generic, that we should provide a way to avoid
" registering them.
if get(g:, "unityengine_detect_generic_filetypes", 1)
    au BufNewFile,BufRead *.asset,*.meta setfiletype yaml
endif 
