" Vim compiler file
" Compiler:	    C# (Unity errors)
" TODO: Consider using mono as a base (gmcs) instead of cs?

" Don't mess with current_compiler to inherit C# efm and makeprg:
"if exists("current_compiler")
"  finish
"endif
"let current_compiler = "cs"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif


" Adding to existing C# errorformat!

" Debug.LogError()
" Grab all elements of the callstack to step through them.
"   UnityEngine.EventSystems.EventSystem:Update() (at C:\unity\EventSystem\EventSystem.cs:285)
CompilerSet errorformat+=%m\ %.%#(at\ %f\:%l)

" These are probably always output after the callstack captured above? Maybe
" unnecessary.
" (Filename: Assets/Scripts/Input/InputManager.cs Line: 129)
CompilerSet errorformat+=(%m:\ %f\ Line:\ %l)

