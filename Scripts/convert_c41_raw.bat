for /r "%CD%" %%f in (*.raw) do (
echo.   Converting raw: %%~nf
rename %%f %%~nf.rgb
magick convert -endian LSB -size 3000x2000+16 -depth 16 -interlace plane %%~nf.rgb -compress none -interlace none -depth 16 -gamma 2.2 -auto-level %%~nf.tif
del /q %%~nf.rgb