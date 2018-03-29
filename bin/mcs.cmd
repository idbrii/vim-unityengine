:: https://github.com/w0rp/ale/issues/1370
@echo off
:: Note: Unity 5.6 doesn't have an mcs.bat and doesn't have mcs.exe (but it
:: does have mcs that points to an invalid location).
call "%ProgramFiles%\Mono\bin\mcs.bat" %*
