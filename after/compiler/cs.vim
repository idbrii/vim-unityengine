" Vim compiler file
" Compiler:	    C# (Unity errors)
" TODO: Consider using mono as a base (gmcs) instead of cs?

" Don't mess with current_compiler so we inherit C# efm and makeprg:
"if exists("current_compiler")
"  finish
"endif
"let current_compiler = "cs"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif


" Adding to existing C# errorformat!

" Don't make assembly references jumpable (the files don't exist).
"   UnityEngine.GUILayoutGroup.GetNext () (at <819de1aa368e45faa4f78e26c97c62b0>:0)
CompilerSet errorformat+=%+G%m\ %.%#(at\ <%.%#>\:%l)

" Debug.LogError()
" Grab all elements of the callstack to step through them.
"   UnityEngine.EventSystems.EventSystem:Update() (at C:\unity\EventSystem\EventSystem.cs:285)
CompilerSet errorformat+=%m\ %.%#(at\ %f\:%l)

" These are probably always output after the callstack captured above? Maybe
" unnecessary.
" (Filename: Assets/Scripts/Input/InputManager.cs Line: 129)
CompilerSet errorformat+=(%m:\ %f\ Line:\ %l)

