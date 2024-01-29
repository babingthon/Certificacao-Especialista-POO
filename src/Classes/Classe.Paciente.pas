unit Classe.Paciente;

interface

  uses
    System.SysUtils, Classe.Endereco;

  Type
    TPaciente = class
      private
        FNome: string;
        procedure SetNome(const Value: string);
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
        property Nome: string read FNome write SetNome;
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

  procedure TPaciente.SetNome(const Value: string);
    begin

      if Trim(Value) = '' then
        raise Exception.Create('Informe o nome do paciente.');

      FNome := Value;
    end;

end.
