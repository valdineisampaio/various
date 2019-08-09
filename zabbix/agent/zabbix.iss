; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ZabbixAgent"
#define MyAppVersion "3.4.6"
#define MyAppPublisher "Zabbix LLC"
#define MyAppURL "http://www.zabbix.com/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8D161CF5-DE1F-4FAD-8531-5F029E0BD020}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir=C:\git\zabbix\agent
OutputBaseFilename=zabbix{#MyAppVersion}
SetupIconFile=C:\git\zabbix\agent\z.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Files]
Source: "C:\git\zabbix\agent\conf\zabbix_agentd.win.conf"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\git\zabbix\agent\bin\win64\zabbix_agentd.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\git\zabbix\agent\bin\win64\zabbix_get.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\git\zabbix\agent\bin\win64\zabbix_sender.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Run]
Filename: "{sys}\sc.exe"; Parameters: "stop ""Zabbix Agent"" "
Filename: "{sys}\sc.exe"; Parameters: "delete ""Zabbix Agent"" "
Filename: "{app}\zabbix_agentd.exe"; Parameters: "--config ""{app}\zabbix_agentd.win.conf"" --install"
Filename: "{sys}\sc.exe"; Parameters: "start ""Zabbix Agent"" "

[UninstallRun]
Filename: "{sys}\sc.exe"; Parameters: "stop ""Zabbix Agent"" "
Filename: "{sys}\sc.exe"; Parameters: "delete ""Zabbix Agent"" "


