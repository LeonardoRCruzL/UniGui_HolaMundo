unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniMemo, uniButton,
  uniGUIBaseClasses, uniEdit;

type
  TMainForm = class(TUniForm)
    eTexto: TUniEdit;
    bAceptar: TUniButton;
    mmTextos: TUniMemo;
    procedure UniFormCreate(Sender: TObject);
    procedure bAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.bAceptarClick(Sender: TObject);
begin
  if eTexto.Text <> '' then
  begin
    mmTextos.Lines.Add(eTexto.Text);
    eTexto.Text:= '';
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  eTexto.Text:= '';
  mmTextos.Lines.Clear;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
