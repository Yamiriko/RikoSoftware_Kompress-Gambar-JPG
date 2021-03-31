{
  Programmer : Jean Riko Kurniawan Putra,M.Kom
  SMS/WA/Line: 0877-9031-9305
  Telegram : @Yamiriko
  Grup Telegram : @delphipekanbaru
  Blog : delphianimelover.blogspot.com
  Fanpage FB : https://www.facebook.com/jean.software/
  FB : https://www.facebook.com/Jean.Riko.K.P
}

unit UKompress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, ExtDlgs, jpeg;

type
  TFKompress = class(TForm)
    Bevel1: TBevel;
    Image1: TImage;
    ProgressBar1: TProgressBar;
    BtnLoad: TButton;
    BtnSimpan: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    GroupBox1: TGroupBox;
    TrackBar1: TTrackBar;
    Min: TLabel;
    Label1: TLabel;
    procedure BtnLoadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKompress: TFKompress;
  FotoIn,FotoOut : string;

implementation

{$R *.dfm}

procedure TFKompress.BtnLoadClick(Sender: TObject);
var
  bs:TMemoryStream;
  jpg,i:TJPEGImage;
begin
  if OpenPictureDialog1.Execute then begin
    FotoIn:=OpenPictureDialog1.FileName;
    Image1.Picture.LoadFromFile(FotoIn);
  end;
end;

procedure TFKompress.FormShow(Sender: TObject);
begin
  OpenPictureDialog1.InitialDir:=ExtractFilePath(Application.EXEName);
  SavePictureDialog1.InitialDir:=ExtractFilePath(Application.EXEName);
end;

procedure TFKompress.BtnSimpanClick(Sender: TObject);
var
  jpeg: TJPEGImage;
  bmp:  TBitmap;
begin
  if TrackBar1.Position <> 0 then begin
    if SavePictureDialog1.Execute then begin
      FotoOut:=SavePictureDialog1.FileName;
      ProgressBar1.Position:=10;
      try
        jpeg := TJpegImage.Create;
        ProgressBar1.Position:=20;
        bmp  := TBitmap.Create;
        ProgressBar1.Position:=30;
        jpeg.LoadFromFile(FotoIn);
        ProgressBar1.Position:=40;
        bmp.Assign(jpeg);
        ProgressBar1.Position:=50;
        jpeg.Assign(bmp);
        ProgressBar1.Position:=60;
        jpeg.CompressionQuality := TrackBar1.Position * 10;
        ProgressBar1.Position:=70;
        jpeg.Compress;
        ProgressBar1.Position:=80;
        jpeg.SaveToFile(FotoOut);
        ProgressBar1.Position:=90;
      finally
        bmp.Free;
        jpeg.Free;
      end;
      ProgressBar1.Position:=100;
      ShowMessage('Kompress Berhasil');
      ProgressBar1.Position:=0;
    end;
  end
  else if TrackBar1.Position = 0 then begin
    Beep;
    ShowMessage('TrackBar Jangan Pada Posisi 0');
    TrackBar1.SetFocus;
  end;
end;

end.
