unit View.Principal;

interface

  uses
    System.SysUtils, System.Types, System.UITypes, System.Classes,
    System.Variants,
    FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
    FMX.Memo.Types,
    FMX.StdCtrls, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation,
    Classe.Paciente;

  type
    TFrmPrincipal = class(TForm)
      Button1: TButton;
      MemoResultado: TMemo;
      pnlPrincipal: TPanel;
      Label1: TLabel;
      procedure Button1Click(Sender: TObject);
      private
        { Private declarations }
      public
        { Public declarations }
    end;

  var
    FrmPrincipal: TFrmPrincipal;

implementation

  {$R *.fmx}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
    var
      Paciente: TPaciente;
    begin

      Paciente := TPaciente.Create;

      try
        Paciente.Nome := 'Babingthon Bandeira';
        Paciente.Email := 'babingthon.bandeira@gmail.com';
        Paciente.NomePai := 'Bartolomeu Bandeira de Melo';
        Paciente.NomeMae := 'Maria das Dores Silva Bandeira';
        Paciente.Sexo := 'Masculino';
        Paciente.NomeSocial := 'Maria do Bairro';
        Paciente.DataNascimento := StrToDate('06/04/1987');

        MemoResultado.Lines.Add(Paciente.Nome);
        MemoResultado.Lines.Add(Paciente.Email);
        MemoResultado.Lines.Add(Paciente.NomePai);
        MemoResultado.Lines.Add(Paciente.NomeMae);
        MemoResultado.Lines.Add(Paciente.Sexo);
        MemoResultado.Lines.Add(Paciente.NomeSocial);
        MemoResultado.Lines.Add(DateToStr(Paciente.DataNascimento));
      finally
        FreeAndNil(Paciente);
      end;

    end;

end.
