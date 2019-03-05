::openscad.com -o p2.stl -D "part=\"Arm1\"" Original.scad
::pause
@echo off
setlocal enabledelayedexpansion

set  arrayline[0]=Cuff
set  arrayline[1]=Arm1

cd ArchivosOriginales

echo ----------------Proceso de automatizacion de renderizacion de piezas----------------
echo.
echo.
echo.

::read it using a FOR /L statement
for /l %%f in (0,1,1) do (
echo Creando stl...
echo.
openscad.com -o "ArchivosModificados/ArchivosSTL/!arrayline[%%f]!.stl" -D "part=\"!arrayline[%%f]!\"" ArchivosModificados/Original.scad
echo archivo !arrayline[%%f]!.stl creado
echo.
)
pause