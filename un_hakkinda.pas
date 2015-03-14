unit un_hakkinda;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ShellApi;

type
  Tfr_hakkinda = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure Label2MouseEnter(Sender: TObject);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_hakkinda: Tfr_hakkinda;

implementation
uses functionlar;
{$R *.dfm}

procedure Tfr_hakkinda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfr_hakkinda.FormShow(Sender: TObject);
begin
  Version.Caption := versiyon;
end;

procedure Tfr_hakkinda.Label2Click(Sender: TObject);
begin
  ShellExecute(0,'open','http://www.mkysoft.com','','',SW_SHOWNORMAL);
end;

procedure Tfr_hakkinda.OKButtonClick(Sender: TObject);
begin
 Close;
end;

procedure Tfr_hakkinda.Label2MouseEnter(Sender: TObject);
begin
  tlabel(sender).Font.Style := [fsunderline];
end;

procedure Tfr_hakkinda.Label2MouseLeave(Sender: TObject);
begin
  tlabel(sender).Font.Style := [];
end;

procedure Tfr_hakkinda.Label3Click(Sender: TObject);
begin
 ShellExecute(0,'open','mailto:mkysoft@gmx.net','','',SW_SHOWNORMAL);
end;

end.

