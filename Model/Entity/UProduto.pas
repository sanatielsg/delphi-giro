unit UProduto;

interface

type
TProduto = class
  private
    FCodigo         : String;
    FDescricao      : String;
    FEstoqueNegativo: Integer;
    FStatusEntrada  : Integer;
    FStatusSaida    : Integer;
  public
    property Codigo         : String  read FCodigo write FCodigo ;
    property Descricao      : String  read FDescricao write FDescricao ;
    property EstoqueNegativo: Integer read FEstoqueNegativo write FEstoqueNegativo ;
    property StatusEntrada  : Integer read FStatusEntrada write FStatusEntrada ;
    property StatusSaida    : Integer read FStatusSaida write FStatusSaida ;
end;

implementation

end.
