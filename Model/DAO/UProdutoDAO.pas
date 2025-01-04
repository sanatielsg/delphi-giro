unit UProdutoDAO;

interface

uses UProduto;

type
  TProdutoDAO = class
    private
      FConnection : TObject;
    public
      constructor Create(AConnection: TObject);
      destructor Destroy;
      function Insert(AValue: TProduto): TProduto;
  end;

implementation

{ TProdutoDAO }

constructor TProdutoDAO.Create(AConnection: TObject);
begin

end;

destructor TProdutoDAO.Destroy;
begin
  FConnection := Nil;
  FConnection.Free;
end;

function TProdutoDAO.Insert(AValue: TProduto): TProduto;
begin

end;

end.
