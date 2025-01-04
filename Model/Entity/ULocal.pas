unit ULocal;

interface

type
TLocal = class
  private
    FCodigo : Integer;
    FDescricao : String;
    FStatus: Integer;
  public
    property Codigo : Integer   read FCodigo write FCodigo ;
    property Descricao : String read FDescricao write FDescricao ;
    property Status: Integer    read FStatus write FStatus ;
end;

implementation

end.
