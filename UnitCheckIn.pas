unit UnitCheckIn;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UniProvider,
  MySQLUniProvider, Data.DB, MemDS, DBAccess, Uni, Vcl.DBCtrls, Vcl.Mask,Vcl.Buttons;

type
  TFormCheckIn = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    MySQLUniProvider1: TMySQLUniProvider;
    UniConnectionAIS: TUniConnection;
    UniQueryEmployee: TUniQuery;
    Panel1: TPanel;
    PanelEditAk: TPanel;
    procedure Panel1Click(Sender: TObject);
    procedure DBEdit5Click(Sender: TObject);
    procedure PanelEditAkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheckIn: TFormCheckIn;

implementation

{$R *.dfm}
uses UnitMain;
procedure TFormCheckIn.DBEdit5Click(Sender: TObject);
begin
DBEdit5.Field.EditMask:='!99.99.0000;1;_';
end;

procedure TFormCheckIn.Panel1Click(Sender: TObject);
begin
  UniQueryEmployee.Edit;
     UniQueryEmployee.Post;
     UniQueryEmployee.Refresh;
     ShowMessage('Вы успешно зарегистрированы!');

     FormCheckIn.Close;

end;

procedure TFormCheckIn.PanelEditAkClick(Sender: TObject);
begin
if UniQueryEmployee.Modified then UniQueryEmployee.Post;
  ShowMessage('Информация изменена!');
     FormCheckIn.Close;
end;

end.
