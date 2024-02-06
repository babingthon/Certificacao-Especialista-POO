program CertificacaoPOO;

uses
  System.StartUpCopy,
  FMX.Forms,
  View.Principal in 'Views\View.Principal.pas' {FrmPrincipal},
  Classe.Paciente in 'Classes\Classe.Paciente.pas',
  Classe.Endereco in 'Classes\Classe.Endereco.pas',
  Interfaces.Paciente in 'Interfaces\Interfaces.Paciente.pas',
  Classe.PessoaFisica in 'Classes\Classe.PessoaFisica.pas',
  Interfaces.Pessoa in 'Interfaces\Interfaces.Pessoa.pas',
  Classe.PessoaJuridica in 'Classes\Classe.PessoaJuridica.pas',
  Interfaces.Pessoa.Factory in 'Interfaces\Interfaces.Pessoa.Factory.pas',
  Interfaces.Controller in 'Interfaces\Interfaces.Controller.pas',
  Controller.Pessoa in 'Controllers\Controller.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
