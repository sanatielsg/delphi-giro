unit UEstoqueSaida;

interface

type
  TEstoqueSaida = class
    private
      FCodigo        : Integer;
      FCodProduto    : Integer;
      FCodLocal      : Integer;
      FLote          : String;
      FQuantidade    : Double;
      FDataHora      : TDateTime;
    public
      property Codigo        : Integer   read FCodigo write FCodigo ;
      property CodProduto    : Integer   read FCodProduto write FCodProduto ;
      property CodLocal      : Integer   read FCodLocal write FCodLocal ;
      property Lote          : String    read FLote write FLote ;
      property Quantidade    : Double    read FQuantidade write FQuantidade ;
      property DataHora      : TDateTime read FDataHora write FDataHora ;
  end;

implementation

end.
