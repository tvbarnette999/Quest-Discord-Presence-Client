; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Quest Discord Presence Client"
#define MyAppVersion "1.5"
#define MyAppPublisher "Lauriethefish#6700"
#define MyAppURL "https://github.com/Lauriethefish/Quest-Discord-Presence-Client"
#define MyAppExeName "Quest-Discord-Presence-Client.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{261CA60A-41A1-4810-954E-448BA6E87804}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\Lauri\Beat_Saber_Mod_Dev\Quest-Discord-Presence-Client\LICENSE
InfoAfterFile=C:\Users\Lauri\Beat_Saber_Mod_Dev\Quest-Discord-Presence-Client\installer\information.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Users\Lauri\Beat_Saber_Mod_Dev\Quest-Discord-Presence-Client\installer
OutputBaseFilename=quest-discord-presence
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Users\Lauri\Beat_Saber_Mod_Dev\Quest-Discord-Presence-Client\publish\win-x64\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Lauri\Beat_Saber_Mod_Dev\Quest-Discord-Presence-Client\publish\win-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{userstartup}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\Quest-Discord-Presence-Client.exe"; Description: "Open the client"; Flags: nowait postinstall skipifsilent

// Kill the app to prevent errors while uninstalling
[UninstallRun]
Filename: "{cmd}"; Parameters: "/C ""taskkill /im Quest-Discord-Presence-Client.exe /f /t"

