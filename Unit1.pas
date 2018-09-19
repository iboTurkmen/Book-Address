unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    FiLE1: TMenuItem;
    Exit1: TMenuItem;
    AddAddress1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure AddAddress1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses Unit2;

procedure TFrmMain.AddAddress1Click(Sender: TObject);
begin
  FrmReg.Show
end;

procedure TFrmMain.Exit1Click(Sender: TObject);
begin
  self.Close
end;

end.
