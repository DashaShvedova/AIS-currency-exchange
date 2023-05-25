unit UnitAdd;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UniProvider,
  MySQLUniProvider, Data.DB, MemDS, DBAccess, Uni, Vcl.DBCtrls, Vcl.Mask,Vcl.Buttons;

type
  TFormAdd = class(TForm)
    UniQueryClients: TUniQuery;
    UniConnectionAIS: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    PanelButtonAdd: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Notebook1: TNotebook;
    PanelAddClients: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEditID: TDBEdit;
    DBEditFam: TDBEdit;
    DBEditName: TDBEdit;
    DBEditOt: TDBEdit;
    DBEditChet: TDBEdit;
    DBEditMail: TDBEdit;
    DBEdit1: TDBEdit;
    DBEditPhone: TDBEdit;
    Panel1: TPanel;
    procedure PanelButtonAddClick(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure DBEditPhoneClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdd: TFormAdd;

implementation

{$R *.dfm}
uses UnitMain;
procedure TFormAdd.DBEdit1Click(Sender: TObject);
begin
DBEdit1.Field.EditMask:='!99.99.0000;1;_';
end;

procedure TFormAdd.DBEditPhoneClick(Sender: TObject);
begin
 DBEditPhone.Field.EditMask:='!89990000000;1;_';
end;


procedure TFormAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      UniQueryClients.Refresh;
end;

procedure TFormAdd.Panel1Click(Sender: TObject);
begin
if UniQueryClients.Modified then UniQueryClients.Post;
  ShowMessage('Информация изменена!');
     FormAdd.Close;

end;

procedure TFormAdd.PanelButtonAddClick(Sender: TObject);
begin
     UniQueryClients.Edit;
     UniQueryClients.Post;
     UniQueryClients.Refresh;
     ShowMessage('Информация добавлена!');

     FormAdd.Close;

end;

end.
