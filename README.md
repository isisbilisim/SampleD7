# SampleD7
Örnek uygulama

####UBL-TR Dokümanları
http://www.efatura.gov.tr/dosyalar/kilavuzlar/UBLTR_1.2.1_Kilavuzlar.zip

Delphi 7'de servis için client yaratacağınızda wsdlimp.exe uygulamasının güncel halini kullanınız: http://cc.embarcadero.com/item/24535

## Class düzgün oluşmuyor, aşağıdaki değişiklikler gerekiyor:
###  type bölümüne aşağıdaki satır eklenir:
    EasyString = type WideString;   { "http://isisbilisim.com.tr/services/einvoice"[GblCplx] }
###  Aşağıdaki fonksiyonda bulunan WideString tipi EasyString olarak değiştirilecek.  
    function  GetPostboxList(const ReceiverVKN: WideString): ArrayOfstring; stdcall;  
###  initialization kısmına aşağıdaki satır eklenir:
    RemClassRegistry.RegisterXSInfo(TypeInfo(EasyString), 'http://isisbilisim.com.tr/services/einvoice', 'EasyString');
