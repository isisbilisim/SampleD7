// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://erpep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl
//  >Import : http://erpep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl:0
//  >Import : http://erpep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl:1
//  >Import : http://erpep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl:2
//  >Import : http://erpep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl:3
//  >Import : http://erpep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl:4
// Encoding : utf-8
// Version  : 1.0
// (29.1.2016 10:18:25 - - $Rev: 10138 $)
// ************************************************************************ //

unit EInvoiceEasy;

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
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  Contracts_ResponseType = class;               { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }
  Contracts_ResponseType2 = class;              { "http://isisbilisim.com.tr/data/einvoice"[GblElm] }

  { "http://isisbilisim.com.tr/data/einvoice"[GblSmpl] }
  Contracts_CommercialResponseType = (ACCEPTED, REJECTED);

  { "http://isisbilisim.com.tr/data/einvoice"[GblSmpl] }
  Contracts_DirectionType = (INBOUND, OUTBOUND);

  { "http://isisbilisim.com.tr/data/einvoice"[GblSmpl] }
  Contracts_StatusType = (OK, ERROR, PROCCESSING, ACCEPTED2, REJECTED2);

  { "http://isisbilisim.com.tr/core/enums"[GblSmpl] }
  Enums_PDFType = (NORMAL, ATTACHMENT, DETAIL, PREPRINTED, LEGAL);

  ArrayOfstring = array of WideString;          { "http://schemas.microsoft.com/2003/10/Serialization/Arrays"[GblCplx] }


  // ************************************************************************ //
  // XML       : Contracts.ResponseType, global, <complexType>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  Contracts_ResponseType = class(TRemotable)
  private
    FByteData: TByteDynArray;
    FByteData_Specified: boolean;
    FCommercialResponse: WideString;
    FCommercialResponse_Specified: boolean;
    FCommercialResponseEnvelopeUUID: WideString;
    FCommercialResponseEnvelopeUUID_Specified: boolean;
    FETTN: WideString;
    FETTN_Specified: boolean;
    FEnvelopeUUID: WideString;
    FEnvelopeUUID_Specified: boolean;
    FGIBCode: Integer;
    FGIBCode_Specified: boolean;
    FGIBMessage: WideString;
    FGIBMessage_Specified: boolean;
    FID: WideString;
    FID_Specified: boolean;
    FProfile: WideString;
    FProfile_Specified: boolean;
    FReceiverAlias: WideString;
    FReceiverAlias_Specified: boolean;
    FReceiverVKN: WideString;
    FReceiverVKN_Specified: boolean;
    FSenderAlias: WideString;
    FSenderAlias_Specified: boolean;
    FSenderVKN: WideString;
    FSenderVKN_Specified: boolean;
    FStatus: Contracts_StatusType;
    FStatus_Specified: boolean;
    procedure SetByteData(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  ByteData_Specified(Index: Integer): boolean;
    procedure SetCommercialResponse(Index: Integer; const AWideString: WideString);
    function  CommercialResponse_Specified(Index: Integer): boolean;
    procedure SetCommercialResponseEnvelopeUUID(Index: Integer; const AWideString: WideString);
    function  CommercialResponseEnvelopeUUID_Specified(Index: Integer): boolean;
    procedure SetETTN(Index: Integer; const AWideString: WideString);
    function  ETTN_Specified(Index: Integer): boolean;
    procedure SetEnvelopeUUID(Index: Integer; const AWideString: WideString);
    function  EnvelopeUUID_Specified(Index: Integer): boolean;
    procedure SetGIBCode(Index: Integer; const AInteger: Integer);
    function  GIBCode_Specified(Index: Integer): boolean;
    procedure SetGIBMessage(Index: Integer; const AWideString: WideString);
    function  GIBMessage_Specified(Index: Integer): boolean;
    procedure SetID(Index: Integer; const AWideString: WideString);
    function  ID_Specified(Index: Integer): boolean;
    procedure SetProfile(Index: Integer; const AWideString: WideString);
    function  Profile_Specified(Index: Integer): boolean;
    procedure SetReceiverAlias(Index: Integer; const AWideString: WideString);
    function  ReceiverAlias_Specified(Index: Integer): boolean;
    procedure SetReceiverVKN(Index: Integer; const AWideString: WideString);
    function  ReceiverVKN_Specified(Index: Integer): boolean;
    procedure SetSenderAlias(Index: Integer; const AWideString: WideString);
    function  SenderAlias_Specified(Index: Integer): boolean;
    procedure SetSenderVKN(Index: Integer; const AWideString: WideString);
    function  SenderVKN_Specified(Index: Integer): boolean;
    procedure SetStatus(Index: Integer; const AContracts_StatusType: Contracts_StatusType);
    function  Status_Specified(Index: Integer): boolean;
  published
    property ByteData:                       TByteDynArray         Index (IS_OPTN or IS_NLBL) read FByteData write SetByteData stored ByteData_Specified;
    property CommercialResponse:             WideString            Index (IS_OPTN or IS_NLBL) read FCommercialResponse write SetCommercialResponse stored CommercialResponse_Specified;
    property CommercialResponseEnvelopeUUID: WideString            Index (IS_OPTN or IS_NLBL) read FCommercialResponseEnvelopeUUID write SetCommercialResponseEnvelopeUUID stored CommercialResponseEnvelopeUUID_Specified;
    property ETTN:                           WideString            Index (IS_OPTN or IS_NLBL) read FETTN write SetETTN stored ETTN_Specified;
    property EnvelopeUUID:                   WideString            Index (IS_OPTN or IS_NLBL) read FEnvelopeUUID write SetEnvelopeUUID stored EnvelopeUUID_Specified;
    property GIBCode:                        Integer               Index (IS_OPTN) read FGIBCode write SetGIBCode stored GIBCode_Specified;
    property GIBMessage:                     WideString            Index (IS_OPTN or IS_NLBL) read FGIBMessage write SetGIBMessage stored GIBMessage_Specified;
    property ID:                             WideString            Index (IS_OPTN or IS_NLBL) read FID write SetID stored ID_Specified;
    property Profile:                        WideString            Index (IS_OPTN or IS_NLBL) read FProfile write SetProfile stored Profile_Specified;
    property ReceiverAlias:                  WideString            Index (IS_OPTN or IS_NLBL) read FReceiverAlias write SetReceiverAlias stored ReceiverAlias_Specified;
    property ReceiverVKN:                    WideString            Index (IS_OPTN or IS_NLBL) read FReceiverVKN write SetReceiverVKN stored ReceiverVKN_Specified;
    property SenderAlias:                    WideString            Index (IS_OPTN or IS_NLBL) read FSenderAlias write SetSenderAlias stored SenderAlias_Specified;
    property SenderVKN:                      WideString            Index (IS_OPTN or IS_NLBL) read FSenderVKN write SetSenderVKN stored SenderVKN_Specified;
    property Status:                         Contracts_StatusType  Index (IS_OPTN) read FStatus write SetStatus stored Status_Specified;
  end;



  // ************************************************************************ //
  // XML       : Contracts.ResponseType, global, <element>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  Contracts_ResponseType2 = class(Contracts_ResponseType)
  private
  published
  end;

  ArrayOfEnums_PDFType = array of Enums_PDFType;   { "http://isisbilisim.com.tr/core/enums"[GblCplx] }

  // ************************************************************************ //
  // Namespace : http://isisbilisim.com.tr/services/einvoice
  // soapAction: http://isisbilisim.com.tr/services/einvoice/IEasy/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : EInvoicEasySoap11withHttp
  // service   : Easy
  // port      : EInvoicEasySoap11withHttp
  // URL       : http://erpep.isisbilisim.com.tr/EInvoiceEasy.svc
  // ************************************************************************ //
  IEasy = interface(IInvokable)
  ['{BC6E2F45-AF32-17E0-3008-25DF2BDD45ED}']
    function  SendInvoice(const VKN: WideString; const SenderAlias: WideString; const ReceiverAlias: WideString; const ByteData: TByteDynArray): Contracts_ResponseType; stdcall;
    function  SendEnvelope(const VKN: WideString; const ByteData: TByteDynArray): Contracts_ResponseType; stdcall;
    function  SendResponse(const VKN: WideString; const ETTN: WideString; const Response: Contracts_CommercialResponseType; const Reason: WideString): Contracts_ResponseType; stdcall;
    function  GetInvoice(const VKN: WideString): Contracts_ResponseType; stdcall;
    function  GetSingleInvoice(const VKN: WideString): Contracts_ResponseType; stdcall;
    function  GetStatus(const VKN: WideString; const Direction: Contracts_DirectionType; const ETTN: WideString): Contracts_ResponseType; stdcall;
    function  GetSingleEnvelope(const VKN: WideString): Contracts_ResponseType; stdcall;
    function  GetEnvelope(const VKN: WideString; const Direction: Contracts_DirectionType; const ETTN: WideString): Contracts_ResponseType; stdcall;
    function  GetPostboxList(const ReceiverVKN: WideString): ArrayOfstring; stdcall;
    function  GetPdfInvoice(const VKN: WideString; const Direction: Contracts_DirectionType; const ETTN: WideString; const PDFType: ArrayOfEnums_PDFType): Contracts_ResponseType; stdcall;
    function  ReceiveDone(const VKN: WideString; const ETTN: WideString): Contracts_ResponseType; stdcall;
    function  ReceiveEnvelopeDone(const VKN: WideString; const ETTN: WideString): Contracts_ResponseType; stdcall;
    function  ReceiveInvoiceDone(const VKN: WideString; const ETTN: WideString): Contracts_ResponseType; stdcall;
    function  AcceptInvoice(const VKN: WideString; const Direction: Contracts_DirectionType; const ETTN: WideString; const ResponseNote: WideString): Contracts_ResponseType; stdcall;
    function  RejectInvoice(const VKN: WideString; const Direction: Contracts_DirectionType; const ETTN: WideString; const ResponseNote: WideString): Contracts_ResponseType; stdcall;
    function  ApproveInvoice(const VKN: WideString; const Direction: Contracts_DirectionType; const ETTN: WideString; const ResponseNote: WideString): Contracts_ResponseType; stdcall;
    function  DenyInvoice(const VKN: WideString; const Direction: Contracts_DirectionType; const ETTN: WideString; const ResponseNote: WideString): Contracts_ResponseType; stdcall;
  end;

function GetIEasy(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IEasy;


implementation
  uses SysUtils;

function GetIEasy(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IEasy;
const
  defWSDL = 'http://erpep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl';
  defURL  = 'http://erpep.isisbilisim.com.tr/EInvoiceEasy.svc';
  defSvc  = 'Easy';
  defPrt  = 'EInvoicEasySoap11withHttp';
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
    Result := (RIO as IEasy);
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


procedure Contracts_ResponseType.SetByteData(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FByteData := ATByteDynArray;
  FByteData_Specified := True;
end;

function Contracts_ResponseType.ByteData_Specified(Index: Integer): boolean;
begin
  Result := FByteData_Specified;
end;

procedure Contracts_ResponseType.SetCommercialResponse(Index: Integer; const AWideString: WideString);
begin
  FCommercialResponse := AWideString;
  FCommercialResponse_Specified := True;
end;

function Contracts_ResponseType.CommercialResponse_Specified(Index: Integer): boolean;
begin
  Result := FCommercialResponse_Specified;
end;

procedure Contracts_ResponseType.SetCommercialResponseEnvelopeUUID(Index: Integer; const AWideString: WideString);
begin
  FCommercialResponseEnvelopeUUID := AWideString;
  FCommercialResponseEnvelopeUUID_Specified := True;
end;

function Contracts_ResponseType.CommercialResponseEnvelopeUUID_Specified(Index: Integer): boolean;
begin
  Result := FCommercialResponseEnvelopeUUID_Specified;
end;

procedure Contracts_ResponseType.SetETTN(Index: Integer; const AWideString: WideString);
begin
  FETTN := AWideString;
  FETTN_Specified := True;
end;

function Contracts_ResponseType.ETTN_Specified(Index: Integer): boolean;
begin
  Result := FETTN_Specified;
end;

procedure Contracts_ResponseType.SetEnvelopeUUID(Index: Integer; const AWideString: WideString);
begin
  FEnvelopeUUID := AWideString;
  FEnvelopeUUID_Specified := True;
end;

function Contracts_ResponseType.EnvelopeUUID_Specified(Index: Integer): boolean;
begin
  Result := FEnvelopeUUID_Specified;
end;

procedure Contracts_ResponseType.SetGIBCode(Index: Integer; const AInteger: Integer);
begin
  FGIBCode := AInteger;
  FGIBCode_Specified := True;
end;

function Contracts_ResponseType.GIBCode_Specified(Index: Integer): boolean;
begin
  Result := FGIBCode_Specified;
end;

procedure Contracts_ResponseType.SetGIBMessage(Index: Integer; const AWideString: WideString);
begin
  FGIBMessage := AWideString;
  FGIBMessage_Specified := True;
end;

function Contracts_ResponseType.GIBMessage_Specified(Index: Integer): boolean;
begin
  Result := FGIBMessage_Specified;
end;

procedure Contracts_ResponseType.SetID(Index: Integer; const AWideString: WideString);
begin
  FID := AWideString;
  FID_Specified := True;
end;

function Contracts_ResponseType.ID_Specified(Index: Integer): boolean;
begin
  Result := FID_Specified;
end;

procedure Contracts_ResponseType.SetProfile(Index: Integer; const AWideString: WideString);
begin
  FProfile := AWideString;
  FProfile_Specified := True;
end;

function Contracts_ResponseType.Profile_Specified(Index: Integer): boolean;
begin
  Result := FProfile_Specified;
end;

procedure Contracts_ResponseType.SetReceiverAlias(Index: Integer; const AWideString: WideString);
begin
  FReceiverAlias := AWideString;
  FReceiverAlias_Specified := True;
end;

function Contracts_ResponseType.ReceiverAlias_Specified(Index: Integer): boolean;
begin
  Result := FReceiverAlias_Specified;
end;

procedure Contracts_ResponseType.SetReceiverVKN(Index: Integer; const AWideString: WideString);
begin
  FReceiverVKN := AWideString;
  FReceiverVKN_Specified := True;
end;

function Contracts_ResponseType.ReceiverVKN_Specified(Index: Integer): boolean;
begin
  Result := FReceiverVKN_Specified;
end;

procedure Contracts_ResponseType.SetSenderAlias(Index: Integer; const AWideString: WideString);
begin
  FSenderAlias := AWideString;
  FSenderAlias_Specified := True;
end;

function Contracts_ResponseType.SenderAlias_Specified(Index: Integer): boolean;
begin
  Result := FSenderAlias_Specified;
end;

procedure Contracts_ResponseType.SetSenderVKN(Index: Integer; const AWideString: WideString);
begin
  FSenderVKN := AWideString;
  FSenderVKN_Specified := True;
end;

function Contracts_ResponseType.SenderVKN_Specified(Index: Integer): boolean;
begin
  Result := FSenderVKN_Specified;
end;

procedure Contracts_ResponseType.SetStatus(Index: Integer; const AContracts_StatusType: Contracts_StatusType);
begin
  FStatus := AContracts_StatusType;
  FStatus_Specified := True;
end;

function Contracts_ResponseType.Status_Specified(Index: Integer): boolean;
begin
  Result := FStatus_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(IEasy), 'http://isisbilisim.com.tr/services/einvoice', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IEasy), 'http://isisbilisim.com.tr/services/einvoice/IEasy/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(IEasy), ioDocument);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Contracts_CommercialResponseType), 'http://isisbilisim.com.tr/data/einvoice', 'Contracts_CommercialResponseType', 'Contracts.CommercialResponseType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Contracts_DirectionType), 'http://isisbilisim.com.tr/data/einvoice', 'Contracts_DirectionType', 'Contracts.DirectionType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfstring), 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'ArrayOfstring');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Contracts_StatusType), 'http://isisbilisim.com.tr/data/einvoice', 'Contracts_StatusType', 'Contracts.StatusType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Contracts_StatusType), 'ACCEPTED2', 'ACCEPTED');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Contracts_StatusType), 'REJECTED2', 'REJECTED');
  RemClassRegistry.RegisterXSClass(Contracts_ResponseType, 'http://isisbilisim.com.tr/data/einvoice', 'Contracts_ResponseType', 'Contracts.ResponseType');
  RemClassRegistry.RegisterXSClass(Contracts_ResponseType2, 'http://isisbilisim.com.tr/data/einvoice', 'Contracts_ResponseType2', 'Contracts.ResponseType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Enums_PDFType), 'http://isisbilisim.com.tr/core/enums', 'Enums_PDFType', 'Enums.PDFType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfEnums_PDFType), 'http://isisbilisim.com.tr/core/enums', 'ArrayOfEnums_PDFType', 'ArrayOfEnums.PDFType');

end.