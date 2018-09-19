unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmReg = class(TForm)
    LblName: TLabel;
    LblSurname: TLabel;
    LblCompany: TLabel;
    LblTitle: TLabel;
    LblEmail: TLabel;
    EName: TEdit;
    ESurname: TEdit;
    ECompany: TEdit;
    ETitle: TEdit;
    EEmail: TEdit;
    LblLName: TLabel;
    LblLSurname: TLabel;
    LblLCompany: TLabel;
    LblLTitle: TLabel;
    LblLEmail: TLabel;
    MemName: TMemo;
    MemSurname: TMemo;
    MemCompany: TMemo;
    MemTitle: TMemo;
    MemEmail: TMemo;
    BtnSelectFile: TButton;
    GBFileButton: TGroupBox;
    BtnReadFromFile: TButton;
    BtnAddToAddress: TButton;
    BtnClear: TButton;
    BtnClose: TButton;
    ODFile: TOpenDialog;
    BtnSearch: TButton;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnAddToAddressClick(Sender: TObject);
    procedure BtnSelectFileClick(Sender: TObject);
    procedure BtnReadFromFileClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReg: TFrmReg;

implementation

{$R *.dfm}
  var f:textfile;
procedure TFrmReg.BtnAddToAddressClick(Sender: TObject);
begin
  if not FileExists(ODFile.FileName) then
  begin
    showmessage('please select a file...');
    BtnSelectFile.Focused;
    exit;
  end;
  if EName.Text='' then
    showmessage('please enter the name...')
  else if ESurname.Text='' then
    showmessage('please enter the Surname...')
  else if ECompany.Text='' then
    showmessage('please enter the Company...')
  else if ETitle.Text='' then
    showmessage('please enter the Title...')
  else if EEmail.Text='' then
    showmessage('please enter the Email...')
  else
    begin
      if pos('@',EEmail.Text)=0 then
        showmessage('email field must fill with email address...');
        EEmail.Focused;
    end;
  append(f);
  writeln(f,EName.Text+StringOfChar(' ',15 - length(trim(EName.Text))),
          ESurname.Text+StringOfChar(' ',15 - length(trim(ESurname.Text))),
          ECompany.Text+StringOfChar(' ',20 - length(trim(ECompany.Text))),
          ETitle.Text+StringOfChar(' ',15 - length(trim(ETitle.Text))),
          EEmail.Text+StringOfChar(' ',40 - length(trim(EEmail.Text))));
  closefile(f);
  showmessage('the information add successfully...');
  MemName.Clear;
  MemSurname.Clear;
  MemCompany.Clear;
  MemTitle.Clear;
  MemEmail.Clear;
  EName.Clear;
  ESurname.Clear;
  ECompany.Clear;
  ETitle.Clear;
  EEmail.Clear;
end;

procedure TFrmReg.BtnClearClick(Sender: TObject);
begin
  MemName.Clear;
  MemSurname.Clear;
  MemCompany.Clear;
  MemTitle.Clear;
  MemEmail.Clear;
  EName.Clear;
  ESurname.Clear;
  ECompany.Clear;
  ETitle.Clear;
  EEmail.Clear;
end;

procedure TFrmReg.BtnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmReg.BtnReadFromFileClick(Sender: TObject);
var
  Name:string[15];
  Surname:string[15];
  Company:string[20];
  Title:string[15];
  Email:string[40];
begin
  if not FileExists(ODFile.FileName) then
    begin
      showmessage('please select file...');
      BtnSelectFile.Focused;
    end;
    reset(f);
  while not Eof(f) do
    begin
      readln(f,Name,Surname,Company,Title,Email);
      MemName.Lines.Add(trim(Name));
      MemSurname.Lines.Add(trim(Surname));
      MemCompany.Lines.Add(trim(Company));
      MemTitle.Lines.Add(trim(Title));
      MemEmail.Lines.Add(trim(Email));
    end;
    closefile(f);
  EName.Clear;
  ESurname.Clear;
  ECompany.Clear;
  ETitle.Clear;
  EEmail.Clear;
end;
procedure TFrmReg.BtnSearchClick(Sender: TObject);
var
  Name:string[15];
  Surname:string[15];
  Company:string[20];
  Title:string[15];
  Email:string[40];
begin
  MemName.Clear;
  MemSurname.Clear;
  MemCompany.Clear;
  MemTitle.Clear;
  MemEmail.Clear;
  if not FileExists(ODFile.FileName) then
    begin
      showmessage('please select file...');
      BtnSelectFile.Focused;
      exit;
    end;
  reset(f);
  while not Eof(f) do
    begin
      readln(f,Name,Surname,Company,Title,Email);
      if Ename.Text<>'' then
          begin
            if ESurname.Text<>'' then
              begin
                if (uppercase(EName.Text)=uppercase(trim(Name))) and (uppercase(ESurname.Text)=uppercase(trim(Surname))) then
                  begin
                    MemName.Lines.Add(trim(Name));
                    MemSurname.Lines.Add(trim(Surname));
                    MemCompany.Lines.Add(trim(Company));
                    MemTitle.Lines.Add(trim(Title));
                    MemEmail.Lines.Add(trim(Email));
                  end;
              end
              else
                if uppercase(Ename.Text)=uppercase(trim(Name)) then
                  begin
                   MemName.Lines.Add(trim(Name));
                   MemSurname.Lines.Add(trim(Surname));
                   MemCompany.Lines.Add(trim(Company));
                   MemTitle.Lines.Add(trim(Title));
                   MemEmail.Lines.Add(trim(Email));
                  end;
          end
          else if ESurname.Text<>'' then
            begin
              if uppercase(Esurname.Text)=uppercase(trim(Surname)) then
                begin
                  MemName.Lines.Add(trim(Name));
                  MemSurname.Lines.Add(trim(Surname));
                  MemCompany.Lines.Add(trim(Company));
                  MemTitle.Lines.Add(trim(Title));
                  MemEmail.Lines.Add(trim(Email));
                end;
            end
          else
            begin
              showmessage('at least one field must be filled (Name or Surname)...');
              EName.SetFocus;
              exit;
            end;
      end;
      EName.SetFocus;

      EName.Clear;
      ESurname.Clear;
      ECompany.Clear;
      ETitle.Clear;
      EEmail.Clear;
end;

procedure TFrmReg.BtnSelectFileClick(Sender: TObject);
begin
  if ODFile.execute then
  assignfile(f,ODFile.FileName);
  end;
end.
