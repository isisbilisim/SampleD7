unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XMLDoc, XMLIntf, EInvoiceEasy, SOAPHttpClient, Types, InvokeRegistry;

type
  TForm1 = class(TForm)
    Button1: TButton;    
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    txtETTN: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

const
  PR_cbc = 'cbc';
  NS_cbc = 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2';
  PR_cac = 'cac';
  NS_cac = 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2';

implementation

{$R *.dfm}

procedure ChangeNode(parent : IXMLNode; name: String; namespace: String; value: String);
var
   node : IXMLNode;
begin
  node := parent.ChildNodes.FindNode(name, namespace);
  if node = nil then
    exit;
  if value = '' then
  begin
    parent.ChildNodes.Remove(node);
    exit;
  end;
  node.Text := value;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  doc : IXMLDocument;
  parent : IXMLNode;

  faturatipi : IXMLNode;
  musteri : IXMLNode;

  node : IXMLNode;
  new : IXMLNode;

  Uid: TGuid;
  ETTN: String;
begin
  doc := LoadXMLDocument('base.xml');

  parent := doc.DocumentElement;

  //ETTN
  CreateGuid(Uid);
  ETTN := GuidToString(Uid);
  ETTN := StringReplace(ETTN, '{', '', [rfReplaceAll]);
  ETTN := StringReplace(ETTN, '}', '', [rfReplaceAll]);
  ChangeNode(parent, 'UUID', NS_cbc, ETTN);
  //fatura no
  ChangeNode(parent, 'ID', NS_cbc, 'ISS2016000000001');

  //fatura tipi
  faturatipi := parent.ChildNodes.FindNode('InvoiceTypeCode', NS_cbc);
  faturatipi.Text := 'SATIS';

  //müþteri
  musteri := parent.ChildNodes.FindNode('AccountingSupplierParty', NS_cac);

  //Fatura notu ekle
  new := doc.CreateElement(PR_cbc + ':Note', NS_cbc);
  new.Text := 'Fatura notu';
  new.Attributes['languageID'] := 'tr-TR';
  parent.ChildNodes.Insert(parent.ChildNodes.IndexOf(faturatipi) + 1 , new);

  //Dosyaya kaydet
  doc.SaveToFile('sample.xml');
end;

procedure TForm1.Button2Click(Sender: TObject);
 var
   Service: IEasy;
   HTTPRIO1: THTTPRIO;

   Response: Contracts_ResponseType;
   Data: TByteDynArray;
   afile: file of byte;
   i: Integer;
   
begin
  if OpenDialog1.Execute() = false then
    exit;
  AssignFile(afile, OpenDialog1.FileName);
  Reset(afile);
  SetLength(Data, FileSize(afile));
  For i := 1 to FileSize(afile) do
    Read(afile, Data[i - 1]);
  CloseFile(afile);

  HTTPRIO1 := THTTPRIO.Create(Form1);
  HTTPRIO1.HTTPWebNode.UserName := '4660392430';
  HTTPRIO1.HTTPWebNode.Password := 'pass';

  Service := GetIEasy(false,'http://erptestep.isisbilisim.com.tr/EInvoiceEasy.svc', HTTPRIO1);
  
  try
    Response := Service.SendInvoice('4660392430','','',Data);
    if Response.Status = OK then
    begin
      txtETTN.Text := Response.ETTN;
      ShowMessage(Response.ID);
      Exit;
    end;
    ShowMessage(Response.GIBMessage);
  Except
     //özel entegratörden gelen hata mesajý
     on E : ERemotableException do
       MessageDlg(E.Message, mtError, [mbOk], 0);
     on E : Exception do
       MessageDlg(E.Message, mtError, [mbOk], 0);
  end;  
end;

end.
