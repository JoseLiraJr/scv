unit uVisualControl;

interface

uses
  System.SysUtils, Vcl.StdCtrls, Vcl.Controls, Vcl.ComCtrls, System.Classes,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons, System.DateUtils, Data.DB;

type
  TVisualControl = class
    class function CharNumbers(Key : Char) : Boolean;
    class procedure ClearEdit(edt : TEdit);
    class procedure EnableControls(control : TwinControl; enable : Boolean);
    class function dayOfWeek : string;
    class function dataExtenso : string;
    class procedure StartValues(control : TWinControl; clsReadOnly : Boolean = False);
    class function ifthen<T>(condition : Boolean; t1, t2 : T) : T;
    class function FilterDataset(dtSource : TDataSource; condition, value : string) : TDataSource;
    class function setFloat(value : String) : Double;
  end;

implementation

{ TVisualControl }

class function TVisualControl.CharNumbers(Key: Char): Boolean;
begin
  //Limitando a escrita de caracteres.
  Result := True;
  if not(CharInSet(Key,['0'..'9',#8])) then
    Result := False;
end;

class procedure TVisualControl.ClearEdit(edt: TEdit);
begin
  //Limpando um Edit
  edt.Clear;
end;

class function TVisualControl.dataExtenso: string;
var
  mes : string;
begin
  case MonthOfTheYear(now) of
    1  : mes := 'Janeiro';
    2  : mes := 'Fevereiro';
    3  : mes := 'Março';
    4  : mes := 'Abril';
    5  : mes := 'Maio';
    6  : mes := 'Junho';
    7  : mes := 'Julho';
    8  : mes := 'Agosto';
    9  : mes := 'Setembro';
    10 : mes := 'Outubro';
    11 : mes := 'Novembro';
    12 : mes := 'Dezembro';
  end;

  Result := FormatDateTime('dd', now) + ' de ' + mes + ' de ' + FormatDateTime('yyyy', now);
end;

class function TVisualControl.dayOfWeek: string;
begin
  case DayOfTheWeek(now) of
    1 : Result := 'Segunda';
    2 : Result := 'Terça';
    3 : Result := 'Quarta';
    4 : Result := 'Quinta';
    5 : Result := 'Sexta';
    6 : Result := 'Sábado';
    7 : Result := 'Domingo';
  end;
end;

class procedure TVisualControl.EnableControls(control: TwinControl;
  enable: Boolean);
var
  i : integer;
begin
 //Habilitando e desabilitando controles
 for i := 0 to control.ControlCount - 1 do
   begin
     if (control.Controls[i] is TEdit) then
      (control.Controls[i] as TEdit).Enabled := enable;
     if (control.Controls[i] is TDBLookupComboBox) then
      (control.Controls[i] as TDBLookupComboBox).Enabled := enable;
     if (control.Controls[i] is TSpeedButton) then
      (control.Controls[i] as TSpeedButton).Enabled := enable;
     if (control.Controls[i] is TBitBtn) then
      (control.Controls[i] as TBitBtn).Enabled := enable;
     if (control.Controls[i] is TDateTimePicker) then
      (control.Controls[i] as TDateTimePicker).Enabled := enable;
   end;
end;

class function TVisualControl.FilterDataset(dtSource: TDataSource; condition,
  value: string): TDataSource;
begin
  try
    dtSource.DataSet.Filtered := False;
    dtSource.DataSet.Filter := condition + ' = ' + QuotedStr(value);
    dtSource.DataSet.Filtered := True;
    Result := dtSource;
  except
    Result := nil;
  end;
end;

class function TVisualControl.ifthen<T>(condition: Boolean; t1, t2: T): T;
begin
  if condition then
    Result := t1
  else
    Result := t2;
end;

class function TVisualControl.setFloat(value: String): Double;
var
 vlr : Double;
begin
  vlr := StrToFloat(StringReplace(value, '.', '', [rfIgnoreCase]));
  Result := StrToFloat(FormatFloat('0.00', vlr));
end;

class procedure TVisualControl.StartValues(control: TWinControl;
  clsReadOnly: Boolean);
var
  i : Integer;
begin
  //Startando Valores Padrão
  for i := 0 to control.ControlCount - 1 do
   begin
     if (control.Controls[i] is TEdit) then
       begin
        if (not (control.Controls[i] as TEdit).ReadOnly) or (clsReadOnly) then
         (control.Controls[i] as TEdit).Text := '';
       end;
     if (control.Controls[i] is TDBLookupComboBox) then
       (control.Controls[i] as TDBLookupComboBox).KeyValue := -1;
     if (control.Controls[i] is TDateTimePicker) then
       (control.Controls[i] as TDateTimePicker).Date := Now;
     if (control.Controls[i] is TComboBox) then
       (control.Controls[i] as TComboBox).ItemIndex := -1;
   end;
end;

end.
