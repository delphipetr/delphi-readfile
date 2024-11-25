unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  StringList1:TStringList;
  Lists:TStrings;
  i:integer;
  a1,txt1:string;
begin
  if OpenDialog1.Execute then
  begin
    Listbox1.Items.Clear;
    txt1:='';
    Lists:=OpenDialog1.Files;
    for i :=0 to Lists.count-1 do
    begin
      Listbox1.items.add(Lists[i]);
      StringList1:=TStringList.Create;
      try
        StringList1.LoadFromFile(Lists[i]);
        txt1:=StringList1[0];
        memo1.Text:=txt1+txt1;
      finally
        StringList1.Free;
      end;
    end;
  end;
end;

end.
