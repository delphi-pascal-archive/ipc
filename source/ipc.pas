unit ipc;

interface
uses Windows;

// Вызов функции при получении новых данных
type TIpcCall=procedure(BufName:Pchar;Msg:Pointer;Size:dword;Answer:Pointer;AnswerLen:Dword);stdcall;

// Отправка сообщения
function SendIpcMessage(ipc:pchar;bufname:pchar;msg:pointer;msglen:dword;ResultBuf:Pointer=nil;ResultLen:Dword=0):Bool;stdcall;external 'lsipc.dll';

// Создание обработчика сообщений
Function CreateIpcQueue(ipc: pchar;call: TIpcCall): boolean;stdcall;external 'lsipc.dll';

Function DestroyIpcQueue(ipc: pchar): Bool;stdcall;external 'lsipc.dll';

implementation

end.
