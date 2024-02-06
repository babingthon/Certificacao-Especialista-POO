unit Interfaces.Controller;

interface

uses
  Interfaces.Pessoa;

  type
    TTypePessoa = (tpFisica, tpJuridica);

    IControllerPessoa = interface
      ['{B00DD1BF-B38F-4758-9A27-F2B708B72868}']
      function Pessoa(Value : TTypePessoa) : IPessoa;

    end;

implementation

end.
