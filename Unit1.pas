unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Objects;

type
  Tfrm_Login = class(TForm)
    img_Email: TImage;
    img_Password: TImage;
    lbl_Invite: TLabel;
    img_Logo: TImage;
    lbl_Logo: TLabel;
    lbl_ForgPass: TLabel;
    img_Login: TImage;
    img_Vector: TImage;
    lbl_Login: TLabel;
    lbl_Div: TLabel;
    lbl_LogVia: TLabel;
    edt_Passw: TEdit;
    edt_Email: TEdit;
    lbl_areNew: TLabel;
    img_Vector2: TImage;
    lbl_CreateAcc: TLabel;
    pns_Sys: TPanel;
    img_SysButtons: TImage;
    procedure FormCreate(Sender: TObject);
    procedure lbl_LoginClick(Sender: TObject);
    procedure lbl_ForgPassClick(Sender: TObject);
    procedure lbl_CreateAccClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure img_SysButtonsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      MFIniWidth ,  MFIniHeight : integer;
  end;

var
  frm_Login: Tfrm_Login;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure Tfrm_Login.FormCreate(Sender: TObject);
begin
  MFIniWidth      := Width;
  MFIniHeight     := Height;
  Application.Title:='Login_entry_v0.1';
  Caption:= Application.Title;
  lbl_Invite.TextSettings.FontColor:=$FF02245D;
  lbl_areNew.TextSettings.FontColor:=$FF121212;
  lbl_ForgPass.TextSettings.FontColor:=$FF02245D;
  lbl_CreateAcc.TextSettings.FontColor:=$FF02245D;
  lbl_LogVia.TextSettings.FontColor:=$FFA4A4A4;
end;

procedure Tfrm_Login.FormResize(Sender: TObject);
begin
  if (Width >360) or (Width <360) then  Width:=360;
  if (Height >640) or (Height <640)then  Height:=640
end;

procedure Tfrm_Login.img_SysButtonsClick(Sender: TObject);
begin
  Close
end;

procedure Tfrm_Login.lbl_CreateAccClick(Sender: TObject);
begin
  ShowMessage('You are touch the button "Create an accaunt"');
end;

procedure Tfrm_Login.lbl_ForgPassClick(Sender: TObject);
begin
  ShowMessage('You are touch the button "Forgot your password?"');
end;

procedure Tfrm_Login.lbl_LoginClick(Sender: TObject);
begin
  ShowMessage('You are touch the button "Login"');
end;

end.
