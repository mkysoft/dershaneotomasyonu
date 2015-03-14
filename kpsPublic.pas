// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Documents and Settings\Furkan\Desktop\kpsPublic.asmx.xml
// Encoding : utf-8
// Codegen  : [wfDebug,wfUseSerializerClassForAttrs]
// Version  : 1.0
// (16.12.2004 08:35:37 - 1.33.2.5)
// ************************************************************************ //

unit kpsPublic;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:long            - "http://www.w3.org/2001/XMLSchema"
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"

  CustomBE             = class;                 { "http://kps.nvi.gov.tr/WS/Public" }
  IlBilgisi            = class;                 { "http://kps.nvi.gov.tr/WS/Public" }
  SearchInfoBE         = class;                 { "http://kps.nvi.gov.tr/WS/Public" }
  TCKimlikNoDogrulamaSonucu = class;            { "http://kps.nvi.gov.tr/WS/Public" }
  IlceBilgisi          = class;                 { "http://kps.nvi.gov.tr/WS/Public" }
  KayitYerindenKimlikBilgisi = class;           { "http://kps.nvi.gov.tr/WS/Public" }
  KimlikBilgisi        = class;                 { "http://kps.nvi.gov.tr/WS/Public" }
  TemelBilgilerdenKimlikBilgisi = class;        { "http://kps.nvi.gov.tr/WS/Public" }

  { "http://kps.nvi.gov.tr/WS/Public" }
  CinsiyetTipi = (Bilinmiyor, Erkek, Kadin);



  // ************************************************************************ //
  // Namespace : http://kps.nvi.gov.tr/WS/Public
  // ************************************************************************ //
  CustomBE = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://kps.nvi.gov.tr/WS/Public
  // ************************************************************************ //
  IlBilgisi = class(CustomBE)
  private
    FKod: Integer;
    FAd: WideString;
  published
    property Kod: Integer read FKod write FKod;
    property Ad: WideString read FAd write FAd;
  end;

  ArrayOfIlBilgisi = array of IlBilgisi;        { "http://kps.nvi.gov.tr/WS/Public" }


  // ************************************************************************ //
  // Namespace : http://kps.nvi.gov.tr/WS/Public
  // ************************************************************************ //
  SearchInfoBE = class(CustomBE)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://kps.nvi.gov.tr/WS/Public
  // ************************************************************************ //
  TCKimlikNoDogrulamaSonucu = class(SearchInfoBE)
  private
    FTCKimlikNo: Int64;
    FAd: WideString;
    FSoyad: WideString;
    FDogumYil: Integer;
  published
    property TCKimlikNo: Int64 read FTCKimlikNo write FTCKimlikNo;
    property Ad: WideString read FAd write FAd;
    property Soyad: WideString read FSoyad write FSoyad;
    property DogumYil: Integer read FDogumYil write FDogumYil;
  end;



  // ************************************************************************ //
  // Namespace : http://kps.nvi.gov.tr/WS/Public
  // ************************************************************************ //
  IlceBilgisi = class(CustomBE)
  private
    FKod: Integer;
    FAd: WideString;
    FIlKod: Integer;
  published
    property Kod: Integer read FKod write FKod;
    property Ad: WideString read FAd write FAd;
    property IlKod: Integer read FIlKod write FIlKod;
  end;

  ArrayOfIlceBilgisi = array of IlceBilgisi;    { "http://kps.nvi.gov.tr/WS/Public" }


  // ************************************************************************ //
  // Namespace : http://kps.nvi.gov.tr/WS/Public
  // ************************************************************************ //
  KayitYerindenKimlikBilgisi = class(SearchInfoBE)
  private
    FIlceKod: Integer;
    FCiltKod: Integer;
    FAileSiraNo: Integer;
    FBireySiraNo: Integer;
  published
    property IlceKod: Integer read FIlceKod write FIlceKod;
    property CiltKod: Integer read FCiltKod write FCiltKod;
    property AileSiraNo: Integer read FAileSiraNo write FAileSiraNo;
    property BireySiraNo: Integer read FBireySiraNo write FBireySiraNo;
  end;



  // ************************************************************************ //
  // Namespace : http://kps.nvi.gov.tr/WS/Public
  // ************************************************************************ //
  KimlikBilgisi = class(CustomBE)
  private
    FTCKimlikNo: Int64;
    FAd: WideString;
    FSoyad: WideString;
    FAnaAd: WideString;
    FBabaAd: WideString;
    FDogumYil: Integer;
    FCinsiyet: CinsiyetTipi;
    FIlKod: Integer;
    FIlAd: WideString;
    FIlceKod: Integer;
    FIlceAd: WideString;
    FCiltKod: Integer;
    FCiltAd: WideString;
    FAileSiraNo: Integer;
    FBireySiraNo: Integer;
  published
    property TCKimlikNo: Int64 read FTCKimlikNo write FTCKimlikNo;
    property Ad: WideString read FAd write FAd;
    property Soyad: WideString read FSoyad write FSoyad;
    property AnaAd: WideString read FAnaAd write FAnaAd;
    property BabaAd: WideString read FBabaAd write FBabaAd;
    property DogumYil: Integer read FDogumYil write FDogumYil;
    property Cinsiyet: CinsiyetTipi read FCinsiyet write FCinsiyet;
    property IlKod: Integer read FIlKod write FIlKod;
    property IlAd: WideString read FIlAd write FIlAd;
    property IlceKod: Integer read FIlceKod write FIlceKod;
    property IlceAd: WideString read FIlceAd write FIlceAd;
    property CiltKod: Integer read FCiltKod write FCiltKod;
    property CiltAd: WideString read FCiltAd write FCiltAd;
    property AileSiraNo: Integer read FAileSiraNo write FAileSiraNo;
    property BireySiraNo: Integer read FBireySiraNo write FBireySiraNo;
  end;



  // ************************************************************************ //
  // Namespace : http://kps.nvi.gov.tr/WS/Public
  // ************************************************************************ //
  TemelBilgilerdenKimlikBilgisi = class(SearchInfoBE)
  private
    FIlceKod: Integer;
    FAd: WideString;
    FSoyad: WideString;
    FBabaAd: WideString;
    FAnaAd: WideString;
    FCinsiyet: CinsiyetTipi;
    FDogumYil: Integer;
  published
    property IlceKod: Integer read FIlceKod write FIlceKod;
    property Ad: WideString read FAd write FAd;
    property Soyad: WideString read FSoyad write FSoyad;
    property BabaAd: WideString read FBabaAd write FBabaAd;
    property AnaAd: WideString read FAnaAd write FAnaAd;
    property Cinsiyet: CinsiyetTipi read FCinsiyet write FCinsiyet;
    property DogumYil: Integer read FDogumYil write FDogumYil;
  end;


  // ************************************************************************ //
  // Namespace : http://kps.nvi.gov.tr/WS/Public
  // soapAction: http://kps.nvi.gov.tr/WS/Public/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : KPSPublicWebServiceSoap
  // service   : KPSPublicWebService
  // port      : KPSPublicWebServiceSoap
  // URL       : http://tckimlik.nvi.gov.tr/kpsPublic.asmx
  // ************************************************************************ //
  KPSPublicWebServiceSoap = interface(IInvokable)
  ['{25BC430F-102E-DCB2-C875-56D6F192E8B7}']
    function  TCKimlikNoDogrula(const tcKimlikNo: Int64): TCKimlikNoDogrulamaSonucu; stdcall;
    function  IlListesiGetir: ArrayOfIlBilgisi; stdcall;
    function  IlceListesiGetir: ArrayOfIlceBilgisi; stdcall;
    function  IleBagliIlceListesiGetir(const ilKodu: Integer): ArrayOfIlceBilgisi; stdcall;
    function  KayitYerindenKimlikBilgisiSorgula(const be: KayitYerindenKimlikBilgisi; const Ad: WideString; const Soyad: WideString): KimlikBilgisi; stdcall;
    function  KisiBilgisindenKimlikBilgisiSorgula(const be: TemelBilgilerdenKimlikBilgisi): KimlikBilgisi; stdcall;
  end;

function GetKPSPublicWebServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): KPSPublicWebServiceSoap;


implementation

function GetKPSPublicWebServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): KPSPublicWebServiceSoap;
const
  defWSDL = 'kpsPublic.asmx.xml';
  defURL  = 'http://tckimlik.nvi.gov.tr/kpsPublic.asmx?WSDL';
  defSvc  = 'KPSPublicWebService';
  defPrt  = 'KPSPublicWebServiceSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as KPSPublicWebServiceSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(KPSPublicWebServiceSoap), 'http://kps.nvi.gov.tr/WS/Public', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(KPSPublicWebServiceSoap), 'http://kps.nvi.gov.tr/WS/Public/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(KPSPublicWebServiceSoap), ioDocument);
  RemClassRegistry.RegisterXSInfo(TypeInfo(CinsiyetTipi), 'http://kps.nvi.gov.tr/WS/Public', 'CinsiyetTipi');
  RemClassRegistry.RegisterXSClass(CustomBE, 'http://kps.nvi.gov.tr/WS/Public', 'CustomBE');
  RemClassRegistry.RegisterXSClass(IlBilgisi, 'http://kps.nvi.gov.tr/WS/Public', 'IlBilgisi');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfIlBilgisi), 'http://kps.nvi.gov.tr/WS/Public', 'ArrayOfIlBilgisi');
  RemClassRegistry.RegisterXSClass(SearchInfoBE, 'http://kps.nvi.gov.tr/WS/Public', 'SearchInfoBE');
  RemClassRegistry.RegisterXSClass(TCKimlikNoDogrulamaSonucu, 'http://kps.nvi.gov.tr/WS/Public', 'TCKimlikNoDogrulamaSonucu');
  RemClassRegistry.RegisterXSClass(IlceBilgisi, 'http://kps.nvi.gov.tr/WS/Public', 'IlceBilgisi');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfIlceBilgisi), 'http://kps.nvi.gov.tr/WS/Public', 'ArrayOfIlceBilgisi');
  RemClassRegistry.RegisterXSClass(KayitYerindenKimlikBilgisi, 'http://kps.nvi.gov.tr/WS/Public', 'KayitYerindenKimlikBilgisi');
  RemClassRegistry.RegisterXSClass(KimlikBilgisi, 'http://kps.nvi.gov.tr/WS/Public', 'KimlikBilgisi');
  RemClassRegistry.RegisterXSClass(TemelBilgilerdenKimlikBilgisi, 'http://kps.nvi.gov.tr/WS/Public', 'TemelBilgilerdenKimlikBilgisi');

end. 