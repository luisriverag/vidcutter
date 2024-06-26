; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#ifndef AppVersion
    #define AppVersion "6.0.5.1"
#endif

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CCDC440A-CC57-4BED-8CDE-1DA285976A64}
AppName=VidCutter
AppVersion={#AppVersion}
AppVerName=VidCutter
AppPublisher=Pete Alexandrou
AppPublisherURL=https://vidcutter.ozmartians.com
DefaultDirName={pf}\VidCutter
DefaultGroupName=VidCutter
OutputBaseFilename=VidCutter-6.0.5.1-setup-win64
SetupIconFile=..\..\data\icons\vidcutter.ico
UninstallDisplayIcon={app}\vidcutter.exe
Compression=lzma2
LZMAUseSeparateProcess=yes
SolidCompression=yes
ShowLanguageDialog=no
VersionInfoVersion={#AppVersion}
VersionInfoCompany=ozmartians.com
VersionInfoCopyright=(c) 2021 Pete Alexandrou
VersionInfoProductName=VidCutter x64
VersionInfoProductVersion={#AppVersion}
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
WizardImageFile=assets\WizModernImage.bmp
WizardSmallImageFile=assets\SmallWizardImage.bmp
WizardImageStretch=False

[InstallDelete]
Type: filesandordirs; Name: "{app}"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks] 
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "..\pyinstaller\dist\vidcutter.exe"; DestDir: "{app}"
Source: "..\..\data\icons\uninstall.ico"; DestDir: "{app}"
Source: "assets\vidcutter.visualelementsmanifest.xml"; DestDir: "{app}"
Source: "assets\tile.png"; DestDir: "{app}"

[Icons]
Name: "{group}\VidCutter"; Filename: "{app}\vidcutter.exe"
Name: "{userdesktop}\VidCutter"; Filename: "{app}\vidcutter.exe"; Tasks: desktopicon
Name: "{group}\{cm:UninstallProgram,VidCutter}"; Filename: "{uninstallexe}"; IconFilename: "{app}\uninstall.ico"

[Run]
Filename: "{app}\vidcutter.exe"; Flags: nowait postinstall skipifsilent 64bit; Description: "{cm:LaunchProgram,VidCutter}"

[Registry]
Root: HKCR; SubKey: ".vcp"; ValueType: string; ValueData: "VidCutterProjectFile"; Flags: uninsdeletekey
Root: HKCR; SubKey: "VidCutterProjectFile"; ValueType: string; ValueData: "VidCutter Project File"; Flags: uninsdeletekey
Root: HKCR; SubKey: "VidCutterProjectFile\Shell\Open\Command"; ValueType: string; ValueData: """{app}\vidcutter.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "VidCutterProjectFile\DefaultIcon"; ValueType: string; ValueData: "{app}\vidcutter.exe,0"; Flags: uninsdeletevalue
