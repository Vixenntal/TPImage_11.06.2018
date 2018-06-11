unit projimage;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmImage }

  TfrmImage = class(TForm)
    btBlack: TButton;
    btRed: TButton;
    btMulti: TButton;
    btBarre: TButton;
    btDamier: TButton;
    btVisage: TButton;
    imgVisage: TImage;
    imgDamier: TImage;
    imgBarre: TImage;
    imgCarre: TImage;
    procedure btBarreClick(Sender: TObject);
    procedure btBlackClick(Sender: TObject);
    procedure btMultiClick(Sender: TObject);
    procedure btRedClick(Sender: TObject);
    procedure btDamierClick(Sender: TObject);
    procedure btVisageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmImage: TfrmImage;

implementation

{$R *.lfm}

{ TfrmImage }

procedure TfrmImage.FormCreate(Sender: TObject);
begin

end;

procedure TfrmImage.btBlackClick(Sender: TObject);
begin
     with imgCarre do
     begin
          with canvas do
          begin
               Brush.color:= clblack;
               FillRect(0, 0, 300, 300);
          end;

     end;
end;

procedure TfrmImage.btBarreClick(Sender: TObject);
VAR
   cptRed, cptBlue, cptGreen, cptYellow : INTEGER;
begin
     cptRed := 0;
     cptYellow := 1;
     cptGreen := 2;
     cptBlue := 3;

     with imgBarre do
     begin
          with canvas do
          begin
               Brush.color:= clWhite;
               FillRect(0, 0, 300, 300);

               WHILE cptRed < 300 DO
               begin
                   Brush.color:= clRed;
                   FillRect(cptRed, 0, cptRed + 1, 300);
                   cptRed := cptRed + 4
               end;

               WHILE cptYellow < 300 DO
               begin
                   Brush.color:= clYellow;
                   FillRect(cptYellow, 0, cptYellow + 1, 300);
                   cptYellow := cptYellow + 4
               end;

               WHILE cptGreen < 300 DO
               begin
                   Brush.color:= clGreen;
                   FillRect(cptGreen, 0, cptGreen + 1, 300);
                   cptGreen := cptGreen + 4
               end;

               WHILE cptBlue < 300 DO
               begin
                   Brush.color:= clBlue;
                   FillRect(cptBlue, 0, cptBlue + 1, 300);
                   cptBlue := cptBlue + 4
               end;
          end;
     end;
end;

procedure TfrmImage.btMultiClick(Sender: TObject);
begin
     with imgCarre do
     begin
          with canvas do
          begin
               //(xi, yi, xf, yf)
               Brush.color:= clRed;
               FillRect(0, 0, 150, 150);
               Brush.color:= clYellow;
               FillRect(150, 0, 300, 150);
               Brush.color:= clGreen;
               FillRect(0, 150, 150, 300);
               Brush.color:= clBlue;
               FillRect(150, 150, 300, 300);
          end;
     end;
end;

procedure TfrmImage.btRedClick(Sender: TObject);
begin
     with imgCarre do
     begin
          with canvas do
          begin
               Brush.color:= clred;
               FillRect(0, 0, 300, 300);
          end;

     end;
end;

procedure TfrmImage.btDamierClick(Sender: TObject);
begin
  with imgDamier do
     begin
          with canvas do
          begin
               //(xi, yi, xf, yf)
               Brush.color:= clWhite;
               FillRect(0, 0, 50, 50);
               Brush.color:= clWhite;
               FillRect(100, 0, 150, 50);
               Brush.color:= clWhite;
               FillRect(200, 0, 250, 50);
               Brush.color:= clWhite;
               FillRect(50, 50, 100, 100);
               Brush.color:= clWhite;
               FillRect(150, 50, 200, 100);
               Brush.color:= clWhite;
               FillRect(250, 50, 300, 100);
               Brush.color:= clWhite;
               FillRect(0, 100, 50, 150);
               Brush.color:= clWhite;
               FillRect(100, 100, 150, 150);
               Brush.color:= clWhite;
               FillRect(200, 100, 250, 150);
               Brush.color:= clWhite;
               FillRect(50, 150, 100, 200);
               Brush.color:= clWhite;
               FillRect(150, 150, 200, 200);
               Brush.color:= clWhite;
               FillRect(250, 150, 300, 200);
               Brush.color:= clWhite;
               FillRect(0, 200, 50, 250);
               Brush.color:= clWhite;
               FillRect(100, 200, 150, 250);
               Brush.color:= clWhite;
               FillRect(200, 200, 250, 250);
               Brush.color:= clWhite;
               FillRect(50, 250, 100, 300);
               Brush.color:= clWhite;
               FillRect(150, 250, 200, 300);
               Brush.color:= clWhite;
               FillRect(250, 250, 300, 300);
          end;

     end;
end;

procedure TfrmImage.btVisageClick(Sender: TObject);
begin
   with imgVisage do
     begin
          with canvas do
          begin
               //(xi, yi, xf, yf)
               Brush.color:=clRed;
               Ellipse(0, 0, 300, 300);
               Brush.color:=clBlue;
               Ellipse(75, 50, 125, 100);
               Brush.color:=clBlue;
               Ellipse(175, 50, 225, 100);
               Brush.color:=clBlue;
               Ellipse(75, 50, 125, 100);
               Brush.color:=clBlue;
               FillRect(75, 200, 225, 215);
          end;
     end;
end;

end.

