unit Classe.PessoaFisica;

interface

  uses
    Interfaces.Pessoa;

  type

    TPessoaFisica = class(TInterfacedObject, IPessoa)
      private
        FNome: string;
        FSobreNome: string;
        function Nome(Value: string): IPessoa;
        function SobreNome(Value: string): IPessoa;
        function NomeCompleto: string;
      public
        constructor Create;
        destructor Destroy; override;
        class function New: IPessoa;
    end;

implementation

  { TPessoaFisica }

  constructor TPessoaFisica.Create;
    begin

    end;

  destructor TPessoaFisica.Destroy;
    begin

      inherited;
    end;

  class function TPessoaFisica.New: IPessoa;
    begin
      Result := self.Create;
    end;

  function TPessoaFisica.Nome(Value: string): IPessoa;
    begin
      Result := self;
      FNome := Value;
    end;

  function TPessoaFisica.NomeCompleto: string;
    begin
      Result := FNome + ' ' + FSobreNome;
    end;

  function TPessoaFisica.SobreNome(Value: string): IPessoa;
    begin
      Result := self;
      FSobreNome := Value;
    end;

end.
