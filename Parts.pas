unit Parts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, NiceGrid, ExtCtrls;

type
  TFormParts = class(TForm)
    Panel1: TPanel;
    Label14: TLabel;
    NiceGrid1: TNiceGrid;
    GroupBox8: TGroupBox;
    ButtonClient1: TButton;
    ButtonClient2: TButton;
    ButtonClient3: TButton;
    ButtonClientEnd: TButton;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Memo1: TMemo;
    Edit8: TEdit;
    Edit5: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    GroupBox2: TGroupBox;
    EditFind: TEdit;
    ButtonFind: TButton;
    ButtonFindCancel: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParts: TFormParts;

implementation

{$R *.dfm}

end.
