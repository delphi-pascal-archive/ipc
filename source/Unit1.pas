unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ipc;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    Button3: TButton;
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

type TMyMsg = record
  Name: array [0..MAX_PATH] of Char;
  Login: array [0..MAX_PATH] of Char;
  SPswd: Boolean;
  Password: array [0..MAX_PATH] of Char;
  Date: TDate;
end;

Procedure OnNewMsgCall(BufName:Pchar;Msg:Pointer;Size:dword;Answer:Pointer;AnswerLen:Dword);stdcall;
var
MyMsg: TMyMsg;
Begin
if BufName = 'IPCDEMO' then
Begin
MyMsg := TMyMsg(Msg^);
Form1.Memo1.Lines.Add('Имя: '+MyMsg.Name);
Form1.Memo1.Lines.Add('Логин: '+MyMsg.Login);
if MyMsg.SPswd then
Form1.Memo1.Lines.Add('Пароль: '+MyMsg.Password)
else
Form1.Memo1.Lines.Add('Пароль не получен.');
Form1.Memo1.Lines.Add('Дата: '+DateToStr(MyMsg.Date));
Form1.Memo1.Lines.Add('------------------------------------------------');
Form1.Memo1.Lines.Add(#13#10);
End;
End;

procedure TForm1.Button1Click(Sender: TObject);
begin
if CreateIpcQueue('MyIpcExample',OnNewMsgCall) = false then
Showmessage('Этот канал уже используется.')
else
Showmessage('Канал успешно создан.');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
MyMsg: TMyMsg;
begin
StrPCopy(MyMsg.Name,Edit1.Text);
StrPCopy(MyMsg.Login,Edit2.Text);
MyMsg.SPswd := CheckBox1.Checked;
if MyMsg.SPswd then
StrPCopy(MyMsg.Password,Edit3.Text);
MyMsg.Date := DateTimePicker1.Date;
if SendIpcMessage('MyIpcExample','IPCDEMO',@MyMsg,SizeOf(MyMsg)) = false then
Showmessage('Ошибка отправки сообщения.');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if DestroyIpcQueue('MyIpcExample') = false then
Showmessage('Невозможно закрыть канал.')
else
Showmessage('Канал успешно закрыт.');
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
Label3.Enabled := not Label3.Enabled;
Edit3.Enabled  := not Edit3.Enabled; 
end;

end.