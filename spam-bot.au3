;Author: enestos
#include <IE.au3>
#include <Array.au3>
#include <MsgBoxConstants.au3>

;Opt("SendKeyDelay", 0)
;Opt("SendKeyDownDelay", 0)

#comments-start
While 1

   Call("signup")
   Sleep(4000)
   Call("deletecookies")
   Sleep(2000

WEnd
#comments-end

Call("signUp")
Sleep(4000)
Call("deletecookies")

Func deletecookies ()

   Local $hDLL = DllOpen("user32.dll")

   run( "C:\Program Files\Internet Explorer\IEXPLORE.EXE -new http://www.google.com","")
   Sleep(1000)
   Send("{LCTRL DOWN}")
   Sleep(100)
   Send("{LSHIFT DOWN}")
   Sleep(100)
   Send("{DEL DOWN}")
   Sleep(1000)
   Send("{LCTRL UP}")
   Send("{LSHIFT UP}")
   Send("{DEL UP}")

   Sleep(1000)
   ControlClick("Gözatma Geçmişini Sil", "", "[Class:Button; INSTANCE:9]")
   Sleep(3000)
   $oIE.Quit()



   ;WinClose("Google - Internet Explorer", "[CLASS:IEFrame]")
   ;delete _IEOQuit didnt work out!

   ;ALT-F4 Function
   #comments-start
   Send("{ALT DOWN}")
   Sleep(100)
   Send("{F4 DOWN}")
   Sleep(100)
   Send("{ALT UP}")
   Send("{F4 UP}")
   #comments-end

   ;ctrl 11 shift 10 del 2E

EndFunc

Func signUp ()

;Enter your URL here.
Global $oIE = _IECreate("") ;Enter the web adress here.
;Global $website = ShellExecute("chrome.exe", "https://livehelpme.com/chatserver/chatwindow.aspx?planId=1032&siteId=100005021","","")
;Global $oIE = _IECreate($website)


Local $Name = _IEGetObjById($oIE, "field-2886") ;field for name
Local $Email = _IEGetObjById($oIE, "field-2887") ;field for email
;Local $Phone = _IEGetObjById($oIE, "field-3406") ;optional if needs phone number
Local $Username = _IEGetObjById($oIE, "field-2918") ;field for username
;feel free to add new Objects for required fields.

Local $Button = _IEGetObjById($oIE, "btn-start-chat") ;Button field

;Random Functions

Global $isimler[] = ["Abidin", "Acar", "Adas", "Adem", "Adil", "Adnan", "Agah", "Baha", "Bahadir", "Bahri", "Bahtiyar", "Baki", "Balaban", "Baran", "Barbaros", "Baris", "Baris", "Barlas", "Can", "Candemir", "Caner", "Cankut", "Canol", "Canpolat", "Cansin", "Cantekin", "Celayir", "Cengiz", "Ceyhun", "Cindoruk", "Coskun", "Daghan","Ecevit","Edip","Emir","Emrah","Egemen","Emin","Emir","Ender","Fadil","Ferit","Fevzi","Fikret","Fuat","Fikri","Firat","Galip","Gencer","Gediz","Giray","Gokalp","Giray","Gokce","Hakan","Halil","Haldun","Hamdi","Hamit","Hamza","Harun","Hayrettin","Hayri","Hayrullah","Hidayet","Hizir","Hincal","Hifzi","Hazar","Ilgaz","Ibrahim","Idris","Ildeniz","Ilkay","Ilker","Ilyas","Macit","Melik","Mete","Metin","Merih","Mert","Naci","Naim","Namik","Ogun","Oguz","Okcan","Oktar","Olcayto","Pars","Pasa","Peker","Polat","Rafet"]
;94 adet email mevcut.
Global $emailler[] = ["Abidin123@hotmail.com", "Acar123@hotmail.com", "Adas123@hotmail.com", "Adem123@hotmail.com", "Adil123@hotmail.com", "Adnan123@hotmail.com", "Agah123@hotmail.com", "Baha123@hotmail.com", "Bahadir123@hotmail.com", "Bahri123@hotmail.com", "Bahtiyar123@hotmail.com", "Baki123@hotmail.com", "Balaban", "Baran", "Barbaros", "Baris", "Baris23@hotmail.com", "Barlas23@hotmail.com", "Can23@hotmail.com", "Candemir23@hotmail.com", "Caner23@hotmail.com", "Cankut23@hotmail.com", "Canol23@hotmail.com", "Canpolat23@hotmail.com", "Cansin23@hotmail.com", "Cantekin23@hotmail.com", "Celayir23@hotmail.com", "Cengiz", "Ceyhun", "Cindoruk", "Coskun", "Daghan","Ecevit","Edip","Emir44@gmail.com","Emrah44@gmail.com","Egemen44@gmail.com","Emin44@gmail.com","Emir44@gmail.com","Ender44@gmail.com","Fadil44@gmail.com","Ferit44@gmail.com","Fevzi44@gmail.com","Fikret44@gmail.com","Fuat44@gmail.com","Fikri44@gmail.com","Firat44@gmail.com","Galip44@gmail.com","Gencer44@gmail.com","Gediziddaa@hotmail.com","Girayiddaa@hotmail.com","Gokalpiddaa@hotmail.com","Girayiddaa@hotmail.com","Gokceiddaa@hotmail.com","Hakaniddaa@hotmail.com","Haliliddaa@hotmail.com","Halduniddaa@hotmail.com","Hamdiiddaa@hotmail.com","Hamitiddaa@hotmail.com","Hamzaiddaa@hotmail.com","Haruniddaa@hotmail.com","Hayrettiniddaa@hotmail.com","Hayriiddaa@hotmail.com","Hayrullahiddaa@hotmail.com","Hidayetiddaa@hotmail.com","Hiziriddaa@hotmail.com","Hincaliddaa@hotmail.com","Hifziiddaa@hotmail.com","Hazarkumarbaz@gmail.com","Ilgazkumarbaz@gmail.com","Ibrahimkumarbaz@gmail.com","Idriskumarbaz@gmail.com","Ildenizkumarbaz@gmail.com","Ilkaykumarbaz@gmail.com","Ilkerkumarbaz@gmail.com","Ilyaskumarbaz@gmail.com","Macitkumarbaz@gmail.com","Melikkumarbaz@gmail.com","Metekumarbaz@gmail.com","Metinkumarbaz@gmail.com","Merihkumarbaz@gmail.com","Mertkumarbaz@gmail.com","Nacikumarbaz@gmail.com","Naimkumarbaz@gmail.com","Namikkumarbaz@gmail.com","Ogunkumarbaz@gmail.com","Oguzkumarbaz@gmail.com","Okcankumarbaz@gmail.com","Oktarkumarbaz@gmail.com","Olcaytokumarbaz@gmail.com","Parskumarbaz@gmail.com","Pasakumarbaz@gmail.com","Pekerkumarbaz@gmail.com","Polatkumarbaz@gmail.com","Rafetkumarbaz@gmail.com"]

$random1 = Random (0, 94, 1)
$random2 = Random (0, 94, 1)

$giris1 = _IEFormElementSetValue ($Name, $isimler[$random1] & " " & $isimler[$random2])
$giris2 = _IEFormElementSetValue ($Email, $emailler[$random1])
;_IEFormElementSetValue ($Phone, "Mahmut Tuncer")
$giris3 = _IEFormElementSetValue ($Username, $isimler[$random1] & " " & $isimler[$random2])
$giris4 = _IEFormElementSetValue ($Button, "Mahmut Tuncer")

$button1 = _IEAction ($Button, "click")

;Sleep(10000)
;_IEQuit($oIE)

;If IsDeclared($button1) Then

   ;$giris1 = _IEFormElementSetValue ($Name, "Mahmut Tuncer2")
   ;$giris2 = _IEFormElementSetValue ($Email, "MahmutTuncer2@hotmail.com")
   ;_IEFormElementSetValue ($Phone, "Mahmut Tuncer")
   ;$giris3 = _IEFormElementSetValue ($Username, "Mahmut Tuncer2")
   ;$giris4 = _IEFormElementSetValue ($Button, "Mahmut Tuncer2")

;EndIf

EndFunc
