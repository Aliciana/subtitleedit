; *** Inno Setup version 5.1.11+ Romanian messages ***
; Traducator : Alexandru Bogdan Munteanu (muntealb@gmail.com)
; Corecturi : dr.jackson
; To download user-contributed translations of this file, go to:
; http://www.jrsoftware.org/files/istrans/
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed). 

[LangOptions]
; The following three entries are very important. Be sure to read and 
; understand the '[LangOptions] section' topic in the help file.
LanguageName=Rom<00E2>n<0103>
LanguageID=$0418
LanguageCodePage=1250
; If the language you are translating to requires special font faces or
; sizes, uncomment any of the following entries and change them accordingly.
;DialogFontName=
;DialogFontSize=8
;WelcomeFontName=Verdana
;WelcomeFontSize=12
;TitleFontName=Arial
;TitleFontSize=29
;CopyrightFontName=Arial
;CopyrightFontSize=8

[Messages]
; *** Application titles
SetupAppTitle=Instalare
SetupWindowTitle=Instalare - %1
UninstallAppTitle=Dezinstalare
UninstallAppFullTitle=Dezinstalare %1

; *** Misc. common
InformationTitle=Informatii
ConfirmTitle=Confirmare
ErrorTitle=Eroare

; *** SetupLdr messages
SetupLdrStartupMessage=Va fi instalat programul %1. Doriti s� continuati?
LdrCannotCreateTemp=Nu se poate crea un fisier temporar. Instalare abandonat�
LdrCannotExecTemp=Nu se poate executa un fisier din dosarul temporar. Instalare abandonat�

; *** Startup error messages
LastErrorMessage=%1.%n%nEroarea %2: %3
SetupFileMissing=Fisierul %1 lipseste din dosarul de instalare. Corectati problema sau faceti rost de o copie nou� a programului.
SetupFileCorrupt=Fisierele de instalare sunt deteriorate. Faceti rost de o copie nou� a programului.
SetupFileCorruptOrWrongVer=Fisierele de instalare sunt deteriorate sau sunt incompatibile cu aceast� versiune a Instalatorului. Remediati problema sau obtineti o copie nou� a programului.
NotOnThisPlatform=Acest program nu va rula pe %1.
OnlyOnThisPlatform=Acest program trebuie s� ruleze pe %1.
OnlyOnTheseArchitectures=Acest program poate fi instalat doar pe versiuni de Windows proiectate pentru urm�toarele arhitecturi de procesor:%n%n%1
MissingWOW64APIs=Versiunea de Windows pe care o rulati nu include functionalitatea cerut� de Instalator pentru a realiza o instalare pe 64-biti. Pentru a corecta problema, va trebui s� instalati Service Pack %1.
WinVersionTooLowError=Acest program necesit� %1 versiunea %2 sau mai nou�.
WinVersionTooHighError=Acest program nu poate fi instalat pe %1 versiunea %2 sau mai nou�.
AdminPrivilegesRequired=Trebuie s� fiti logat ca Administrator pentru instalarea acestui program.
PowerUserPrivilegesRequired=Trebuie s� fiti logat ca Administrator sau ca Membru al Grupului de Utilizatori �mputerniciti pentru a instala acest program.
SetupAppRunningError=Programul de instalare a detectat c� %1 ruleaz� �n acest moment.%n%n�nchideti toate instantele programului respectiv, apoi apasati OK pentru a continua sau Anuleaz� pentru a abandona instalarea.
UninstallAppRunningError=Programul de dezinstalare a detectat c� %1 ruleaz� �n acest moment.%n%n�nchideti toate instantele programului respectiv, apoi apasati OK pentru a continua sau Anuleaz� pentru a abandona dezinstalarea.

; *** Misc. errors
ErrorCreatingDir= Programul de instalare nu a putut crea dosarul "%1"
ErrorTooManyFilesInDir=Nu se poate crea un fisier �n dosarul "%1" din cauz� c� are deja prea multe fisiere

; *** Setup common messages
ExitSetupTitle=Abandonarea Instal�rii
ExitSetupMessage=Instalarea nu este terminat�. Dac� o abandonati acum, programul nu va fi instalat.%n%nPuteti s� rulati Programul de instalare din nou alt� dat� pentru a termina instalarea.%n%nAbandonati Instalarea?
AboutSetupMenuItem=&Despre Programul de instalare...
AboutSetupTitle=Despre Programul de instalare
AboutSetupMessage=%1 versiunea %2%n%3%n%n%1 sit:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< �na&poi
ButtonNext=&Continu� >
ButtonInstall=&Instaleaz�
ButtonOK=OK
ButtonCancel=Anuleaz�
ButtonYes=&Da
ButtonYesToAll=Da la &Tot
ButtonNo=&Nu
ButtonNoToAll=N&u la Tot
ButtonFinish=�nchide
ButtonBrowse=&Exploreaz�...
ButtonWizardBrowse=Explo&reaz�...
ButtonNewFolder=Creea&z� Dosar Nou

; *** "Select Language" dialog messages
SelectLanguageTitle=Selectarea Limbii Programului de instalare
SelectLanguageLabel=Selectati limba folosit� pentru instalare:

; *** Common wizard text
ClickNext=Apasa Continu� pentru a avansa cu instalarea sau Anuleaz� pentru a o abandona.
BeveledLabel=
BrowseDialogTitle=Explorare dup� Dosar
BrowseDialogLabel=Selectati un dosar din lista de mai jos, apoi apasa OK.
NewFolderName=Dosar Nou

; *** "Welcome" wizard page
WelcomeLabel1=Bun venit la Instalarea [name]
WelcomeLabel2=Programul [name/ver] va fi instalat pe calculator.%n%nEste recomandat s� �nchideti toate celelalte aplicatii �nainte de a continua.

; *** "Password" wizard page
WizardPassword=Parol�
PasswordLabel1=Aceast� instalare este protejat� prin parol�.
PasswordLabel3=Completati parola, apoi apasa Continu� pentru a merge mai departe. Se ia �n considerare tipul literelor din parol� (Majuscule/minuscule).
PasswordEditLabel=&Parol�:
IncorrectPassword=Parola pe care ati introdus-o nu este corect�. Re�ncercati.

; *** "License Agreement" wizard page
WizardLicense=Acord de Licentiere
LicenseLabel=Cititi informatiile urm�toare �nainte de a continua, sunt importante.
LicenseLabel3=Cititi urm�torul Acord de Licentiere. Trebuie s� acceptati termenii acestui acord �nainte de a continua instalarea.
LicenseAccepted=&Accept licenta
LicenseNotAccepted=&Nu accept licenta

; *** "Information" wizard pages
WizardInfoBefore=Informatii
InfoBeforeLabel=Cititi informatiile urm�toare �nainte de a continua, sunt importante.
InfoBeforeClickLabel=C�nd sunteti gata de a trece la Instalare, apasati Continu�.
WizardInfoAfter=Informatii
InfoAfterLabel=Cititi informatiile urm�toare �nainte de a continua, sunt importante.
InfoAfterClickLabel=C�nd sunteti gata de a trece la Instalare, apasati Continu�.

; *** "User Information" wizard page
WizardUserInfo=Informatii despre Utilizator
UserInfoDesc=Introduceti informatiile solicitate.
UserInfoName=&Utilizator:
UserInfoOrg=&Organizatie:
UserInfoSerial=Num�r de &Serie:
UserInfoNameRequired=Trebuie s� introduceti un nume.

; *** "Select Destination Location" wizard page
WizardSelectDir=Selectarea Locului de Destinatie
SelectDirDesc=Unde doriti s� instalati [name]?
SelectDirLabel3= Programul de instalare va pune [name] �n dosarul specificat mai jos.
SelectDirBrowseLabel=Pentru a avansa cu instalarea, apasati Continu�. Dac� doriti s� selectati un alt dosar, apasati Exploreaz�.
DiskSpaceMBLabel=Este necesar un spatiu liber de stocare de cel putin [mb] MB.
InvalidPath=Trebuie s� introduceti o cale complet�, inclusiv litera dispozitivului; de exemplu:%n%nC:\APP%n%nsau o cale UNC de forma:%n%n\\server\share
InvalidDrive=Dispozitivul sau partajul UNC pe care l-ati selectat nu exist� sau nu este accesibil. Selectati altul.
DiskSpaceWarningTitle=Spatiu de Stocare Insuficient
DiskSpaceWarning=Instalarea necesit� cel putin %1 KB de spatiu de stocare liber, dar dispozitivul selectat are doar %2 KB liberi.%n%nDoriti s� continuati oricum?
DirNameTooLong=Numele dosarului sau al c�ii este prea lung.
InvalidDirName=Numele dosarului nu este valid.
BadDirName32=Numele dosarelor nu pot include unul din urm�toarele caractere:%n%n%1
DirExistsTitle=Dosarul Exist�
DirExists=Dosarul:%n%n%1%n%nexist� deja. Doriti totusi s� instalati �n acel dosar?
DirDoesntExistTitle=Dosarul Nu Exist�
DirDoesntExist=Dosarul:%n%n%1%n%nnu exist�. Doriti ca el s� fie creat?

; *** "Select Components" wizard page
WizardSelectComponents=Selectarea Componentelor
SelectComponentsDesc=Care dintre componente ar trebui instalate?
SelectComponentsLabel2=Selectati componentele de instalat; deselectati componentele pe care nu doriti s� le instalati. Apasati Continu� pentru a merge mai departe.
FullInstallation=Instalare Complet�

; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Instalare Compact�
CustomInstallation=Instalare Personalizat�
NoUninstallWarningTitle=Componentele Exist�
NoUninstallWarning= Programul de instalare a detectat c� urm�toarele componente sunt deja instalate pe calculator:%n%n%1%n%nDeselectarea lor nu le va dezinstala.%n%nDoriti s� continuati oricum?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceMBLabel=Selectia curent� necesit� cel putin [mb] MB spatiu de stocare.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Selectarea Sarcinilor Suplimentare
SelectTasksDesc=Ce sarcini suplimentare ar trebui �ndeplinite?
SelectTasksLabel2=Selectati sarcinile suplimentare care ar trebui �ndeplinite �n timpul instal�rii [name], apoi apasati Continu�.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Selectarea Dosarului din Meniul de Pornire
SelectStartMenuFolderDesc=Unde ar trebui s� fie plasate scurt�turile programului?
SelectStartMenuFolderLabel3=Scurt�turile vor fi plasate �n dosarul specificat mai jos al Meniului de Pornire (Start Menu).
SelectStartMenuFolderBrowseLabel=Pentru a avansa cu instalarea, apasati Continu�. Dac� doriti s� selectati un alt dosar, apasati Exploreaz�.
MustEnterGroupName=Trebuie s� introduceti numele dosarului.
GroupNameTooLong=Numele dosarului sau al c�ii este prea lung.
InvalidGroupName=Numele dosarului nu este valid.
BadGroupName=Numele dosarului nu poate include unul dintre caracterele urm�toarele:%n%n%1
NoProgramGroupCheck2=Nu crea un &dosar �n Meniul de Pornire

; *** "Ready to Install" wizard page
WizardReady=Preg�tit de Instalare
ReadyLabel1=Instalatorul e preg�tit pentru instalarea [name] pe calculator.
ReadyLabel2a=Apasati Instaleaz� pentru a continua cu instalarea, sau apasati �napoi dac� doriti s� revedeti sau s� schimbati set�rile.
ReadyLabel2b=Apasati Instaleaz� pentru a continua cu instalarea.
ReadyMemoUserInfo=Info Utilizator:
ReadyMemoDir=Loc de Destinatie:
ReadyMemoType=Tip de Instalare:
ReadyMemoComponents=Componente Selectate:
ReadyMemoGroup=Dosarul Meniului de Pornire:
ReadyMemoTasks=Sarcini Suplimentare:

; *** "Preparing to Install" wizard page
WizardPreparing=Preg�tire pentru Instalare
PreparingDesc= Programul de instalare preg�teste instalarea [name] pe calculator.
PreviousInstallNotCompleted=Instalarea/dezinstalarea anterioar� a unui program nu a fost terminat�. Va trebui s� reporniti calculatorul pentru a termina operatiunea precedent�.%n%nDup� repornirea calculatorului, rulati Programul de instalare din nou pentru a realiza instalarea [name].
CannotContinue=Instalarea nu poate continua. Apasati Anuleaz� pentru a o �nchide.

; *** "Installing" wizard page
WizardInstalling=Instalare �n Desf�surare
InstallingLabel=Asteptati �n timp ce se instaleaz� [name] pe calculator.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Finalizarea Instal�rii [name]
FinishedLabelNoIcons=Instalarea [name] pe calculator a fost terminat�.
FinishedLabel=Instalarea [name] pe calculator a fost terminat�. Aplicatia poate fi lansat� apas�nd iconurile instalate.
ClickFinish=Apasati �nchide pentru a p�r�si Instalatorul.
FinishedRestartLabel=Pentru a termina instalarea [name], trebuie repornit calculatorul. Doriti s� fie repornit acum?
FinishedRestartMessage=Pentru a termina instalarea [name], trebuie repornit calculatorul.%n%nDoriti s� fie repornit acum?
ShowReadmeCheck=Da, as dori s� v�d fisierul de informare (README)
YesRadio=&Da, reporneste calculatorul acum
NoRadio=&Nu, voi reporni eu calculatorul mai t�rziu
; used for example as 'Run MyProg.exe'
RunEntryExec=Ruleaz� %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Vezi %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle= Programul de instalare Necesit� Discul Urm�tor
SelectDiskLabel2=Introduceti Discul %1 si apasati OK.%n%nDac� fisierele de pe acest disc pot fi g�site �ntr-un alt dosar dec�t cel afisat mai jos, introduceti calea corect� sau apasati Exploreaz�.
PathLabel=&Cale:
FileNotInDir2=Fisierul "%1" nu poate fi g�sit �n "%2". Introduceti discul corect sau selectati al dosar.
SelectDirectoryLabel=Specificati locul discului urm�tor.

; *** Installation phase messages
SetupAborted=Instalarea nu a fost terminat�.%n%nCorectati problema si rulati Instalarea din nou.
EntryAbortRetryIgnore=Apasati Re�ncearc� pentru a �ncerca din nou, Ignor� pentru a continua oricum, sau Abandoneaz� pentru a anula instalarea.

; *** Installation status messages
StatusCreateDirs=Se creeaz� dosarele...
StatusExtractFiles=Se extrag fisierele...
StatusCreateIcons=Se creeaz� scurt�turile...
StatusCreateIniEntries=Se creeaz� intr�rile INI...
StatusCreateRegistryEntries=Se creeaz� intr�rile �n registru...
StatusRegisterFiles=Se �nregistreaz� fisierele...
StatusSavingUninstall=Se salveaz� informatiile de dezinstalare...
StatusRunProgram=Se finalizeaz� instalarea...
StatusRollback=Se revine la starea initial�, anul�nd modific�rile f�cute...

; *** Misc. errors
ErrorInternal2=Eroare Intern�: %1
ErrorFunctionFailedNoCode=%1 a esuat
ErrorFunctionFailed=%1 a esuat; cod %2
ErrorFunctionFailedWithMessage=%1 a esuat; cod %2.%n%3
ErrorExecutingProgram=Nu se poate executa fisierul:%n%1

; *** Registry errors
ErrorRegOpenKey=Eroare la deschiderea cheii de registru:%n%1\%2
ErrorRegCreateKey=Eroare la crearea cheii de registru:%n%1\%2
ErrorRegWriteKey=Eroare la scrierea �n cheia de registru:%n%1\%2

; *** INI errors
ErrorIniEntry=Eroare la crearea intr�rii INI �n fisierul "%1".

; *** File copying errors
FileAbortRetryIgnore=Apasati Re�ncearc� pentru a �ncerca din nou, Ignor� pentru a s�ri acest fisier (nerecomandat), sau Abandoneaz� pentru a anula instalarea.
FileAbortRetryIgnore2=Apasati Re�ncearc� pentru a �ncerca din nou, Ignor� pentru a continua oricum (nerecomandat), sau Abandoneaz� pentru a anula instalarea.
SourceIsCorrupted=Fisierul surs� este deteriorat
SourceDoesntExist=Fisierul surs� "%1" nu exist�
ExistingFileReadOnly=Fisierul deja existent este marcat doar-citire.%n%nApasati Re�ncearc� pentru a �nl�tura atributul doar-citire si a �ncerca din nou, Ignor� pentru a s�ri acest fisier, sau Abandoneaz� pentru a anula instalarea.
ErrorReadingExistingDest=A ap�rut o eroare �n timpul citirii fisierului deja existent:
FileExists=Fisierul exist� deja.%n%Doriti ca el s� fie suprascris de Programul de instalare?
ExistingFileNewer=Fisierul deja existent este mai nou dec�t cel care trebuie instalat. Este recomandat s� �l p�strati pe cel existent.%n%nDoriti s� p�strati fisierul deja existent?
ErrorChangingAttr=A ap�rut o eroare �n timpul schimb�rii atributelor fisierului deja existent:
ErrorCreatingTemp=A ap�rut o eroare �n timpul cre�rii fisierului �n dosarul de destinatie:
ErrorReadingSource=A ap�rut o eroare �n timpul citirii fisierului surs�:
ErrorCopying=A ap�rut o eroare �n timpul copierii fisierului:
ErrorReplacingExistingFile=A ap�rut o eroare �n timpul �nlocuirii fisierului deja existent:
ErrorRestartReplace=Repornirea/�nlocuirea a esuat:
ErrorRenamingTemp=A ap�rut o eroare �n timpul redenumirii fisierului din dosarul de destinatie:
ErrorRegisterServer=Nu se poate �nregistra DLL/OCX: %1
ErrorRegSvr32Failed=RegSvr32 a esuat, av�nd codul de iesire %1
ErrorRegisterTypeLib=Nu se poate �nregistra biblioteca de tipul: %1

; *** Post-installation errors
ErrorOpeningReadme=A ap�rut o eroare �n timp ce se �ncerca deschiderea fisierului de informare (README).
ErrorRestartingComputer= Programul de instalare nu a putut reporni calculatorul. Va trebui s�-l reporniti manual.

; *** Uninstaller messages
UninstallNotFound=Fisierul "%1" nu exist�. Dezinstalarea nu poate fi f�cut�.
UninstallOpenError=Fisierul "%1" nu poate fi deschis. Dezinstalarea nu poate fi f�cut�
UninstallUnsupportedVer=Fisierul "%1" ce contine jurnalul de dezinstalare este �ntr-un format nerecunoscut de aceast� versiune a Programul de dezinstalare. Dezinstalarea nu poate fi f�cut�
UninstallUnknownEntry=A fost �nt�lnit� o intrare necunoscut� (%1) �n jurnalul de dezinstalare
ConfirmUninstall=Sigur doriti s� �nl�turati complet %1 si componentele sale?
UninstallOnlyOnWin64=Aceast� instalare poate fi dezinstalat� doar pe un sistem Windows 64-biti.
OnlyAdminCanUninstall=Aceast� instalare poate fi dezinstalat� doar de c�tre un utilizator cu drepturi de Administrator.
UninstallStatusLabel=Asteptati ca %1 s� fie �nl�turat de pe calculator.
UninstalledAll=%1 a fost �nl�turat cu succes de pe calculator.
UninstalledMost=Dezinstalare complet� a %1.%n%nAnumite elemente nu au putut fi �nl�turate. Acestea pot fi �nl�turate manual.
UninstalledAndNeedsRestart=Pentru a termina dezinstalarea %1, calculatorul trebuie repornit.%n%nDoriti s� fie repornit acum?
UninstallDataCorrupted=Fisierul "%1" este deteriorat. Dezinstalarea nu poate fi f�cut�

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Sterg Fisierul Partajat?
ConfirmDeleteSharedFile2=Sistemul indic� faptul c� fisierul partajat urm�tor pare s� nu mai fie folosit de vreun alt program. Doriti ca Programul de dezinstalare s� stearg� acest fisier partajat?%n%nDac� totusi mai exist� programe care folosesc fisierul si el este sters, acele programe ar putea s� functioneze defectuos. Dac� nu sunteti sigur, alegeti Nu. L�sarea fisierului �n sistem nu va produce nici o nepl�cere.
SharedFileNameLabel=Nume Fisier:
SharedFileLocationLabel=Loc:
WizardUninstalling=Starea Dezinstal�rii
StatusUninstalling=Dezinstalez %1...

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.
[CustomMessages]
NameAndVersion=%1 versiunea %2
AdditionalIcons=Iconuri suplimentare:
CreateDesktopIcon=Creeaz� un icon pe &Birou (Desktop)
CreateQuickLaunchIcon=Creeaz� un icon �n Bara de &Lansare Rapid� (Quick Launch)
ProgramOnTheWeb=%1 pe internet
UninstallProgram=Dezinstaleaz� %1
LaunchProgram=Lanseaz� %1
AssocFileExtension=&Asociaz� %1 cu extensia de fisiere %2
AssocingFileExtension=Asociez %1 cu extensia de fisiere %2...