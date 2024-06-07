unit TabelasConvenios;

interface

uses Windows, uDM, SysUtils, Vcl.Forms, Mensagem;


Procedure GeraTabelas(RegistroANS : String; IDConvenio : Integer);
//Sanepar
Procedure GeraCategoriasSanepar(IDConvenio : Integer);
Procedure ExameClinicoSanepar;
Procedure RadiologiaSanepar;

implementation


Procedure GeraTabelas(RegistroANS : String; IDConvenio : Integer);
Begin

  if RegistroANS = '338648' then //Funda��o Sanepar
    Begin
      GeraCategoriasSanepar(IDConvenio);
    End
  Else if RegistroANS = '' then //Funda��o Copel
    Begin

    End;
End;

Procedure ExameClinicoSanepar;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger  := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString            := '81000065';
      FieldByName('DESCRICAO').AsString                  := 'Consulta Odontol�gica Inicial';
      FieldByName('VALOR').AsFloat                       := 33;
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger   := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString             := '81000049';
      FieldByName('DESCRICAO').AsString                   := 'Consulta Odontol�gica de Urg�ncia';
      FieldByName('VALOR').AsFloat                        := 48.50;
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger   := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString             := '81000073';
      FieldByName('DESCRICAO').AsString                   := 'Consulta Odontol�gica para Avalia��o t�cnica de Auditoria';
      FieldByName('VALOR').AsFloat                        := 33;
      Post;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger   := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString             := '90010051';
      FieldByName('DESCRICAO').AsString                   := 'Falta N�o Justificada';
      FieldByName('VALOR').AsFloat                        := 33;
      Post;

      Close;
    End;
End;

Procedure GeraCategoriasSanepar(IDConvenio : Integer);
Begin
  With DM.qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CATEGORIAPROCEDIMENTO');
      SQL.Add('WHERE ID_CONVENIO = :pID');
      Parameters.ParamByName('pID').Value := IDConvenio;
      Open;

      if Eof then
        Begin
         // CursorType(crHourGlass);
          Application.CreateForm(TfrmMensagem, frmMensagem);
          frmMensagem.lblDescricao.Caption := 'Gerando Procedimentos TUSS...';
          frmMensagem.Barra.Properties.Min := 0;
          frmMensagem.Barra.Properties.Max := 12;
          frmMensagem.Barra.Position := 0;
          frmMensagem.Show;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Exame Cl�nico';
          Post;

          frmMensagem.Update;
          frmMensagem.Barra.Properties.Text := 'Gerando: Exame Cl�nico';
          frmMensagem.Update;
          ExameClinicoSanepar;
          frmMensagem.Update;
          frmMensagem.Barra.Position := 1;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Radiologia';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Radiologia';
          frmMensagem.Update;
          //GeraRadiologia;
          frmMensagem.Barra.Position := 2;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Testes e Exames de Laborat�rios';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Testes e Exames de Laborat�rios';
          frmMensagem.Update;
         // GeraExamesLaboratorios;
          frmMensagem.Barra.Position := 3;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Preven��o';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Preven��o';
          frmMensagem.Update;
          //GeraPrevencao;
          frmMensagem.Barra.Position := 4;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Odontopediatria';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Odontopediatria';
          frmMensagem.Update;
          //GeraOdontopediatria;
          frmMensagem.Barra.Position := 5;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Dent�stica';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Odontopediatria';
          frmMensagem.Update;
          //GeraDentistica;
          frmMensagem.Barra.Position := 6;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Endodontia';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Endodontia';
          frmMensagem.Update;
          //GeraEndodontia;
          frmMensagem.Barra.Position := 7;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Periodontia';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Periodontia';
          frmMensagem.Update;
          //GeraPeriodontia;
          frmMensagem.Barra.Position := 8;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Pr�tese';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Pr�tese';
          frmMensagem.Update;
        //  GeraProtese;
          frmMensagem.Barra.Position := 9;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Cirurgia';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Cirurgia';
          frmMensagem.Update;
         // GeraCirurgia;
          frmMensagem.Barra.Position := 10;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Ortodontia';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Ortodontia';
          frmMensagem.Update;
          //GeraOrtodontia;
          frmMensagem.Barra.Position := 11;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Implantodontia';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Implantodontia';
          frmMensagem.Update;
          //GeraImplantodontia;

          frmMensagem.Close;
          FreeAndNil(frmMensagem);
          //CursorType(crDefault);
        End;

        Close;
    End;
End;

Procedure RadiologiaSanepar;
Begin

End;

end.
