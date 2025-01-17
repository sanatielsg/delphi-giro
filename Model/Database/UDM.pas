unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  PostgreSQLUniProvider, MemDS
  ;

type
  TDM = class(TDataModule)
    Connection: TUniConnection;
    Provider: TPostgreSQLUniProvider;
    UniQuery1: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function Install():String;
  end;

var
  DM: TDM;

const
  VERSAO = 1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

function TDM.Install: String;
var vQry: TUniQuery;
    vSQL : String;
    vMsg : String;
begin
  vQry := TUniQuery.Create(Nil);
  vMsg := '';

  try
    try
       vSQL :=  ' CREATE TABLE OPERADOR(           '
              + ' OPE_CODIGO SERIAL,               '
              + ' OPE_NOME   VARCHAR(100) NOT NULL,'
              + ' OPE_LOGIN  VARCHAR(100) NOT NULL,'
              + ' OPE_SENHA  VARCHAR(100) NOT NULL '
              + ')';
      vQry.SQL.Clear;
      vQry.SQL.Add(vSQL);
      vQry.ExecSQL;
    except
      on E:Exception do
         vMsg := vMsg + 'Ocorreu um Erro: '+E.Message + Char(13);
    end;

    try
       vSQL :=  ' CREATE TABLE PRODUTO (                      '
              + ' PRO_CODIGO           SERIAL,                '
              + ' PRO_DESCRICAO        VARCHAR(100) NOT NULL, '
              + ' PRO_ESTOQUE_NEGATIVO INT NOT NULL DEFAULT 0,'
              + ' PRO_STATUS_ENTRADA   INT NOT NULL DEFAULT 0,'
              + ' PRO_STATUS_SAIDA     INT NOT NULL DEFAULT 0 '
              + ')';
      vQry.SQL.Clear;
      vQry.SQL.Add(vSQL);
      vQry.ExecSQL;
    except
      on E:Exception do
         vMsg := vMsg + 'Ocorreu um Erro: '+E.Message + Char(13);
    end;



  finally
    vQry.Free;
  end;
end;

end.
