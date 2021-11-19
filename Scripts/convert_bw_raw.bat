ren *.raw *.rgb
FOR %%f IN (*.rgb) DO (
echo.   Converting raw: %%~nf
magick convert -endian LSB -size 3000x2000+16 -depth 16 -interlace plane %%~nf.rgb -compress none -interlace none -depth 16 -gamma 2.2 -normalize %%~nf.tif
del /q %%~nf.rgb
)
FOR %%f IN (*) do (
echo.   Desaturating: %%~nf
magick mogrify -modulate 100,0 %%f
)

