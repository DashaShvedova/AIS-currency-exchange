unit UnitSignIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Data.DB, DBAccess, Uni, UniProvider,
  MySQLUniProvider, MemDS;

type
  TFormSignIn = class(TForm)
    Label4: TLabel;
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSignIn: TFormSignIn;

implementation

{$R *.dfm}

end.
