unit Interfaces.Pessoa;

interface

  type
    IPessoa = interface
      ['{51EC6168-F7A3-42E7-97E4-B9F56CC6EDC3}']
      function Nome(Value: string): IPessoa;
      function SobreNome(Value: string): IPessoa;
      function NomeCompleto: string;
    end;

    IPessoaFactory = interface
      ['{7A2448A0-4859-4999-8A37-4714DB881FE7}']
      function PessoaFisica: IPessoa;
      function PessoaJuridica: IPessoa;
    end;

implementation

end.
