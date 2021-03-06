; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "윈도우 정품인증 우회 바이러스"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "ingpungya, Inc."
!define PRODUCT_WEB_SITE "lcsw.ga"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\AppMainExe.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Setup.exe"
LoadLanguageFile "${NSISDIR}\Contrib\Language files\Korean.nlf"
InstallDir "$PROGRAMFILES\윈도우 정품인증 우회 바이러스"
Icon "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
UninstallIcon "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
DirText "설치 프로그램은 $(^Name)을(를) 위 폴더에 설치합니다.$\r$\n$\r$\n다른 폴더에 설치하시려면, 찾아보기를 눌러 다른 폴더를 선택하세요."
LicenseText "만약 계약서에 동의하신다면, 동의를 선택하시어 설치를 계속하세요. $(^Name) 설치를 진행하려면 반드시 동의해야 합니다."
LicenseData "C:\Users\nayab\Desktop\윈도우 크랙 조크 바이러스\notic.txt"
LicenseForceSelection checkbox
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  File "c:\path\to\file\AppMainExe.exe"
  CreateDirectory "$SMPROGRAMS\윈도우 정품인증 우회 바이러스"
  CreateShortCut "$SMPROGRAMS\윈도우 정품인증 우회 바이러스\윈도우 정품인증 우회 바이러스.lnk" "$INSTDIR\AppMainExe.exe"
  CreateShortCut "$DESKTOP\윈도우 정품인증 우회 바이러스.lnk" "$INSTDIR\AppMainExe.exe"
  File "c:\path\to\file\Example.file"
  File "C:\Users\nayab\Desktop\윈도우 크랙 조크 바이러스\winformstudy.exe"
  File "C:\Users\nayab\Desktop\윈도우 크랙 조크 바이러스\notic.txt"
SectionEnd

Section -AdditionalIcons
  CreateShortCut "$SMPROGRAMS\윈도우 정품인증 우회 바이러스\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\AppMainExe.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\AppMainExe.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "systame32를 제거 했습니다"
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "systame32를 제거 하시겠습니까?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\notic.txt"
  Delete "$INSTDIR\winformstudy.exe"
  Delete "$INSTDIR\Example.file"
  Delete "$INSTDIR\AppMainExe.exe"

  Delete "$SMPROGRAMS\윈도우 정품인증 우회 바이러스\Uninstall.lnk"
  Delete "$DESKTOP\윈도우 정품인증 우회 바이러스.lnk"
  Delete "$SMPROGRAMS\윈도우 정품인증 우회 바이러스\윈도우 정품인증 우회 바이러스.lnk"

  RMDir "$SMPROGRAMS\윈도우 정품인증 우회 바이러스"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd