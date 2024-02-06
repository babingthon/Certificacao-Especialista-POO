unit Classe.Paciente;

interface

  uses
    System.SysUtils, Classe.Endereco, Interfaces.Paciente;

  Type
    TPaciente = class(TInterfacedObject, IPaciente)
      private
        FNome : string;
        FSobreNome : string;
        function Nome(Value: string): IPaciente;
        function SobreNome(Value: string): IPaciente;
        function NomeCompleto: string;
      public
        DataNascimento: TDateTime;
        DataObito: TDateTime;
        Email: string;
        NomeSocial: string;
        NomePai: string;
        NomeMae: string;
        Sexo: string;
        Endereco: TEndereco;
        constructor Create;
        destructor Destroy; override;
        class function New : IPaciente;
    end;

implementation

  { TPaciente }

  constructor TPaciente.Create;
    begin
      Endereco := TEndereco.Create;
    end;

  destructor TPaciente.Destroy;
    begin
      FreeAndNil(Endereco);
      inherited;
    end;

  class function TPaciente.New: IPaciente;
begin
   Result := self.Create; 
end;

function TPaciente.Nome(Value: string): IPaciente;
    begin
      Result := self;
      FNome := Value;
    end;

  function TPaciente.NomeCompleto: string;
    begin
      Result := FNome + ' ' + FSobreNome;
    end;

  function TPaciente.SobreNome(Value: string): IPaciente;
    begin
      Result := self;
      FSobreNome := Value;
    end;

end.
