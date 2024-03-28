unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var a, c, s:real;
begin
  c := StrToFloat(Edit1.text);
  a := StrToFloat(Edit2.text);
  Memo1.Clear;
  Memo1.Lines.Add('Площадь треугольника = '+FloatToStr (0.5 * c * c * sin(a)));
  s := (0.5 * c * c * sin(a));
  //S := ;
  Memo1.Lines.Add('Боковая сторона = '+FloatToStr (2/s));
end;

end.

