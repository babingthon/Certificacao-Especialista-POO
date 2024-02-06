unit Classe.PessoaJuridica;

interface

  uses
    Interfaces.Pessoa;

  type

    TPessoaJuridica = class(TInterfacedObject, IPessoa)
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

  { TPessoaJuridica }

  constructor TPessoaJuridica.Create;
    begin

    end;

  destructor TPessoaJuridica.Destroy;
    begin

      inherited;
    end;

  class function TPessoaJuridica.New: IPessoa;
    begin
      Result := self.Create;
    end;

  function TPessoaJuridica.Nome(Value: string): IPessoa;
    begin
      Result := self;
      FNome := Value;
    end;

  function TPessoaJuridica.NomeCompleto: string;
    begin
      Result := FNome + ' ' + FSobreNome  + ' LTDA ME';
    end;

  function TPessoaJuridica.SobreNome(Value: string): IPessoa;
    begin
      Result := self;
      FSobreNome := Value;
    end;

end.
