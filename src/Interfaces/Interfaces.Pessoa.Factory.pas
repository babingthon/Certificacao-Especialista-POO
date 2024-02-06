unit Interfaces.Pessoa.Factory;

interface

  uses
    Interfaces.Pessoa;

  type
    TPessoaFactory = class(TInterfacedObject, IPessoaFactory)
      private
      public
        constructor Create;
        destructor Destroy; override;
        class function New: IPessoaFactory;
        function PessoaFisica: IPessoa;
        function PessoaJuridica: IPessoa;
    end;

implementation

  uses
    Classe.PessoaFisica, Classe.PessoaJuridica;

  { TPessoaFactory }

  constructor TPessoaFactory.Create;
    begin

    end;

  destructor TPessoaFactory.Destroy;
    begin

      inherited;
    end;

  class function TPessoaFactory.New: IPessoaFactory;
    begin
      Result := self.Create;
    end;

  function TPessoaFactory.PessoaFisica: IPessoa;
    begin
      Result := TPessoaFisica.New;
    end;

  function TPessoaFactory.PessoaJuridica: IPessoa;
    begin
      Result := TPessoaJuridica.New;
    end;

end.
