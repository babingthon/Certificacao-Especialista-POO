unit Classe.Endereco;

interface

  type
    TEndereco = class
      private
        FLogradouro: string;
        FComplemento: string;
        FNumero: string;
        FBairro: string;
        FCEP: string;
        FCidade: string;
        FUf: string;
        procedure SetLogradouro(const Value: string);
        procedure SetComplemento(const Value: string);
        procedure SetNumero(const Value: string);
        procedure SetBairro(const Value: string);
        procedure SetCEP(const Value: string);
        procedure SetCidade(const Value: string);
        procedure SetUf(const Value: string);

      public
        property Logradouro: string read FLogradouro write SetLogradouro;
        property Numero: string read FNumero write SetNumero;
        property Complemento: string read FComplemento write SetComplemento;
        property Bairro: string read FBairro write SetBairro;
        property CEP: string read FCEP write SetCEP;
        property Cidade: string read FCidade write SetCidade;
        property Uf: string read FUf write SetUf;
    end;

implementation

  { TEndereco }

  procedure TEndereco.SetBairro(const Value: string);
    begin
      FBairro := Value;
    end;

  procedure TEndereco.SetCEP(const Value: string);
    begin
      FCEP := Value;
    end;

  procedure TEndereco.SetCidade(const Value: string);
    begin
      FCidade := Value;
    end;

  procedure TEndereco.SetComplemento(const Value: string);
    begin
      FComplemento := Value;
    end;

  procedure TEndereco.SetLogradouro(const Value: string);
    begin
      FLogradouro := Value;
    end;

  procedure TEndereco.SetNumero(const Value: string);
    begin
      FNumero := Value;
    end;

  procedure TEndereco.SetUf(const Value: string);
    begin
      FUf := Value;
    end;

end.
