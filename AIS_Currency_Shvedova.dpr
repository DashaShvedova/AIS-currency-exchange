program AIS_Currency_Shvedova;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitAdd in 'UnitAdd.pas' {FormAdd},
  UnitCheckIn in 'UnitCheckIn.pas' {FormCheckIn},
  UnitOperation in 'UnitOperation.pas' {FormOperation};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormAdd, FormAdd);
  Application.CreateForm(TFormCheckIn, FormCheckIn);
  Application.CreateForm(TFormOperation, FormOperation);
  Application.Run;
end.
