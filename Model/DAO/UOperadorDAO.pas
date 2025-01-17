unit UOperadorDAO;

interface

type
  TOperadorDAO = class
    private
    public
      function Login(AUsername, APassword: String): Integer;
      function Encrypt(AString, ASeed: String): String;
  end;

implementation

uses
  Uni;

const
  SEED = 'R6#GIRO2022@';

{ TOperadorDAO }

function TOperadorDAO.Encrypt(AString, ASeed: String): String;
begin

end;

function TOperadorDAO.Login(AUsername, APassword: String): Integer;
  var vSQL,vUser,vPasswd : String;
      vQry : TUniQuery;
begin
  vSQL := ' SELECT * '
        + ' FROM OPERADOR '
        + ' WHERE OPE_USUARIO = :ope_usuario '
        + ' AND OPE_SENHA = :ope_senha ';

  vUser := Encrypt(AUsername, SEED);
  vPasswd := Encrypt(APassword, SEED);

  vQry := TUniQuery.Create(Nil);
  try
    with (vQry) do
    begin
      SQL.Add(vSQL);
      ParamByName('ope_usuario').AsString := vUser;
      ParamByName('ope_senha').AsString := vPasswd;
      Open;
      if RecordCount > 0 then
        Result := FieldByName('ope_codigo').AsInteger
      else
        Result := -1;
    end;
  finally
    vQry.Free;
  end;
end;

end.
