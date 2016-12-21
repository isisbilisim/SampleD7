// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://erptestep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl
//  >Import : http://erptestep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl:0
//  >Import : http://erptestep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl:1
//  >Import : http://erptestep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl:2
//  >Import : http://erptestep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl:3
//  >Import : http://erptestep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl:4
// Encoding : utf-8
// Version  : 1.0
// (12/21/2016 5:24:13 PM - - $Rev: 10138 $)
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
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  Contracts_ResponseType = class;               { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }
  Extension            = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }
  InvoiceExtension     = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }
  Contracts_ResponseType2 = class;              { "http://isisbilisim.com.tr/data/einvoice"[GblElm] }
  InvoiceExtension2    = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblElm] }
  Extension2           = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblElm] }

  { "http://isisbilisim.com.tr/data/einvoice"[GblSmpl] }
  Contracts_CommercialResponseType = (ACCEPTED, REJECTED);

  { "http://isisbilisim.com.tr/data/einvoice"[GblSmpl] }
  Contracts_DirectionType = (INBOUND, OUTBOUND);

  { "http://isisbilisim.com.tr/data/einvoice"[GblSmpl] }
  Contracts_StatusType = (OK, ERROR, PROCCESSING, ACCEPTED2, REJECTED2);

  { "http://isisbilisim.com.tr/core/enums"[GblSmpl] }
  Enums_PDFType = (NORMAL, ATTACHMENT, DETAIL, PREPRINTED, LEGAL);

  ArrayOfstring = array of WideString;          { "http://schemas.microsoft.com/2003/10/Serialization/Arrays"[GblCplx] }
  ArrayOfInvoiceExtension = array of InvoiceExtension;   { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }
  EasyString = type WideString;   { "http://isisbilisim.com.tr/services/einvoice"[GblCplx] }

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
    FExtensions: ArrayOfInvoiceExtension;
    FExtensions_Specified: boolean;
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
    procedure SetExtensions(Index: Integer; const AArrayOfInvoiceExtension: ArrayOfInvoiceExtension);
    function  Extensions_Specified(Index: Integer): boolean;
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
  public
    destructor Destroy; override;
  published
    property ByteData:                       TByteDynArray            Index (IS_OPTN or IS_NLBL) read FByteData write SetByteData stored ByteData_Specified;
    property CommercialResponse:             WideString               Index (IS_OPTN or IS_NLBL) read FCommercialResponse write SetCommercialResponse stored CommercialResponse_Specified;
    property CommercialResponseEnvelopeUUID: WideString               Index (IS_OPTN or IS_NLBL) read FCommercialResponseEnvelopeUUID write SetCommercialResponseEnvelopeUUID stored CommercialResponseEnvelopeUUID_Specified;
    property ETTN:                           WideString               Index (IS_OPTN or IS_NLBL) read FETTN write SetETTN stored ETTN_Specified;
    property EnvelopeUUID:                   WideString               Index (IS_OPTN or IS_NLBL) read FEnvelopeUUID write SetEnvelopeUUID stored EnvelopeUUID_Specified;
    property Extensions:                     ArrayOfInvoiceExtension  Index (IS_OPTN or IS_NLBL) read FExtensions write SetExtensions stored Extensions_Specified;
    property GIBCode:                        Integer                  Index (IS_OPTN) read FGIBCode write SetGIBCode stored GIBCode_Specified;
    property GIBMessage:                     WideString               Index (IS_OPTN or IS_NLBL) read FGIBMessage write SetGIBMessage stored GIBMessage_Specified;
    property ID:                             WideString               Index (IS_OPTN or IS_NLBL) read FID write SetID stored ID_Specified;
    property Profile:                        WideString               Index (IS_OPTN or IS_NLBL) read FProfile write SetProfile stored Profile_Specified;
    property ReceiverAlias:                  WideString               Index (IS_OPTN or IS_NLBL) read FReceiverAlias write SetReceiverAlias stored ReceiverAlias_Specified;
    property ReceiverVKN:                    WideString               Index (IS_OPTN or IS_NLBL) read FReceiverVKN write SetReceiverVKN stored ReceiverVKN_Specified;
    property SenderAlias:                    WideString               Index (IS_OPTN or IS_NLBL) read FSenderAlias write SetSenderAlias stored SenderAlias_Specified;
    property SenderVKN:                      WideString               Index (IS_OPTN or IS_NLBL) read FSenderVKN write SetSenderVKN stored SenderVKN_Specified;
    property Status:                         Contracts_StatusType     Index (IS_OPTN) read FStatus write SetStatus stored Status_Specified;
  end;



  // ************************************************************************ //
  // XML       : Extension, global, <complexType>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  Extension = class(TRemotable)
  private
    FStructure: WideString;
    FStructure_Specified: boolean;
    FValuePart1: WideString;
    FValuePart1_Specified: boolean;
    FValuePart2: WideString;
    FValuePart2_Specified: boolean;
    FValuePart3: WideString;
    FValuePart3_Specified: boolean;
    FValuePart4: WideString;
    FValuePart4_Specified: boolean;
    procedure SetStructure(Index: Integer; const AWideString: WideString);
    function  Structure_Specified(Index: Integer): boolean;
    procedure SetValuePart1(Index: Integer; const AWideString: WideString);
    function  ValuePart1_Specified(Index: Integer): boolean;
    procedure SetValuePart2(Index: Integer; const AWideString: WideString);
    function  ValuePart2_Specified(Index: Integer): boolean;
    procedure SetValuePart3(Index: Integer; const AWideString: WideString);
    function  ValuePart3_Specified(Index: Integer): boolean;
    procedure SetValuePart4(Index: Integer; const AWideString: WideString);
    function  ValuePart4_Specified(Index: Integer): boolean;
  published
    property Structure:  WideString  Index (IS_OPTN or IS_NLBL) read FStructure write SetStructure stored Structure_Specified;
    property ValuePart1: WideString  Index (IS_OPTN or IS_NLBL) read FValuePart1 write SetValuePart1 stored ValuePart1_Specified;
    property ValuePart2: WideString  Index (IS_OPTN or IS_NLBL) read FValuePart2 write SetValuePart2 stored ValuePart2_Specified;
    property ValuePart3: WideString  Index (IS_OPTN or IS_NLBL) read FValuePart3 write SetValuePart3 stored ValuePart3_Specified;
    property ValuePart4: WideString  Index (IS_OPTN or IS_NLBL) read FValuePart4 write SetValuePart4 stored ValuePart4_Specified;
  end;



  // ************************************************************************ //
  // XML       : InvoiceExtension, global, <complexType>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  InvoiceExtension = class(Extension)
  private
    FCreateDate: TXSDateTime;
    FCreateDate_Specified: boolean;
    FETTN: WideString;
    FETTN_Specified: boolean;
    FIsActive: Boolean;
    FIsActive_Specified: boolean;
    FUpdatedDate: TXSDateTime;
    FUpdatedDate_Specified: boolean;
    FUserCode: Integer;
    FUserCode_Specified: boolean;
    procedure SetCreateDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  CreateDate_Specified(Index: Integer): boolean;
    procedure SetETTN(Index: Integer; const AWideString: WideString);
    function  ETTN_Specified(Index: Integer): boolean;
    procedure SetIsActive(Index: Integer; const ABoolean: Boolean);
    function  IsActive_Specified(Index: Integer): boolean;
    procedure SetUpdatedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  UpdatedDate_Specified(Index: Integer): boolean;
    procedure SetUserCode(Index: Integer; const AInteger: Integer);
    function  UserCode_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property CreateDate:  TXSDateTime  Index (IS_OPTN) read FCreateDate write SetCreateDate stored CreateDate_Specified;
    property ETTN:        WideString   Index (IS_OPTN or IS_NLBL) read FETTN write SetETTN stored ETTN_Specified;
    property IsActive:    Boolean      Index (IS_OPTN) read FIsActive write SetIsActive stored IsActive_Specified;
    property UpdatedDate: TXSDateTime  Index (IS_OPTN or IS_NLBL) read FUpdatedDate write SetUpdatedDate stored UpdatedDate_Specified;
    property UserCode:    Integer      Index (IS_OPTN) read FUserCode write SetUserCode stored UserCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : Contracts.ResponseType, global, <element>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  Contracts_ResponseType2 = class(Contracts_ResponseType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : InvoiceExtension, global, <element>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  InvoiceExtension2 = class(InvoiceExtension)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Extension, global, <element>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  Extension2 = class(Extension)
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
  // URL       : http://erptestep.isisbilisim.com.tr/EInvoiceEasy.svc
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
    function  GetPostboxList(const ReceiverVKN: EasyString): ArrayOfstring; stdcall;
    function  GetPdfInvoice(const VKN: WideString; const Direction: Contracts_DirectionType; const ETTN: WideString; const PDFType: ArrayOfEnums_PDFType): Contracts_ResponseType; stdcall;
    function  ReceiveDone(const VKN: WideString; const ETTN: WideString): Contracts_ResponseType; stdcall;
    function  ReceiveEnvelopeDone(const VKN: WideString; const ETTN: WideString): Contracts_ResponseType; stdcall;
    function  ReceiveInvoiceDone(const VKN: WideString; const ETTN: WideString): Contracts_ResponseType; stdcall;
    function  AcceptInvoice(const VKN: WideString; const Direction: Contracts_DirectionType; const ETTN: WideString; const ResponseNote: WideString): Contracts_ResponseType; stdcall;
    function  RejectInvoice(const VKN: WideString; const Direction: Contracts_DirectionType; const ETTN: WideString; const ResponseNote: WideString): Contracts_ResponseType; stdcall;
    function  ApproveInvoice(const VKN: WideString; const Direction: Contracts_DirectionType; const ETTN: WideString; const ResponseNote: WideString): Contracts_ResponseType; stdcall;
    function  DenyInvoice(const VKN: WideString; const Direction: Contracts_DirectionType; const ETTN: WideString; const ResponseNote: WideString; const ReservedDate: TXSDateTime): Contracts_ResponseType; stdcall;
    function  GetInboundExtensions(const VKN: WideString; const ETTN: WideString): ArrayOfInvoiceExtension; stdcall;
    function  GetOutboundExtensions(const VKN: WideString; const ETTN: WideString): ArrayOfInvoiceExtension; stdcall;
  end;

function GetIEasy(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IEasy;


implementation
  uses SysUtils;

function GetIEasy(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IEasy;
const
  defWSDL = 'http://erptestep.isisbilisim.com.tr/EInvoiceEasy.svc?singleWsdl';
  defURL  = 'http://erptestep.isisbilisim.com.tr/EInvoiceEasy.svc';
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


destructor Contracts_ResponseType.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FExtensions)-1 do
    FreeAndNil(FExtensions[I]);
  SetLength(FExtensions, 0);
  inherited Destroy;
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

procedure Contracts_ResponseType.SetExtensions(Index: Integer; const AArrayOfInvoiceExtension: ArrayOfInvoiceExtension);
begin
  FExtensions := AArrayOfInvoiceExtension;
  FExtensions_Specified := True;
end;

function Contracts_ResponseType.Extensions_Specified(Index: Integer): boolean;
begin
  Result := FExtensions_Specified;
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

procedure Extension.SetStructure(Index: Integer; const AWideString: WideString);
begin
  FStructure := AWideString;
  FStructure_Specified := True;
end;

function Extension.Structure_Specified(Index: Integer): boolean;
begin
  Result := FStructure_Specified;
end;

procedure Extension.SetValuePart1(Index: Integer; const AWideString: WideString);
begin
  FValuePart1 := AWideString;
  FValuePart1_Specified := True;
end;

function Extension.ValuePart1_Specified(Index: Integer): boolean;
begin
  Result := FValuePart1_Specified;
end;

procedure Extension.SetValuePart2(Index: Integer; const AWideString: WideString);
begin
  FValuePart2 := AWideString;
  FValuePart2_Specified := True;
end;

function Extension.ValuePart2_Specified(Index: Integer): boolean;
begin
  Result := FValuePart2_Specified;
end;

procedure Extension.SetValuePart3(Index: Integer; const AWideString: WideString);
begin
  FValuePart3 := AWideString;
  FValuePart3_Specified := True;
end;

function Extension.ValuePart3_Specified(Index: Integer): boolean;
begin
  Result := FValuePart3_Specified;
end;

procedure Extension.SetValuePart4(Index: Integer; const AWideString: WideString);
begin
  FValuePart4 := AWideString;
  FValuePart4_Specified := True;
end;

function Extension.ValuePart4_Specified(Index: Integer): boolean;
begin
  Result := FValuePart4_Specified;
end;

destructor InvoiceExtension.Destroy;
begin
  FreeAndNil(FCreateDate);
  FreeAndNil(FUpdatedDate);
  inherited Destroy;
end;

procedure InvoiceExtension.SetCreateDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FCreateDate := ATXSDateTime;
  FCreateDate_Specified := True;
end;

function InvoiceExtension.CreateDate_Specified(Index: Integer): boolean;
begin
  Result := FCreateDate_Specified;
end;

procedure InvoiceExtension.SetETTN(Index: Integer; const AWideString: WideString);
begin
  FETTN := AWideString;
  FETTN_Specified := True;
end;

function InvoiceExtension.ETTN_Specified(Index: Integer): boolean;
begin
  Result := FETTN_Specified;
end;

procedure InvoiceExtension.SetIsActive(Index: Integer; const ABoolean: Boolean);
begin
  FIsActive := ABoolean;
  FIsActive_Specified := True;
end;

function InvoiceExtension.IsActive_Specified(Index: Integer): boolean;
begin
  Result := FIsActive_Specified;
end;

procedure InvoiceExtension.SetUpdatedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FUpdatedDate := ATXSDateTime;
  FUpdatedDate_Specified := True;
end;

function InvoiceExtension.UpdatedDate_Specified(Index: Integer): boolean;
begin
  Result := FUpdatedDate_Specified;
end;

procedure InvoiceExtension.SetUserCode(Index: Integer; const AInteger: Integer);
begin
  FUserCode := AInteger;
  FUserCode_Specified := True;
end;

function InvoiceExtension.UserCode_Specified(Index: Integer): boolean;
begin
  Result := FUserCode_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(IEasy), 'http://isisbilisim.com.tr/services/einvoice', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IEasy), 'http://isisbilisim.com.tr/services/einvoice/IEasy/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(IEasy), ioDocument);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Contracts_CommercialResponseType), 'http://isisbilisim.com.tr/data/einvoice', 'Contracts_CommercialResponseType', 'Contracts.CommercialResponseType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Contracts_DirectionType), 'http://isisbilisim.com.tr/data/einvoice', 'Contracts_DirectionType', 'Contracts.DirectionType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfstring), 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'ArrayOfstring');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfInvoiceExtension), 'http://isisbilisim.com.tr/data/einvoice', 'ArrayOfInvoiceExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Contracts_StatusType), 'http://isisbilisim.com.tr/data/einvoice', 'Contracts_StatusType', 'Contracts.StatusType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Contracts_StatusType), 'ACCEPTED2', 'ACCEPTED');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Contracts_StatusType), 'REJECTED2', 'REJECTED');
  RemClassRegistry.RegisterXSClass(Contracts_ResponseType, 'http://isisbilisim.com.tr/data/einvoice', 'Contracts_ResponseType', 'Contracts.ResponseType');
  RemClassRegistry.RegisterXSClass(Extension, 'http://isisbilisim.com.tr/data/einvoice', 'Extension');
  RemClassRegistry.RegisterXSClass(InvoiceExtension, 'http://isisbilisim.com.tr/data/einvoice', 'InvoiceExtension');
  RemClassRegistry.RegisterXSClass(Contracts_ResponseType2, 'http://isisbilisim.com.tr/data/einvoice', 'Contracts_ResponseType2', 'Contracts.ResponseType');
  RemClassRegistry.RegisterXSClass(InvoiceExtension2, 'http://isisbilisim.com.tr/data/einvoice', 'InvoiceExtension2', 'InvoiceExtension');
  RemClassRegistry.RegisterXSClass(Extension2, 'http://isisbilisim.com.tr/data/einvoice', 'Extension2', 'Extension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Enums_PDFType), 'http://isisbilisim.com.tr/core/enums', 'Enums_PDFType', 'Enums.PDFType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfEnums_PDFType), 'http://isisbilisim.com.tr/core/enums', 'ArrayOfEnums_PDFType', 'ArrayOfEnums.PDFType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(EasyString), 'http://isisbilisim.com.tr/services/einvoice', 'EasyString');

end.