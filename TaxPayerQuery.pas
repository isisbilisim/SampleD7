// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?singleWsdl
//  >Import : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?singleWsdl:0
//  >Import : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?singleWsdl:1
//  >Import : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?singleWsdl:2
//  >Import : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?singleWsdl:3
// Encoding : utf-8
// Version  : 1.0
// (12/20/2016 8:05:10 PM - - $Rev: 10138 $)
// ************************************************************************ //

unit TaxPayerQuery;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  User                 = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }
  User2                = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblElm] }

  ArrayOfstring = array of WideString;          { "http://schemas.microsoft.com/2003/10/Serialization/Arrays"[GblCplx] }
  ArrayOfUser = array of User;                  { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }


  // ************************************************************************ //
  // XML       : User, global, <complexType>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  User = class(TRemotable)
  private
    FAlias: WideString;
    FAlias_Specified: boolean;
    FCreatedDate: TXSDateTime;
    FCreatedDate_Specified: boolean;
    FIdentifier: WideString;
    FIdentifier_Specified: boolean;
    FIsActive: Boolean;
    FIsActive_Specified: boolean;
    FTitle: WideString;
    FTitle_Specified: boolean;
    FType_: WideString;
    FType__Specified: boolean;
    FUpdatedDate: TXSDateTime;
    FUpdatedDate_Specified: boolean;
    procedure SetAlias(Index: Integer; const AWideString: WideString);
    function  Alias_Specified(Index: Integer): boolean;
    procedure SetCreatedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  CreatedDate_Specified(Index: Integer): boolean;
    procedure SetIdentifier(Index: Integer; const AWideString: WideString);
    function  Identifier_Specified(Index: Integer): boolean;
    procedure SetIsActive(Index: Integer; const ABoolean: Boolean);
    function  IsActive_Specified(Index: Integer): boolean;
    procedure SetTitle(Index: Integer; const AWideString: WideString);
    function  Title_Specified(Index: Integer): boolean;
    procedure SetType_(Index: Integer; const AWideString: WideString);
    function  Type__Specified(Index: Integer): boolean;
    procedure SetUpdatedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  UpdatedDate_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Alias:       WideString   Index (IS_OPTN or IS_NLBL) read FAlias write SetAlias stored Alias_Specified;
    property CreatedDate: TXSDateTime  Index (IS_OPTN) read FCreatedDate write SetCreatedDate stored CreatedDate_Specified;
    property Identifier:  WideString   Index (IS_OPTN or IS_NLBL) read FIdentifier write SetIdentifier stored Identifier_Specified;
    property IsActive:    Boolean      Index (IS_OPTN) read FIsActive write SetIsActive stored IsActive_Specified;
    property Title:       WideString   Index (IS_OPTN or IS_NLBL) read FTitle write SetTitle stored Title_Specified;
    property Type_:       WideString   Index (IS_OPTN or IS_NLBL) read FType_ write SetType_ stored Type__Specified;
    property UpdatedDate: TXSDateTime  Index (IS_OPTN or IS_NLBL) read FUpdatedDate write SetUpdatedDate stored UpdatedDate_Specified;
  end;



  // ************************************************************************ //
  // XML       : User, global, <element>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  User2 = class(User)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://isisbilisim.com.tr/services/einvoice
  // soapAction: http://isisbilisim.com.tr/services/einvoice/ITaxPayerQuery/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : BasicHttpBinding_ITaxPayerQuery
  // service   : TaxPayerQuery
  // port      : BasicHttpBinding_ITaxPayerQuery
  // URL       : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc
  // ************************************************************************ //
  ITaxPayerQuery = interface(IInvokable)
  ['{9BE4B9F3-E835-B3A5-A889-65264B446897}']
    function  Filter(const vknList: ArrayOfstring; const startDate: WideString): ArrayOfUser; stdcall;
    function  GetList: ArrayOfUser; stdcall;
    function  GetActiveList: ArrayOfUser; stdcall;
    function  GetActiveListByVknList(const vknList: ArrayOfstring): ArrayOfUser; stdcall;
    function  GetListByVknList(const vknList: ArrayOfstring): ArrayOfUser; stdcall;
    function  GetActiveListByDate(const startDate: TXSDateTime; const endDate: TXSDateTime): ArrayOfUser; stdcall;
    function  GetListByDate(const startDate: TXSDateTime; const endDate: TXSDateTime): ArrayOfUser; stdcall;
    function  GetListByTitle(const title: WideString): ArrayOfUser; stdcall;
    function  GetActiveListByTitle(const title: WideString): ArrayOfUser; stdcall;
  end;

function GetITaxPayerQuery(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ITaxPayerQuery;


implementation
  uses SysUtils;

function GetITaxPayerQuery(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ITaxPayerQuery;
const
  defWSDL = 'http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?singleWsdl';
  defURL  = 'http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc';
  defSvc  = 'TaxPayerQuery';
  defPrt  = 'BasicHttpBinding_ITaxPayerQuery';
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
    Result := (RIO as ITaxPayerQuery);
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


destructor User.Destroy;
begin
  FreeAndNil(FCreatedDate);
  FreeAndNil(FUpdatedDate);
  inherited Destroy;
end;

procedure User.SetAlias(Index: Integer; const AWideString: WideString);
begin
  FAlias := AWideString;
  FAlias_Specified := True;
end;

function User.Alias_Specified(Index: Integer): boolean;
begin
  Result := FAlias_Specified;
end;

procedure User.SetCreatedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FCreatedDate := ATXSDateTime;
  FCreatedDate_Specified := True;
end;

function User.CreatedDate_Specified(Index: Integer): boolean;
begin
  Result := FCreatedDate_Specified;
end;

procedure User.SetIdentifier(Index: Integer; const AWideString: WideString);
begin
  FIdentifier := AWideString;
  FIdentifier_Specified := True;
end;

function User.Identifier_Specified(Index: Integer): boolean;
begin
  Result := FIdentifier_Specified;
end;

procedure User.SetIsActive(Index: Integer; const ABoolean: Boolean);
begin
  FIsActive := ABoolean;
  FIsActive_Specified := True;
end;

function User.IsActive_Specified(Index: Integer): boolean;
begin
  Result := FIsActive_Specified;
end;

procedure User.SetTitle(Index: Integer; const AWideString: WideString);
begin
  FTitle := AWideString;
  FTitle_Specified := True;
end;

function User.Title_Specified(Index: Integer): boolean;
begin
  Result := FTitle_Specified;
end;

procedure User.SetType_(Index: Integer; const AWideString: WideString);
begin
  FType_ := AWideString;
  FType__Specified := True;
end;

function User.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

procedure User.SetUpdatedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FUpdatedDate := ATXSDateTime;
  FUpdatedDate_Specified := True;
end;

function User.UpdatedDate_Specified(Index: Integer): boolean;
begin
  Result := FUpdatedDate_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(ITaxPayerQuery), 'http://isisbilisim.com.tr/services/einvoice', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ITaxPayerQuery), 'http://isisbilisim.com.tr/services/einvoice/ITaxPayerQuery/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ITaxPayerQuery), ioDocument);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfstring), 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'ArrayOfstring');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfUser), 'http://isisbilisim.com.tr/data/einvoice', 'ArrayOfUser');
  RemClassRegistry.RegisterXSClass(User, 'http://isisbilisim.com.tr/data/einvoice', 'User');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(User), 'Type_', 'Type');
  RemClassRegistry.RegisterXSClass(User2, 'http://isisbilisim.com.tr/data/einvoice', 'User2', 'User');

end.