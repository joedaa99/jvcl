{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvAppFrmReg.PAS, released on 2002-05-26.

The Initial Developer of the Original Code is John Doe
Portions created by John Doe are Copyright (C) 2003 John Doe.
All Rights Reserved.

Contributor(s):

Last Modified: 2003-11-09

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}

{$I JVCL.INC}

unit JvAppFrmReg;

interface

procedure Register;

implementation

uses
  Classes, Graphics,
  {$IFDEF COMPILER6_UP}
  DesignIntf,
  {$ELSE}
  DsgnIntf,
  {$ENDIF COMPILER6_UP}
  JvDsgnConsts,
  JvAppAnimatedIcon, JvAppEvent, JvAppHotKey, JvFormTransparent,
  JvFormAnimatedIcon, JvFormAnimation, JvFormWallpaper,
  JvFormMagnet, JvAnimTitle, JvFormAutoSize, JvGradientCaption,
  JvGradientCaptionForm, JvFormWallpaperEditor;

{$R ..\resources\JvAppFrmReg.dcr}

procedure Register;
begin
  RegisterComponents(SPaletteAppForm,
    [TJvAppEvents, TJvAppAnimatedIcon, TJvFormAnimatedIcon, TJvApplicationHotKey, TJvTransparentForm,
     TJvFormAnimation, TJvFormWallpaper, TJvFormMagnet, TJvFormAutoSize, TJvGradientCaption]);

  RegisterComponentEditor(TJvGradientCaption, TGradientCaptionEditor);
  RegisterPropertyEditor(TypeInfo(TPicture), TJvFormWallpaper, 'Image', TJvFormWallpaperEditor);
end;

end.

