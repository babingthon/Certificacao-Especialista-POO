unit Controller.Pessoa;

interface

  uses
    Interfaces.Controller, Interfaces.Pessoa;

  type
    TControllerPessoa = class(TInterfacedObject, IControllerPessoa)
      private
      public
        constructor Create;
        destructor Destroy; override;
        class function New: IControllerPessoa;
        function Pessoa(Value: TTypePessoa): IPessoa;
    end;

implementation

  uses
    Interfaces.Pessoa.Factory;

  { TControllerPessoa }

  constructor TControllerPessoa.Create;
    begin

    end;

  destructor TControllerPessoa.Destroy;
    begin

      inherited;
    end;

  class function TControllerPessoa.New: IControllerPessoa;
    begin
      Result := self.Create;
    end;

  function TControllerPessoa.Pessoa(Value: TTypePessoa): IPessoa;
    begin

      case Value of
        tpFisica:
          Result := TPessoaFactory.New.PessoaFisica;
        tpJuridica:
          Result := TPessoaFactory.New.PessoaJuridica;
        end;

        end;

        end.
