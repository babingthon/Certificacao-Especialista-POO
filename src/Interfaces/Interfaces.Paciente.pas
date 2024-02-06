unit Interfaces.Paciente;

interface

  type
   IPaciente = interface
     ['{F0A65D26-CFA9-48FD-8DFC-BE8969403F11}']
     function Nome(Value : string ) : IPaciente;
     function SobreNome(Value : string) : IPaciente;
     function NomeCompleto : string;
   end;

implementation

end.
