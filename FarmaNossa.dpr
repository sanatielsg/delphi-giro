program FarmaNossa;

uses
  Vcl.Forms,
  UFrmMain in 'view\UFrmMain.pas' {FrmMain},
  UOperador in 'Model\Entity\UOperador.pas',
  UProduto in 'Model\Entity\UProduto.pas',
  ULocal in 'Model\Entity\ULocal.pas',
  UEstoqueEntrada in 'Model\Entity\UEstoqueEntrada.pas',
  UEstoqueSaida in 'Model\Entity\UEstoqueSaida.pas',
  UProdutoDAO in 'Model\DAO\UProdutoDAO.pas',
  UEstoque in 'Model\DTO\UEstoque.pas',
  UEstoqueEntradaDAO in 'Model\DAO\UEstoqueEntradaDAO.pas',
  UEstoqueSaidaDAO in 'Model\DAO\UEstoqueSaidaDAO.pas',
  UOperadorDAO in 'Model\DAO\UOperadorDAO.pas',
  ULocalDAO in 'Model\DAO\ULocalDAO.pas',
  UEstoqueDAO in 'Model\DAO\UEstoqueDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
