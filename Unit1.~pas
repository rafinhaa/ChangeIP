unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Winsock;

type
  TForm1 = class(TForm)
    txtnome: TEdit;
    Label1: TLabel;
    btntrocar: TButton;
    Label2: TLabel;
    txtip: TEdit;
    txtmascara: TEdit;
    txtgatway: TEdit;
    chkmascara: TCheckBox;
    chkgatway: TCheckBox;
    btnip: TButton;
    procedure btntrocarClick(Sender: TObject);
    procedure chkmascaraClick(Sender: TObject);
    procedure chkgatwayClick(Sender: TObject);
    procedure txtipKeyPress(Sender: TObject; var Key: Char);
    procedure txtgatwayKeyPress(Sender: TObject; var Key: Char);
    procedure txtmascaraKeyPress(Sender: TObject; var Key: Char);
    procedure btnipClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btntrocarClick(Sender: TObject);
var
  s: string;

begin
      if txtnome.text = '' then
        showmessage('Digite o nome da Conexao!')
      else if txtip.Text = '' then
        showmessage('Digite o endereco de IP!')
      else
        begin
          s:= 'netsh interface ip set address name="' + txtnome.text + '" static ' + txtip.text;
          if chkmascara.Checked = true then
            s:= s + ' ' + txtmascara.text;
          if chkgatway.Checked = true then
            s:= s + ' ' + txtgatway.text;
          //ShowMessage(s);
          WinExec(pansichar(Ansistring(S)),SW_HIDE);
        end;

end;

procedure TForm1.chkmascaraClick(Sender: TObject);
begin
if (chkmascara.Checked = true) then
    begin
      txtmascara.Enabled := true;
      txtmascara.Color := clWindow;
      chkgatway.Enabled := true;
    end
  else if chkgatway.Checked = true then
      begin
        ShowMessage('Gateway esta selecionado');
        chkmascara.checked := true;
      end;
  if (chkmascara.Checked = false) then
    begin
      txtmascara.Enabled := false;
      txtmascara.Color := clBtnFace;
      chkgatway.enabled := false;
    end
end;

procedure TForm1.chkgatwayClick(Sender: TObject);
begin
  if chkgatway.Checked = true then
     begin
       if txtmascara.text = '' then
          begin
            showmessage('Digite a Mascara da subrede!');
            chkgatway.Checked := false;
          end
       else
         begin
           txtgatway.Enabled := true;
           txtgatway.Color := clWindow;
         end;
     end;
  if chkgatway.Checked = false then
     begin
       txtgatway.Enabled := false;
       txtgatway.Color := clBtnFace;
     end
end;


procedure TForm1.txtipKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8,#13, '.']) then key := #0;
end;

procedure TForm1.txtgatwayKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8,#13, '.']) then key := #0;
end;

procedure TForm1.txtmascaraKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8,#13, '.']) then key := #0;
end;

procedure TForm1.btnipClick(Sender: TObject);
var
  WSAData      : TWSAData;
  HostEnt      : PHostEnt;
  Name, Result : string;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  Gethostname(PChar(Name), 255);
  SetLength(Name, StrLen(PChar(Name)));
  HostEnt := gethostbyname(PChar(Name));
with HostEnt^ do
  Result:=Format('%d.%d.%d.%d',[Byte(h_addr^[0]),
  Byte(h_addr^[1]),Byte(h_addr^[2]),Byte(h_addr^[3])]);
  WSACleanup;
  txtip.text := Result;
end;

end.
