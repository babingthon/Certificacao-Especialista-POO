program CertificacaoPOO;

uses
  System.StartUpCopy,
  FMX.Forms,
  View.Principal in 'Views\View.Principal.pas' {FrmPrincipal},
  Classe.Paciente in 'Classes\Classe.Paciente.pas';


{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
