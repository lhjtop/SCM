unit Charge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NiceGrid, ExtCtrls, DB, ADODB;

type
  TFormCharge = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Panel3: TPanel;
    Label14: TLabel;
    NiceGrid1: TNiceGrid;
    GroupBox8: TGroupBox;
    ButtonAccount1: TButton;
    ButtonAccount3: TButton;
    ButtonAccount4: TButton;
    ButtonAccountEnd: TButton;
    GroupBox7: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    Edit8: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit5: TEdit;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCharge: TFormCharge;

implementation

{$R *.dfm}


end.
