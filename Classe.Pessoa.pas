unit Classe.Pessoa;

interface

uses
  System.SysUtils;

type
    TPessoa = class
    private
      FNome: String;
      FEtinia: String;
      FSexo: String;
      FDataNasc : String;
      function getNome: String;
      procedure setNome(Value:String);

      function getEtinia: String;
      procedure setEtinia(Value:String);

      function getSexo: String;
      procedure setSexo(Value:String);

      function getDataNasc: String;
      procedure setDataNasc(Value:String);

    public
      property DataNasc : String read getDataNasc write setDataNasc;
      property Sexo : String read getSexo write setSexo;
      property Nome: String read getNome write setNome;
      property Etinia : String read getEtinia write setEtinia;
      function Idade: Integer;
      function Receber(I : Integer): String; overload;
      function Receber(I : Currency): String; overload;
      function Receber(A,B : Integer): String; overload;
      function RetornaNome : String; virtual;
      function MetodoAbstrato : String; virtual; abstract;
   protected
    FWhatsapp : String;

end;

implementation

function Tpessoa.Idade : Integer;
begin
   Result := Trunc((now - StrToDate(DataNasc)) / 365.25);
end;

function TPessoa.getNome : String;
begin
  Result:= FNome;
end;

procedure TPessoa.setNome(Value:String);
 begin
    if Value = '' then
      raise Exception.Create('Valor não pode ser nulo');

   FNome := Value;
 end;

 function TPessoa.getEtinia : String;
 begin
  Result := FEtinia;
 end;

 procedure Tpessoa.setEtinia(Value: string);
 begin
    FEtinia:= Value;
 end;

 function TPessoa.getSexo : String;
 begin
   Result := FSexo;
 end;

 procedure TPessoa.setSexo(Value:String);
 begin
   FSexo := Value;
 end;

 function TPessoa.getDataNasc : String;
 begin
   Result := FDataNasc;
 end;

 procedure TPessoa.setDataNasc(Value: string);
 begin
  FDataNasc := Value;
 end;

 function TPessoa.Receber(I : Currency): String;
 begin
   Result := 'Recebi um valor Currency'+ CurrToStr(I);
 end;

 function TPessoa.Receber(I : Integer): String;
 begin
   Result := 'Recebi um valor Inteiro'+ intToStr(I);
 end;

 function TPessoa.Receber(A,B : Integer): String;
 begin
   Result := 'A some desses inteiros é: '+ intToStr(A+B);
 end;

 function TPessoa.RetornaNome : String;
 begin
   Nome := 'TPessoa';
 end;



end.
