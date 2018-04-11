unit Classe.Endereco;

interface

type
    TEndereco = class
    private
      FLogradouro : String;
      FNumero : Integer;
      procedure setLogradouro(const Value: String);
      procedure setNumero(const Value: Integer);
    public
      constructor Create;
      property Logradouro : String read FLogradouro write setLogradouro;
      property Numero : Integer read FNumero write setNumero;


  end;
implementation

procedure TEndereco.setLogradouro(const Value: string);
begin
   FLogradouro := Value;
end;

procedure TEndereco.setNumero(const Value: Integer);
begin
   FNumero := Value;
end;

constructor TEndereco.Create;
begin
  Logradouro := 'Sem Endereco';
  Numero := 0;
end;
end.
