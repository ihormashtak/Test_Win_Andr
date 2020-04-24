program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {frm_Login};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_Login, frm_Login);
  Application.Run;
end.
