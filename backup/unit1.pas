unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Arrow, Spin, ColorBox, CheckLst, FileCtrl, Menus, Buttons;

type

  { TForm1 }
  Elemen = record
    x,y: integer;
     end;

  TForm1 = class(TForm)
    Arrow1: TArrow; Arrow2: TArrow; Arrow3: TArrow; Arrow4: TArrow;
    Arrow5: TArrow; Arrow6: TArrow; Arrow7: TArrow; Arrow8: TArrow;
    BitBtn1: TBitBtn; BitBtn2: TBitBtn; BitBtn3: TBitBtn;
    BitBtn4: TBitBtn; BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn; BitBtn8: TBitBtn; Button1: TButton;
    CheckBox1: TCheckBox;
    ColorButton2: TColorButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label6: TLabel;
 Label7: TLabel; Label8: TLabel;
    OpenDialog1: TOpenDialog;
    Button4: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    SaveDialog1: TSaveDialog;
    SpinEdit1: TSpinEdit;
    SpinEdit3: TSpinEdit;
    procedure Arrow1Click(Sender: TObject);
    procedure Arrow2Click(Sender: TObject);
    procedure Arrow3Click(Sender: TObject);
    procedure Arrow4Click(Sender: TObject);
    procedure Arrow5Click(Sender: TObject);
    procedure Arrow6Click(Sender: TObject);
    procedure Arrow7Click(Sender: TObject);
    procedure Arrow8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ColorButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure RadioButton5Change(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
     procedure FloodFill(x,y,fill,oldcolor:Integer);
  private
   State: integer;
  public
   DrawColor:TColor;
   PenW:Integer;
  end;

var
  Form1: TForm1;
  o: array [0..50] of elemen;
  p: array [0..11] of integer;
  q: array [0..11] of integer;
  r: array [0..11] of integer;
  s: array [0..11] of integer;
  TempObjek:array [0..50] of elemen;
  x,y,i,a,g,h,n,b,t,u,v:Integer;
  m: integer;
  xcenter,ycenter:integer;
  Drawing: Boolean;
  StartX,StartY,EndX,EndY:Integer;




implementation

{$R *.lfm}

{ TForm1 }

//FormActive Image
procedure TForm1.FormActivate(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
end;

//proses button dan radio button bangun
procedure TForm1.Button1Click(Sender: TObject);
begin
  // kubus
  if RadioButton1.checked then
  begin
  g:=1; h:=16;
        o[1].x:= 100;                      o[1].y:= 100;
        o[2].x:= 300;                      o[2].y:= 100;
        o[3].x:= 300;                      o[3].y:= 300;
        o[4].x:= 100;                      o[4].y:= 300;
        o[5].x:= 100;                      o[5].y:= 100;
        o[6].x:= 150;                      o[6].y:= 50;
        o[7].x:= 350;                      o[7].y:= 50;
        o[8].x:= 350;                      o[8].y:= 250;
        o[9].x:= 150;                      o[9].y:= 250;
        o[10].x:= 150;                     o[10].y:= 50;
        o[11].x:= 350;                     o[11].y:= 50;
        o[12].x:= 300;                     o[12].y:= 100;
        o[13].x:= 350;                     o[13].y:= 250;
        o[14].x:= 300;                     o[14].y:= 300;
        o[15].x:= 150;                     o[15].y:= 250;
        o[16].x:= 100;                     o[16].y:= 300;
        FormShow(Sender);
  end;
  //prisma S-3
  if RadioButton2.checked then
  begin
  g:=1; h:=8;
       o[1].x:= 50;                      o[1].y:= 200;
       o[2].x:= 150;                     o[2].y:= 200;
       o[3].x:= 100;                     o[3].y:= 150;
       o[4].x:= 50;                      o[4].y:= 200;
       o[5].x:= 100;                     o[5].y:= 100;
       o[6].x:= 150;                     o[6].y:= 200;
       o[7].x:= 100;                     o[7].y:= 100;
       o[8].x:= 100;                     o[8].y:= 150;
       FormShow(Sender);
  end;
  //limas
  if RadioButton3.checked then
  begin
       g:=1; h:=11;
       o[1].x:= 150;                      o[1].y:= 50;
       o[2].x:= 250;                      o[2].y:= 150;
       o[3].x:= 200;                      o[3].y:= 200;
       o[4].x:= 50;                       o[4].y:= 200;
       o[5].x:= 120;                      o[5].y:= 150;
       o[6].x:= 150;                      o[6].y:= 50;
       o[7].x:= 50;                       o[7].y:= 200;
       o[8].x:= 120;                      o[8].y:= 150;
       o[9].x:= 250;                      o[9].y:= 150;
       o[10].x:= 150;                     o[10].y:= 50;
       o[11].x:= 200;                     o[11].y:= 200;
       FormShow(Sender);
  end;
  //persegi
  if RadioButton4.checked then
  begin
       g:=1; h:=6;
       o[1].x:=50;                        o[1].y:=50;
        o[2].x:=50;                       o[2].y:=100;
        o[3].x:=100;                      o[3].y:=100;
        o[4].x:=100;                      o[4].y:=50;
        o[5].x:=50;                       o[5].y:=50;
        o[6].x:=50;                       o[6].y:=100;
        FormShow(Sender);
  end;
  //persegi panjang
  if RadioButton5.checked then
  begin
     g:=1; h:=5;
     o[1].x := 70;                 o[1].y := 50;
     o[2].x := 250;                o[2].y := 50;
     o[3].x := 250;                o[3].y := 150;
     o[4].x := 70;                 o[4].y :=150;
     o[5].x := 70;                 o[5].y := 50;
     FormShow(Sender);
  end;
end;

  //reset button
procedure TForm1.Button4Click(Sender: TObject);
begin
  Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
end;


//dashes
procedure TForm1.ComboBox1Change(Sender: TObject);
begin
   if(ComboBox1.ItemIndex=0) then
    Image1.Canvas.Pen.Style := psDash
    else if(ComboBox1.ItemIndex=1) then
    Image1.Canvas.Pen.Style := psDashDotDot
    else if(ComboBox1.ItemIndex=2) then
    Image1.Canvas.Pen.Style := psDashDot
    else if(ComboBox1.ItemIndex=3) then
    Image1.Canvas.Pen.Style := psDot
    else if(ComboBox1.ItemIndex=4) then
    Image1.Canvas.Pen.Style := psSolid;
    FormShow(Sender);
end;

//size
procedure TForm1.ComboBox2Change(Sender: TObject);
begin
    if ComboBox2.ItemIndex=0 then
  Image1.Canvas.Pen.Width:=1;
  if ComboBox2.ItemIndex=1 then
  Image1.Canvas.Pen.Width:=2;
  if ComboBox2.ItemIndex=2 then
  Image1.Canvas.Pen.Width:=3;
  if ComboBox2.ItemIndex=3 then
  Image1.Canvas.Pen.Width:=4;
  if ComboBox2.ItemIndex=4 then
  Image1.Canvas.Pen.Width:=5;
  FormShow(Sender);
end;

//================================ARROW=======================================//
//kiri
procedure TForm1.Arrow1Click(Sender: TObject);
  begin
  for i:=g to h do
      o[i].x:=o[i].x-SpinEdit1.Value;
  FormShow(Sender);
  for i:=1 to n do
  begin
      p[i]:=p[i]-SpinEdit1.Value;
      FloodFill(p[i],q[i],r[i],s[i]);
  end;
  end;
//kanan
procedure TForm1.Arrow2Click(Sender: TObject);
  begin
  for i:=g to h do
      o[i].x:=o[i].x+SpinEdit1.Value;
  FormShow(Sender);
  for i:=1 to n do
  begin
      q[i]:=q[i]+SpinEdit1.Value;
      FloodFill(p[i],q[i],r[i],s[i]);
  end;
  end;
//atas
procedure TForm1.Arrow3Click(Sender: TObject);
  begin
  for i:=g to h do
      o[i].y:=o[i].y-SpinEdit1.Value;
  FormShow(Sender);
  for i:=1 to n do
  begin
      q[i]:=q[i]-SpinEdit1.Value;
      FloodFill(p[i],q[i],r[i],s[i]);
  end;
  end;

//bawah
procedure TForm1.Arrow4Click(Sender: TObject);
  begin
  for i:=g to h do
      o[i].y:=o[i].y+SpinEdit1.Value;
  FormShow(Sender);
  for i:=1 to n do
  begin

      q[i]:=q[i]+SpinEdit1.Value;
      FloodFill(p[i],q[i],r[i],s[i]);
  end;
  end;
//kiri bawah
procedure TForm1.Arrow5Click(Sender: TObject);
begin
  for i:=g to h do
      o[i].x:=o[i].x-SpinEdit1.Value;
  FormShow(Sender);
  for i:=g to h do
      o[i].y:=o[i].y+SpinEdit1.Value;
  FormShow(Sender);
        for i:=1 to n do
  begin
      p[i]:=p[i]-SpinEdit1.Value;
      q[i]:=q[i]+SpinEdit1.Value;
      FloodFill(p[i],q[i],r[i],s[i]);
  end;
  end;
//kanan bawah
procedure TForm1.Arrow6Click(Sender: TObject);
begin
  for i:=g to h do
      o[i].x:=o[i].x+SpinEdit1.Value;
  FormShow(Sender);
  for i:=g to h do
      o[i].y:=o[i].y+SpinEdit1.Value;
  FormShow(Sender);
  for i:=1 to n do
  begin
      p[i]:=p[i]+SpinEdit1.Value;
      q[i]:=q[i]+SpinEdit1.Value;
      FloodFill(p[i],q[i],r[i],s[i]);
  end;
   end;
//atas kanan
procedure TForm1.Arrow7Click(Sender: TObject);
  begin
  for i:=g to h do
      o[i].x:=o[i].x+SpinEdit1.Value;
  FormShow(Sender);
  for i:=g to h do
      o[i].y:=o[i].y-SpinEdit1.Value;
  FormShow(Sender);
  for i:=1 to n do
  begin
      p[i]:=p[i]+SpinEdit1.Value;
      q[i]:=q[i]-SpinEdit1.Value;
      FloodFill(p[i],q[i],r[i],s[i]);
  end;
    end;
//atas kiri
procedure TForm1.Arrow8Click(Sender: TObject);
  begin
  for i:=g to h do
      o[i].x:=o[i].x-SpinEdit1.Value;
  FormShow(Sender);
  for i:=g to h do
      o[i].y:=o[i].y-SpinEdit1.Value;
  FormShow(Sender);
   for i:=1 to n do
  begin
      p[i]:=p[i]-SpinEdit1.Value;
      q[i]:=q[i]-SpinEdit1.Value;
      FloodFill(p[i],q[i],r[i],s[i]);
  end;
  end;


//============================================================================//
//perkecil
procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  v:=v-50;
  for i:=g to h do
  begin
  t:=t+o[i].x;
  u:=u+o[i].y;
  end;
  t:=t div (h-g+1);
  u:=u div (h-g+1);
  for i:=g to h do
  begin
      o[i].x:=o[i].x-t;
      o[i].y:=o[i].y-u;
      TempObjek[i].x:=o[i].x* 2 div 3;
      TempObjek[i].y:=o[i].y* 2 div 3;
      o[i]:=TempObjek[i];
      o[i].x:=o[i].x+t;
      o[i].y:=o[i].y+u;
  end;
  Label3.Caption:=IntToStr(v)+'%';
  FormShow(Sender);
  for i:=1 to n do
  begin
      p[i]:=p[i]-t;
      q[i]:=q[i]-u;
      TempObjek[i].x:=p[i]* 2 div 3;
      TempObjek[i].y:=q[i]* 2 div 3;
      p[i]:=TempObjek[i].x;
      q[i]:=TempObjek[i].y;
      p[i]:=p[i]+t;
      q[i]:=q[i]+u;
      FloodFill(p[i],q[i],r[i],s[i]);
  end;
end;


//perbesar
procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  v:=v+50;
  for i:=g to h do
  begin
  t:=t+o[i].x;
  u:=u+o[i].y;
  end;
  t:=t div (h-g+1);
  u:=u div (h-g+1);
  for i:=g to h do
  begin
      o[i].x:=o[i].x-t;
      o[i].y:=o[i].y-u;
      TempObjek[i].x:=o[i].x* 3 div 2;
      TempObjek[i].y:=o[i].y* 3 div 2;
      o[i]:=TempObjek[i];
      o[i].x:=o[i].x+t;
      o[i].y:=o[i].y+u;
  end;
  Label3.Caption:=IntToStr(v)+'%';
  FormShow(Sender);
  for i:=1 to n do
  begin
      p[i]:=p[i]-t;
      q[i]:=q[i]-u;
      TempObjek[i].x:=p[i]* 3 div 2;
      TempObjek[i].y:=q[i]* 3 div 2;
      p[i]:=TempObjek[i].x;
      q[i]:=TempObjek[i].y;
      p[i]:=p[i]+t;
      q[i]:=q[i]+u;
      FloodFill(p[i],q[i],r[i],s[i]);
  end;
  end;


//rotete ke kanan
procedure TForm1.BitBtn4Click(Sender: TObject);
var
    Tempobjek: Array[1..20] of Elemen;
    n,m: integer;
    Sdt: real;
begin
     for i:=g to h do
     begin
       n:= o[3].x;
       m:=o[3].y;
       o[i].x:=o[i].x-n;
       o[i].y:=o[i].y-m;
       Sdt:=SpinEdit3.value*pi/180;
       Tempobjek[i].x:=round(o[i].x*cos(Sdt)-o[i].y*sin(Sdt));
       Tempobjek[i].y:=round(o[i].x*sin(Sdt)+o[i].y*cos(Sdt));
       o[i]:=Tempobjek[i];
       o[i].x:=o[i].x+n;
       o[i].y:=o[i].y+m;
     end;
     FormShow(Sender);
end;

//rotate ke kiri
procedure TForm1.BitBtn5Click(Sender: TObject);
var
Tempobjek: Array[1..20] of Elemen;
    n,m: integer;
    Sdt: real;
  begin
     for i:=g to h do
     begin
       n:= o[3].x;
       m:=o[3].y;
       o[i].x:=o[i].x-n;
       o[i].y:=o[i].y-m;
       Sdt:=SpinEdit3.value*pi/180;
       Tempobjek[i].x:=round(o[i].y*sin(Sdt)+o[i].x*cos(Sdt));
       Tempobjek[i].y:=round(o[i].y*cos(Sdt)-o[i].x*sin(Sdt));
       o[i]:=Tempobjek[i];
       o[i].x:=o[i].x+n;
       o[i].y:=o[i].y+m;
     end;
     FormShow(Sender);
  end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  State:= 4;
end;


//drawing
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    xcenter:=x;
    ycenter:=y;
       Floodfill(xcenter,ycenter,ColorButton2.ButtonColor,Image1.Canvas.pen.Color);

     if CheckBox1.Checked=true then
    begin
      Drawing:=True;
     StartX:=X; StartY:=Y;
     EndX:=X; EndY:=Y;

     if State=4 then

      begin
    Image1.Canvas.Pen.Color:=DrawColor;
    Image1.Canvas.Pen.Width:=PenW;
     Image1.Canvas.PenPos:=Point(X,Y);
      end;
  end;



      n:=n+1;
  p[n]:=X;
  q[n]:=Y;
  r[n]:=ColorButton2.ButtonColor;
  s[n]:=Image1.Canvas.Pixels[x,y];

  FloodFill(xcenter,ycenter,ColorButton2.ButtonColor,Image1.Canvas.Pixels[x,y]);


  end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
PenColor:TColor;
begin
  Edit1.Text:=IntToStr(X);
  Edit2.Text:=IntToStr(Y);

  if Drawing=true then
   begin
   if State=4 then
  begin
  with Image1.Canvas do
  begin
  LineTo(X,Y);
  end;
  end;
   end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Drawing:=False;
end;


//open button
procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  if OpenDialog1.Execute then Image1.Picture.LoadFromFile(OpenDialog1.FileName);
end;

//save button
procedure TForm1.BitBtn8Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
     SaveDialog1.FileName:=SaveDialog1.FileName+'.bmp';
  Image1.Picture.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.ColorButton2Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;


procedure TForm1.SaveClick(Sender: TObject);
begin
end;

//close button
procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  close();
end;

//show Bangun
procedure TForm1.FormShow(Sender: TObject);
begin
   Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
   Image1.Canvas.Clear;
      begin
          Image1.Canvas.MoveTo(o[1].x,o[1].y);
          for i:=g to h do
          Image1.Canvas.LineTo(o[i].x,o[i].y);
      end;
end;


//color
procedure TForm1.FloodFill(x,y,fill,oldcolor:Integer);
var
  current:Integer;
begin
  current := Image1.Canvas.Pixels[x,y];
  if(current=oldcolor)then
  begin
  Image1.Canvas.Pixels[x,y]:=fill;
  FloodFill(x+1,y,fill,oldcolor);
  FloodFill(x-1,y,fill,oldcolor);
  FloodFill(x,y+1,fill,oldcolor);
  FloodFill(x,y-1,fill,oldcolor);
  end;
end;


procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin

end;

procedure TForm1.RadioButton3Change(Sender: TObject);
begin

end;

procedure TForm1.RadioButton4Change(Sender: TObject);
begin

end;

procedure TForm1.RadioButton5Change(Sender: TObject);
begin

end;

end.

