unit EditorTexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.ActnMenus, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ImgList, Vcl.BandActn, Vcl.StdActns,
  Vcl.ExtActns, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, JvComponentBase, JvEnterTab, Vcl.ExtCtrls, Contnrs,
  XPStyleActnCtrls, StdStyleActnCtrls,
  RibbonStyleActnCtrls, Vcl.Menus;

type
  TfrmEditorTexto = class(TfrmPadrao)
    Editor: TRichEdit;
    SaveDialog: TSaveDialog;
    PrintDialog: TPrintDialog;
    ToolbarImages: TImageList;
    ActionList2: TActionList;
    EditUndoCmd: TAction;
    EditCutCmd: TAction;
    EditCopyCmd: TAction;
    EditPasteCmd: TAction;
    EditFontCmd: TAction;
    OpenDialog: TOpenDialog;
    FontDialog1: TFontDialog;
    ActionList1: TActionList;
    FileNewCmd: TAction;
    FileOpenCmd: TAction;
    FileSaveCmd: TAction;
    FileExitCmd: TAction;
    StandardToolBar: TToolBar;
    ToolButton1: TToolButton;
    OpenButton: TToolButton;
    SaveButton: TToolButton;
    PrintButton: TToolButton;
    ToolButton5: TToolButton;
    CutButton: TToolButton;
    CopyButton: TToolButton;
    PasteButton: TToolButton;
    UndoButton: TToolButton;
    ToolButton10: TToolButton;
    FontName: TComboBox;
    ToolButton11: TToolButton;
    FontSize: TEdit;
    UpDown1: TUpDown;
    ToolButton2: TToolButton;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ToolButton16: TToolButton;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    ToolButton20: TToolButton;
    BulletsButton: TToolButton;
    MainMenu: TMainMenu;
    FileMenu: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    N1: TMenuItem;
    FilePrintItem: TMenuItem;
    N4: TMenuItem;
    FileExitItem: TMenuItem;
    EditMenu: TMenuItem;
    EditUndoItem: TMenuItem;
    N2: TMenuItem;
    EditCutItem: TMenuItem;
    EditCopyItem: TMenuItem;
    EditPasteItem: TMenuItem;
    N5: TMenuItem;
    miEditFont: TMenuItem;
    LanguageMenu: TMenuItem;
    LanguageEnglish: TMenuItem;
    LanguageFrench: TMenuItem;
    LanguageGerman: TMenuItem;
    LanguageJapanese: TMenuItem;
    HelpMenu: TMenuItem;
    HelpAboutItem: TMenuItem;
    StatusBar: TStatusBar;
    procedure ShowHint(Sender: TObject);
    procedure FileNew(Sender: TObject);
    procedure FileOpen(Sender: TObject);
    procedure FileSave(Sender: TObject);
    procedure FileExit(Sender: TObject);
    procedure SelectFont(Sender: TObject);
    procedure EditUndo(Sender: TObject);
    procedure EditCut(Sender: TObject);
    procedure EditCopy(Sender: TObject);
    procedure EditPaste(Sender: TObject);
    procedure EditorSelectionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditorChange(Sender: TObject);
  private
    { Private declarations }
    FFileName: string;
    FUpdating: Boolean;
    FDragOfs: Integer;
    FDragging: Boolean;
    procedure CheckFileSave;
    procedure GetFontNames;
    function CurrText: TTextAttributes;
    procedure SetFileName(const FileName: String);
    procedure PerformFileOpen(const AFileName: string);
    procedure SetModified(Value: Boolean);
    procedure UpdateCursorPos;
  public
    { Public declarations }
  end;

var
  frmEditorTexto: TfrmEditorTexto;

implementation

uses RichEdit, ShellAPI;

resourcestring
  sSaveChanges = 'Save changes to %s?';
  sOverWrite = 'OK to overwrite %s';
  sUntitled = 'Untitled';
  sModified = 'Modified';
  sColRowInfo = 'Line: %3d   Col: %3d';

{$R *.dfm}


{ TfrmEditorTexto }

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
  FontType: Integer; Data: Pointer): Integer; stdcall;
begin
  TStrings(Data).Add(LogFont.lfFaceName);
  Result := 1;
end;

procedure TfrmEditorTexto.CheckFileSave;
var
  SaveResp: Integer;
begin
  if not Editor.Modified then Exit;
  SaveResp := MessageDlg(Format(sSaveChanges, [FFileName]),
    mtConfirmation, mbYesNoCancel, 0);
  case SaveResp of
    idYes: FileSave(Self);
    idNo: {Nothing};
    idCancel: Abort;
  end;
end;

function TfrmEditorTexto.CurrText: TTextAttributes;
begin
  if Editor.SelLength > 0 then Result := Editor.SelAttributes
  else Result := Editor.DefAttributes;
end;

procedure TfrmEditorTexto.EditCopy(Sender: TObject);
begin
  Editor.CopyToClipboard;
end;

procedure TfrmEditorTexto.EditCut(Sender: TObject);
begin
  Editor.CutToClipboard;
end;

procedure TfrmEditorTexto.EditorChange(Sender: TObject);
begin
  inherited;
  SetModified(Editor.Modified);
end;

procedure TfrmEditorTexto.EditorSelectionChange(Sender: TObject);
begin
  inherited;
  with Editor.Paragraph do
  try
    FUpdating := True;
    BoldButton.Down := fsBold in Editor.SelAttributes.Style;
    ItalicButton.Down := fsItalic in Editor.SelAttributes.Style;
    UnderlineButton.Down := fsUnderline in Editor.SelAttributes.Style;
    BulletsButton.Down := Boolean(Numbering);
    FontSize.Text := IntToStr(Editor.SelAttributes.Size);
    FontName.Text := Editor.SelAttributes.Name;
    case Ord(Alignment) of
      0: LeftAlign.Down := True;
      1: RightAlign.Down := True;
      2: CenterAlign.Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

procedure TfrmEditorTexto.EditPaste(Sender: TObject);
begin
 Editor.PasteFromClipboard;
end;

procedure TfrmEditorTexto.EditUndo(Sender: TObject);
begin
  with Editor do
    if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure TfrmEditorTexto.FileExit(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditorTexto.FileNew(Sender: TObject);
begin
  SetFileName(sUntitled);
  Editor.Lines.Clear;
  Editor.Modified := False;
  SetModified(False);
end;

procedure TfrmEditorTexto.FileOpen(Sender: TObject);
begin
  CheckFileSave;
  if OpenDialog.Execute then
  begin
    PerformFileOpen(OpenDialog.FileName);
    Editor.ReadOnly := ofReadOnly in OpenDialog.Options;
  end;
end;

procedure TfrmEditorTexto.FileSave(Sender: TObject);
begin
{}
end;

procedure TfrmEditorTexto.FormCreate(Sender: TObject);
begin
  inherited;
  GetFontNames;
end;

procedure TfrmEditorTexto.GetFontNames;
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
end;

procedure TfrmEditorTexto.PerformFileOpen(const AFileName: string);
begin

end;

procedure TfrmEditorTexto.SelectFont(Sender: TObject);
begin
  FontDialog1.Font.Assign(Editor.SelAttributes);
  if FontDialog1.Execute then
    CurrText.Assign(FontDialog1.Font);
  EditorSelectionChange(Self);
  Editor.SetFocus;
end;

procedure TfrmEditorTexto.SetFileName(const FileName: String);
begin
  FFileName := FileName;
  Caption := Format('%s - %s', [ExtractFileName(FileName), Application.Title]);
end;

procedure TfrmEditorTexto.SetModified(Value: Boolean);
begin
  if Value then StatusBar.Panels[1].Text := sModified
  else StatusBar.Panels[1].Text := '';
end;

procedure TfrmEditorTexto.ShowHint(Sender: TObject);
begin
  if Length(Application.Hint) > 0 then
  begin
    StatusBar.SimplePanel := True;
    StatusBar.SimpleText := Application.Hint;
  end
  else StatusBar.SimplePanel := False;
end;

procedure TfrmEditorTexto.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(Editor.Handle, EM_EXLINEFROMCHAR, 0,
    Editor.SelStart);
  CharPos.X := (Editor.SelStart -
    SendMessage(Editor.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
  StatusBar.Panels[0].Text := Format(sColRowInfo, [CharPos.Y, CharPos.X]);
end;

end.
