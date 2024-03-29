unit View.Principal;

interface

  uses
    System.SysUtils, System.Types, System.UITypes, System.Classes,
    System.Variants,
    FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
    FMX.Memo.Types,
    FMX.StdCtrls, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation,
    Classe.Paciente, FMX.Edit, Interfaces.Pessoa;

  type
    TFrmPrincipal = class(TForm)
      Button1: TButton;
      MemoResultado: TMemo;
      pnlPrincipal: TPanel;
      Label1: TLabel;
      Button2: TButton;
      Edit1: TEdit;
      Edit2: TEdit;
      Label2: TLabel;
      Label3: TLabel;
      Button3: TButton;
      procedure Button1Click(Sender: TObject);
      procedure Button2Click(Sender: TObject);
      procedure Button3Click(Sender: TObject);
      private

        FPessoa: IPessoa;
        { Private declarations }
      public
        { Public declarations }
    end;

  var
    FrmPrincipal: TFrmPrincipal;

implementation

uses
  Controller.Pessoa, Interfaces.Controller;

  {$R *.fmx}

  procedure TFrmPrincipal.Button1Click(Sender: TObject);
    var
      Paciente: TPaciente;
    begin

      Paciente := TPaciente.Create;

      try
        // Paciente.Nome := 'Babingthon Bandeira';
        Paciente.Email := 'babingthon.bandeira@gmail.com';
        Paciente.NomePai := 'Bartolomeu Bandeira de Melo';
        Paciente.NomeMae := 'Maria das Dores Silva Bandeira';
        Paciente.Sexo := 'Masculino';
        Paciente.NomeSocial := 'Maria do Bairro';
        Paciente.DataNascimento := StrToDate('06/04/1987');
        Paciente.Endereco.Logradouro := 'Rua da Saudade';
        Paciente.Endereco.Numero := '135';
        Paciente.Endereco.Complemento := 'BL 11 AP 103';
        Paciente.Endereco.Bairro := 'Ema�s';
        Paciente.Endereco.Cidade := 'Parnamirim';
        Paciente.Endereco.Uf := 'RN';
        Paciente.Endereco.CEP := '59.148-550';

        // MemoResultado.Lines.Add(Paciente.Nome);
        MemoResultado.Lines.Add(Paciente.Email);
        MemoResultado.Lines.Add(Paciente.NomePai);
        MemoResultado.Lines.Add(Paciente.NomeMae);
        MemoResultado.Lines.Add(Paciente.Sexo);
        MemoResultado.Lines.Add(Paciente.NomeSocial);
        MemoResultado.Lines.Add(DateToStr(Paciente.DataNascimento));
        MemoResultado.Lines.Add(Paciente.Endereco.Logradouro);
        MemoResultado.Lines.Add(Paciente.Endereco.Numero);
        MemoResultado.Lines.Add(Paciente.Endereco.Complemento);
        MemoResultado.Lines.Add(Paciente.Endereco.Bairro);
        MemoResultado.Lines.Add(Paciente.Endereco.Cidade);
        MemoResultado.Lines.Add(Paciente.Endereco.Uf);
        MemoResultado.Lines.Add(Paciente.Endereco.CEP);
      finally
        FreeAndNil(Paciente);
      end;

    end;

  procedure TFrmPrincipal.Button2Click(Sender: TObject);
    begin

      FPessoa := TControllerPessoa.New.Pessoa(tpFisica);

      MemoResultado.Lines.Add(FPessoa
        .Nome(Edit1.Text)
        .SobreNome(Edit2.Text)
        .NomeCompleto);

    end;

  procedure TFrmPrincipal.Button3Click(Sender: TObject);
    begin

      FPessoa := TControllerPessoa.New.Pessoa(tpJuridica);

      MemoResultado.Lines.Add(FPessoa
        .Nome(Edit1.Text)
        .SobreNome(Edit2.Text)
        .NomeCompleto);

    end;

end.
