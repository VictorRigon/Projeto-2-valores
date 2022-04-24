unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFCalculadora = class(TForm)
    lblCalculadora: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    lblResultado: TLabel;
    edtResultado: TEdit;
    btnAdicao: TButton;
    btnSubtracao: TButton;
    btnDivisao: TButton;
    btnMultiplicar: TButton;
    btnSobra: TButton;
    lblValor1: TLabel;
    lblValor2: TLabel;
    Mehistorico: TMemo;
    btnHistorico: TButton;
    btnLimpaHistorico: TButton;
    procedure btnAdicaoClick(Sender: TObject);
    procedure btnSubtracaoClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
    procedure btnSobraClick(Sender: TObject);
    procedure edtValor1Exit(Sender: TObject);
    procedure edtValor2Exit(Sender: TObject);
    procedure btnHistoricoClick(Sender: TObject);
    procedure btnLimpaHistoricoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }

          function somar(value1, value2: integer): integer;
          function subtrair(value1, value2: currency): currency;
          function Multiplicar(value1, value2: currency): currency;
          function Dividir(value1, value2: currency): currency;
          function Sobra(value1, value2: integer):Integer;

  public
    { Public declarations }


  end;

var
  FCalculadora: TFCalculadora;
   doubt : integer;
Resultado : currency;

implementation

{$R *.dfm}

procedure TFCalculadora.btnAdicaoClick(Sender: TObject);
var
 Resultado : integer;
begin
    try
    Resultado := somar(strtoint(edtValor1.Text), strtoint(edtvalor2.Text));
    edtResultado.text := inttostr(Resultado);
    mehistorico.Lines.Add(edtvalor1.Text + ' + ' + edtvalor2.Text + ' = '+ edtResultado.Text);
    except
    Application.MessageBox('Os valores não podem estar em branco','Calculadora',mb_OK);
    edtvalor1.SetFocus;
    end;


end;

procedure TFCalculadora.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if char(key) =#115 then
begin

 btnAdicao.OnClick(self);
end;

if char(key) =#116 then
begin
  btnSubtracao.OnClick(self);
end;

if char(key) = #117 then
begin
  btnDivisao.OnClick(self);
end;

if char(key) = #118 then
begin
  btnMultiplicar.OnClick(self);
end;
if char(key) = #119 then
begin
  btnSobra.OnClick(self);
end;
if char(key) =#120 then
begin
  btnHistorico.OnClick(self);
end;
 if char(key) =#121 then
 begin
   btnLimpaHistorico.OnClick(self);
 end;

end;
procedure TFCalculadora.btnDivisaoClick(Sender: TObject);
var
Resultado : Currency;
begin
 try
   Resultado := dividir(strtocurr(edtValor1.Text), strtocurr(edtvalor2.Text));
   edtResultado.text := currtostr(Resultado);
   mehistorico.Lines.Add(edtvalor1.Text + ' / ' + edtvalor2.Text + ' = '+ edtResultado.Text);
   except
   Application.MessageBox('Os valores não podem estar em branco','Calculadora',mb_OK);
   edtvalor1.SetFocus;
 end;

end;

procedure TFCalculadora.btnHistoricoClick(Sender: TObject);
begin
 if mehistorico.Visible = true then
 begin
   mehistorico.Visible := false ;
 end
 else
 begin
   mehistorico.Visible := true;
 end;
end;

procedure TFCalculadora.btnLimpaHistoricoClick(Sender: TObject);
begin
 mehistorico.Clear;
end;

procedure TFCalculadora.btnMultiplicarClick(Sender: TObject);
var
Resultado : currency;
begin
try
   Resultado := multiplicar(strtocurr(edtValor1.Text), strtocurr(edtvalor2.Text));
   edtResultado.text := currtostr(Resultado);
   mehistorico.Lines.Add(edtvalor1.Text + ' * ' + edtvalor2.Text + ' = '+ edtResultado.Text);
except
   Application.MessageBox('Os valores não podem estar em branco','Calculadora',mb_OK);
   edtvalor1.SetFocus;
end;

end;

procedure TFCalculadora.btnSobraClick(Sender: TObject);
var
Resultado : Integer;
begin
    try
    Resultado := Sobra(strtoint(edtValor1.Text), strtoint(edtvalor2.Text));
    edtResultado.text := inttostr(Resultado);
    mehistorico.Lines.Add(edtvalor1.Text + ' Divido ' + edtvalor2.Text + ' Sobra ' + ' = ' + edtResultado.Text);
    except
    Application.MessageBox('Os valores não podem estar em branco','Calculadora',mb_OK);
    edtvalor1.SetFocus;
    end;

end;

procedure TFCalculadora.btnSubtracaoClick(Sender: TObject);
var
Resultado : currency;
begin
try
   Resultado := subtrair(strtocurr(edtValor1.Text), strtocurr(edtvalor2.Text));
   edtResultado.text := currtostr(Resultado);
   mehistorico.Lines.Add(edtvalor1.Text + ' - ' + edtvalor2.Text + ' = '+ edtResultado.Text);
   except
   Application.MessageBox('Os valores não podem estar em branco','Calculadora',mb_OK);
   edtvalor1.SetFocus;

end;
 
end;

function TFCalculadora.Dividir(value1, value2: currency): currency;
begin
Result := value1 / value2;
end;



procedure TFCalculadora.edtValor1Exit(Sender: TObject);
begin
     if edtvalor1.Text = '0' then
begin
   Application.MessageBox('Campo não pode ser 0','Calculadora', MB_OK);
   edtvalor1.SetFocus;
end;
end;

procedure TFCalculadora.edtValor2Exit(Sender: TObject);
begin
        if edtvalor2.Text = '0' then
   begin
      Application.MessageBox('Campo não pode ser 0','Calculadora', MB_OK);
      edtvalor2.setfocus;

   end;
end;

function TFCalculadora.Multiplicar(value1, value2: currency): currency;
begin
Result := value1 * value2;
end;

function TFCalculadora.Sobra(value1, value2: integer): Integer;
begin
Result := value1 mod value2;
end;

function TFCalculadora.somar(value1: Integer; value2: integer): integer;
begin
  Result := value1 + value2;
end;
function TFCalculadora.subtrair(value1, value2: currency): currency;
begin
Result := Value1 - value2;
end;

end.
