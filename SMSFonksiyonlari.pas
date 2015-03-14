unit SMSFonksiyonlari;
interface

uses SysUtils,Registry,Windows,Forms,Dialogs,Classes,IdBaseComponent,
     IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

function HTTPGet(Adres: string): WideString;
function HTTPPost(Adres: string; XML: WideString): WideString;

const
  VK_CRLF: string = Chr(13) + Chr(10); //Enter karakteri
  VK_LF: Char = Chr(10); //LineFeed karakteri
  VK_SP: Char = Chr(32); //Space karakteri

implementation
uses MSXML_TLB;

function HTTPGet(Adres: string): WideString;
var
  HTTPSender: TIdHTTP;
  Hata: String;
begin
  try
    Hata := 'Ýstek nesnesi oluþturulamadý.';
    HTTPSender := TIdHTTP.Create(Application);
    Hata := 'Sistemden cevap gelmedi.';
    Result := HTTPSender.Get(Adres);
  except
    Result:='';
    raise Exception.Create(Hata);
  end;
  if copy(Result,1,13)='10 wrong user' then
    Raise Exception.Create('Hatalý kullanýcý adý yada þifre!')
  else if copy(Result,1,25)='11 - Unrecognized GroupId' then
    Raise Exception.Create('Hatalý Mesaj ID!'+#13+#10)
end;

function HTTPPost(Adres: string; XML: WideString): WideString;
var
  Hata: String;
  xmldoc : IXMLDOMDocument;
  xmlhttp : IXMLHttpRequest;
  bStrMethod, bstrUrl, varASync, bStrUser, bStrPassword : OleVariant;
begin
  bStrMethod := 'POST';
  bstrUrl := Adres;
  varAsync := false;
  bStrUser := '';
  bStrPassword :='';
  try
    Hata := 'Ýstek nesnesi oluþturulamadý.';
    xmlhttp := CoXMLHTTPRequest.Create;
    Hata := 'Baðlantý açýlamadý.';
    xmlhttp.Open(bStrMethod, bstrUrl, varASync, bStrUser, bStrPassword);
    Hata := 'Parametreler gönderilemedi.';
    xmlhttp.setRequestHeader('MethodName','get_all_cv');
    xmlhttp.setRequestHeader('MessageType','Call');
    xmlhttp.setRequestHeader('Content-Type','text/xml');

    xmldoc:= CoDOMDocument.Create;
    xmldoc.async:=false;
    xmldoc.loadXML(XML);
    Hata := 'XML sisteme gönderilemedi.';
    xmlhttp.send(xmlDoc.xml);
    Result := xmlhttp.responseText;
  except
    Result:='';
    raise Exception.Create(Hata);
  end;
  if copy(Result,1,13)='10 wrong user' then
    Raise Exception.Create('Hatalý kullanýcý adý yada þifre!')
  else if copy(Result,1,3)='11 ' then
    Raise Exception.Create('Kontür yetersiz!')
  else if copy(Result,1,3)='81 ' then
    Raise Exception.Create('Çok fazla mesaj göndermeye çalýþýyorsunuz!')
  else if copy(Result,1,3)='90 ' then
    Raise Exception.Create('XML hatasý!'+#13+#10+Result)
  else if copy(Result,1,3)='99 ' then
    Raise Exception.Create('Sistemde hata var!'+#13+#10+Result)
end;

end.
