program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FrmMain},
  Unit2 in 'Unit2.pas' {FrmReg};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmReg, FrmReg);
  Application.Run;
end.
