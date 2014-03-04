Set _Path=C:\foldername
For /F "Delims=" %%I In ('Attrib "%_Path%"') Do Set _Attribs=%%I
If "%_Attribs:~4,1%"=="H" (
  Attrib -S -H "%_Path%"
  Attrib /D /S -S -H "%_Path%"\*.*
) Else (
  Attrib +S +H "%_Path%"
  Attrib /D /S +S +H "%_Path%"\*.*
)
