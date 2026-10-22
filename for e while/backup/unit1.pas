unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var giorno, euro, totale: integer;
begin
  Randomize;
  Memo1.Clear;
  totale := 10;
  // QUI il ciclo FOR: giorno da 1 a 7
  //   QUI euro a caso da 1 a 5
  //   QUI aggiungi euro al totale
  //   QUI scrivi nel Memo: Giorno 1: +3 euro
  // QUI, dopo il ciclo, scrivi il totale della settimana
   Memo1.Lines.Add('In una settimana: ' + IntToStr(totale) + ' euro');
end;

procedure TForm1.Button2Click(Sender: TObject);
var giorni, euro, totale, prezzo: integer;
begin
  Randomize;
  prezzo := StrToInt(Edit2.Text);
  Memo1.Clear;
  totale := 80;
  giorni := 10;
  // QUI il ciclo WHILE: finché il totale è minore del prezzo
  //   QUI euro a caso da 1 a 5
  //   QUI aggiungi euro al totale
  //   QUI conta un giorno in più
   Memo1.Lines.Add('Giorno ' + IntToStr(giorni) + ': ho ' + IntToStr(totale) + ' euro');
  // QUI, dopo il ciclo, scrivi quanti giorni servono

end;

procedure TForm1.Button3Click(Sender: TObject);
  var giorni, euro, totale, prezzo: integer;
begin
  Randomize;
  prezzo := StrToInt(Edit2.Text);
  Memo1.Clear;
  totale := 0;
  giorni := 0;
  // QUI il ciclo WHILE: finché il totale è minore del prezzo
  if giorni mod 7 = 0 then
begin
  totale := totale + 10;
  Memo1.Lines.Add('Sabato: paghetta +10 euro!');
end;
  //   QUI euro a caso da 1 a 5
  //   QUI aggiungi euro al totale
  //   QUI conta un giorno in più
  // QUI, dopo il ciclo, scrivi quanti giorni servono
end;


end.











