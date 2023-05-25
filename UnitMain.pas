unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  UniProvider, MySQLUniProvider, DBAccess, Uni, MemDS, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Data.Win.ADODB,UnitCheckIn, UnitAdd, UnitOperation;

type
  TFormMain = class(TForm)
    UniConnectionAIS: TUniConnection;
    UniQueryClients: TUniQuery;
    UniDataSourceClients: TUniDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    DBGridClients: TDBGrid;
    PanelSideBar_SDA: TPanel;
    SpeedButtonClients: TSpeedButton;
    SpeedButtonExcange_SDA: TSpeedButton;
    SpeedButtonOperations_SDA: TSpeedButton;
    SpeedButtonCurrency_SDA: TSpeedButton;
    PanelTop_SDA: TPanel;
    SpeedButtonMenu_SDA: TSpeedButton;
    ImageProfile_SDA: TImage;
    PanelBottom: TPanel;
    Timer_SDA: TTimer;
    NotebookEmployeer: TNotebook;
    PanelClients: TPanel;
    Label3: TLabel;
    PanelButtonAddInfo: TPanel;
    PanelEditClient: TPanel;
    PanelDelClient: TPanel;
    UniDataSourceKurs: TUniDataSource;
    UniQueryKurs: TUniQuery;
    PanelKurs: TPanel;
    DBGridKurs: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    SpeedButtonBB: TSpeedButton;
    PanelSignIn: TPanel;
    Label4: TLabel;
    Image2: TImage;
    UniDataSourceEmployee: TUniDataSource;
    UniQueryEmployee: TUniQuery;
    LabelSurName: TLabel;
    LabelName: TLabel;
    LabelOt: TLabel;
    LabelCaptionID: TLabel;
    LabelDolj: TLabel;
    LabelID: TLabel;
    PanelSIGN: TPanel;
    EditLogin: TEdit;
    EditPassword: TEdit;
    EditServer: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    PanelCheckIn: TPanel;
    PanelEditAcc: TPanel;
    PanelAccount: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Panel_buy: TPanel;
    UniQueryBuy: TUniQuery;
    UniDataSourceBuy: TUniDataSource;
    DBGridBuy: TDBGrid;
    SpeedButton1: TSpeedButton;
    PanelAddOperation: TPanel;
    procedure SpeedButtonMenu_SDAClick(Sender: TObject);
    procedure Timer_SDATimer(Sender: TObject);
     procedure FormCreate(Sender: TObject);
    procedure PanelButtonAddInfoClick(Sender: TObject);
    procedure PanelEditClientClick(Sender: TObject);
    procedure PanelDelClientClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure PanelSIGNClick(Sender: TObject);
    procedure EditLoginChange(Sender: TObject);
    procedure EditPasswordChange(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure PanelCheckInClick(Sender: TObject);
    procedure SpeedButtonClientsClick(Sender: TObject);
    procedure SpeedButtonCurrency_SDAClick(Sender: TObject);
    procedure PanelEditAccClick(Sender: TObject);
    procedure ImageProfile_SDAClick(Sender: TObject);

    procedure PanelAddOperationClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;
  SideBar: Byte;
  Str:string;
  Int:integer;
   IDSave:string;
  SQLstring:string;

implementation

{$R *.dfm}




procedure TFormMain.Edit1Change(Sender: TObject);
begin
UniQueryKurs.Filtered:=false;
   UniQueryKurs.Filter:='name LIKE '+#39+Edit1.Text+'%'+#39;
   if length(Edit1.text)>0 then UniQueryKurs.Filtered:=true;
end;

procedure TFormMain.EditLoginChange(Sender: TObject);
begin
   UniQueryEmployee.Filtered:=false;
   UniQueryEmployee.Filter:='login LIKE '+#39+EditLogin.Text+'%'+#39;
   if length(EditLogin.text)>0 then UniQueryEmployee.Filtered:=true;
end;

procedure TFormMain.EditPasswordChange(Sender: TObject);
begin
  UniQueryEmployee.Filtered:=false;
   UniQueryEmployee.Filter:='password LIKE '+#39+EditPassword.Text+'%'+#39;
   if length(EditPassword.text)>0 then UniQueryEmployee.Filtered:=true;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  SideBar:= 0;
NotebookEmployeer.ActivePage:='Вход';
end;


procedure TFormMain.ImageProfile_SDAClick(Sender: TObject);
begin
 NotebookEmployeer.ActivePage:='Аккаунт';
end;

procedure TFormMain.Panel1Click(Sender: TObject);
begin
  Try
  UniConnectionAIS.Connected:= False;
  UniConnectionAIS.Server := EditServer.Text; //'127.0.0.1'
  UniConnectionAIS.ProviderName:='MySQL';
  UniConnectionAIS.Port:= 3306;
  UniConnectionAIS.Password:='';
  UniConnectionAIS.Database:='ais-currency';
  UniConnectionAIS.Connected := True;

  UniQueryEmployee.Active:=True;
  ShowMessage('Подключение установлено');
  Except
    ShowMessage('Ошибка подключения к базе');
  End;
end;

procedure TFormMain.PanelAddOperationClick(Sender: TObject);
begin
  UniQueryBuy.Insert;
  FormOperation.Show;
end;

procedure TFormMain.PanelButtonAddInfoClick(Sender: TObject);
begin
FormAdd.Panel1.Visible:=false;
FormAdd.PanelButtonAdd.Visible:=true;
  UniQueryClients.Insert;
  FormAdd.Show;

end;

procedure TFormMain.PanelCheckInClick(Sender: TObject);
begin
  FormCheckIn.Panel1.Visible:=true;
  FormCheckIn.PanelEditAk.Visible:=false;
    UniQueryEmployee.Insert;
  FormCheckIn.Show;
end;

procedure TFormMain.PanelDelClientClick(Sender: TObject);
begin
if MessageDlg('Подтвердите удаление записи', mtConfirmation,[mbYes,   mbNo],0)   = mrYes
    then
begin
  UniQueryClients.Delete;
end
end;

procedure TFormMain.PanelEditAccClick(Sender: TObject);
begin
  FormCheckIn.Panel1.Visible:=false;
  FormCheckIn.PanelEditAk.Visible:=true;
  FormCheckIn.Show;
end;

procedure TFormMain.PanelEditClientClick(Sender: TObject);
begin
FormAdd.Panel1.Visible:=true;
FormAdd.PanelButtonAdd.Visible:=false;
  FormAdd.Show;
end;

procedure TFormMain.PanelSIGNClick(Sender: TObject);
begin
  if UniQueryEmployee.FieldByName('login').Value =  EditLogin.Text then
  begin
      if UniQueryEmployee.RecordCount>0 then
      begin
         //ShowMessage('Такой пользователь есть');

      if UniQueryEmployee.FieldByName('password').Value =  EditPassword.Text then
         begin
            //EditSurname.Text:= UniQueryEmployee.FieldByName('Surname').Value;
            //Edit_Name.Text:= UniQueryEmployee.FieldByName('Name').Value;
            //Edit_Patronymic.Text:= UniQueryEmployee.FieldByName('Patronymic').Value;
            LabelName.Caption:= UniQueryEmployee.FieldByName('Имя').Value;
            LabelSurname.Caption:= UniQueryEmployee.FieldByName('Фамилия').Value;
            LabelOt.Caption:= UniQueryEmployee.FieldByName('Отчество').Value;
            LabelDolj.Caption:= UniQueryEmployee.FieldByName('Должность').Value;
            LabelID.Caption:= UniQueryEmployee.FieldByName('ID_сотрудника').Value;
            LabelCaptionID.Caption:= 'ID';

            IDSave:=UniQueryEmployee.FieldByName('ID_сотрудника').Value;
        end
         else
         ShowMessage('Неверный пароль');
      end
  end
     else
     ShowMessage('Пользователь не найден');
     NotebookEmployeer.ActivePage:='Аккаунт';
   PanelSideBar_SDA.Visible:=true;
end;

procedure TFormMain.SpeedButtonClientsClick(Sender: TObject);
begin
NotebookEmployeer.ActivePage:='Клиенты';
end;

procedure TFormMain.SpeedButtonCurrency_SDAClick(Sender: TObject);
begin
NotebookEmployeer.ActivePage:='Курс валют';
end;

procedure TFormMain.SpeedButtonMenu_SDAClick(Sender: TObject);
begin
 Timer_SDA.Enabled:= True;
end;

procedure TFormMain.Timer_SDATimer(Sender: TObject);
var
i:integer;
begin
  if SideBar = 0 then
  begin
  if PanelSideBar_SDA.Width >= 52 then
  begin
      PanelSideBar_SDA.Width:=PanelSideBar_SDA.Width-10;
  end
  else
  begin
    Timer_SDA.Enabled:= false;
    SideBar:=1;
  end;
  end;
   if SideBar = 1 then
  begin
  if PanelSideBar_SDA.Width <= 270 then
  begin
      PanelSideBar_SDA.Width:=PanelSideBar_SDA.Width+10;
  end
  else
  begin
    Timer_SDA.Enabled:= false;
    SideBar:=0;
  end;
  end;

end;


end.
