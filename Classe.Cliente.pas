unit Classe.Cliente;



interface
uses Classe.Pessoa, Classe.Endereco;

type
   Tcliente = class(TPessoa)
   private
    FEndereco :  TEndereco;
    procedure setEndereco (const Value: TEndereco);
   public

    ValorCredito : Currency;
    constructor Create; overload;
    constructor Create(Value: String); overload;
    constructor Create(Value: TPessoa); overload;
    destructor Destroy;  override;
    function RetornaNome : String; override;
    function MetodoAbstrato : String; override;
    property Endereco : TEndereco read FEndereco write setEndereco;

   end;

implementation

destructor TCliente.Destroy;
begin
  FEndereco.Free;
end;

constructor TCliente.Create(Value: TPessoa);
begin
  Nome := Value.Nome;
  DataNasc := Value.DataNasc;
  Sexo := Value.Sexo;
end;

constructor TCliente.Create(Value: String);
begin
   Nome := Value;

end;

constructor TCliente.Create;
begin
   FEndereco :=  TEndereco.Create;
   Nome := 'Novo Cliente';
end;

function TCliente.MetodoAbstrato : String;
begin
   Result := 'Eu sou o metodo abstrato';
end;

function TCliente.RetornaNome : String;
 begin
   inherited;
   Result := 'Eu sou filha de: '+ Nome;
 end;

 procedure TCliente.setEndereco (const Value: TEndereco);
 begin
   FEndereco := Value;
 end;

end.
