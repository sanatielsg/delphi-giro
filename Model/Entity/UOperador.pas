unit UOperador;

interface

type
TOperador = class
  private
    FCodigo : Integer;
    FNome   : String;
    FLogin  : String;
    FSenha  : String;
  public
    property Codigo : Integer read FCodigo write FCodigo ;
    property Come   : String  read FNome write FNome ;
    property Cogin  : String  read FLogin write FLogin ;
    property Cenha  : String  read FSenha write FSenha ;
    function Encrypt(APassword, ASeed: String) : String;

end;

const
  SEED = 'R6#GIRO2022@';

implementation

{ TOperador }

function TOperador.Encrypt(APassword, ASeed: String): String;
begin

end;

end.
