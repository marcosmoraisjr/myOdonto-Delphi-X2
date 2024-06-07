unit CadastroOperadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.StdCtrls, JvComponentBase,
  JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Funcoes, Data.DB, Data.Win.ADODB, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmCadastroOperadores = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtNome: TEdit;
    Label2: TLabel;
    EdtSenha: TEdit;
    GroupBox2: TGroupBox;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox15: TGroupBox;
    GroupBox21: TGroupBox;
    TabSheet5: TTabSheet;
    GroupBox22: TGroupBox;
    GroupBox23: TGroupBox;
    cbOperadorV: TCheckBox;
    cbOperadorC: TCheckBox;
    cbOperadorE: TCheckBox;
    GroupBox24: TGroupBox;
    cbProcedimentoV: TCheckBox;
    cbProcedimentoC: TCheckBox;
    cbProcedimentoE: TCheckBox;
    GroupBox25: TGroupBox;
    cbCidadesV: TCheckBox;
    cbCidadesC: TCheckBox;
    cbCidadesE: TCheckBox;
    GroupBox26: TGroupBox;
    cbConveniosV: TCheckBox;
    cbConveniosC: TCheckBox;
    cbConveniosE: TCheckBox;
    GroupBox27: TGroupBox;
    cbDentistaV: TCheckBox;
    cbDentistaC: TCheckBox;
    cbDentistaE: TCheckBox;
    GroupBox9: TGroupBox;
    cbAgendaV: TCheckBox;
    cbAgendaC: TCheckBox;
    cbAgendaE: TCheckBox;
    Operadores: TGroupBox;
    gLista: TJvDBGrid;
    GroupBox10: TGroupBox;
    cbEncaixeV: TCheckBox;
    cbEncaixeC: TCheckBox;
    cbEncaixeE: TCheckBox;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    cbSelecionarTodos: TCheckBox;
    qryAux: TADOQuery;
    btnDeletar: TSpeedButton;
    dsOperador: TDataSource;
    qryOperador: TADOQuery;
    qryOperadorNOME: TStringField;
    qryOperadorID_OPERADORES: TAutoIncField;
    cbTodasFiliais: TCheckBox;
    qryOperadorID_FILIAL: TIntegerField;
    SpeedButton1: TSpeedButton;
    GroupBox11: TGroupBox;
    cbRetornoV: TCheckBox;
    cbRetornoC: TCheckBox;
    cbRetornoE: TCheckBox;
    GroupBox12: TGroupBox;
    cbFornecedorV: TCheckBox;
    cbFornecedorC: TCheckBox;
    cbFornecedorE: TCheckBox;
    GroupBox13: TGroupBox;
    cbBancoV: TCheckBox;
    cbBancoC: TCheckBox;
    cbBancoE: TCheckBox;
    GroupBox14: TGroupBox;
    cbDocPersonalizadoV: TCheckBox;
    cbDocPersonalizadoC: TCheckBox;
    cbDocPersonalizadoE: TCheckBox;
    GroupBox16: TGroupBox;
    cbEmiDocPersonalizadoV: TCheckBox;
    cbEmiDocPersonalizadoC: TCheckBox;
    cbEmiDocPersonalizadoE: TCheckBox;
    GroupBox17: TGroupBox;
    cbReceituarioV: TCheckBox;
    cbReceituarioC: TCheckBox;
    cbReceituarioE: TCheckBox;
    GroupBox18: TGroupBox;
    cbAtestadosV: TCheckBox;
    cbAtestadosC: TCheckBox;
    cbAtestadosE: TCheckBox;
    GroupBox19: TGroupBox;
    cbTermosV: TCheckBox;
    cbTermosC: TCheckBox;
    cbTermosE: TCheckBox;
    GroupBox7: TGroupBox;
    cbListaPacienteV: TCheckBox;
    cbListaPacienteC: TCheckBox;
    cbListaPacienteE: TCheckBox;
    GroupBox4: TGroupBox;
    cbAnamneseV: TCheckBox;
    cbAnamneseC: TCheckBox;
    cbAnamneseE: TCheckBox;
    GroupBox5: TGroupBox;
    cbExameOralV: TCheckBox;
    cbExameOralC: TCheckBox;
    cbExameOralE: TCheckBox;
    GroupBox6: TGroupBox;
    cbPlanoTratamentoV: TCheckBox;
    cbPlanoTratamentoC: TCheckBox;
    cbPlanoTratamentoE: TCheckBox;
    GroupBox8: TGroupBox;
    cbFotosPacienteV: TCheckBox;
    cbFotosPacienteC: TCheckBox;
    cbFotosPacienteE: TCheckBox;
    GroupBox3: TGroupBox;
    cbCaixaV: TCheckBox;
    cbCaixaA: TCheckBox;
    cbCaixaF: TCheckBox;
    GroupBox20: TGroupBox;
    cbLancamentoCaixa: TCheckBox;
    cbConferenciaLancamentoCaixa: TCheckBox;
    cbConferenciaLancamentoBanco: TCheckBox;
    cbReforcoCaixa: TCheckBox;
    cbSaqueValores: TCheckBox;
    cbRelCaixaGeral: TCheckBox;
    cbTransfSaldo: TCheckBox;
    GroupBox28: TGroupBox;
    cbTPV: TCheckBox;
    cbTPC: TCheckBox;
    cbTPE: TCheckBox;
    cbTPB: TCheckBox;
    cbTPEstornar: TCheckBox;
    cbTPP: TCheckBox;
    cbTPD: TCheckBox;
    GroupBox29: TGroupBox;
    cbTRPV: TCheckBox;
    cbTRPC: TCheckBox;
    cbTRPE: TCheckBox;
    cbTRPB: TCheckBox;
    cbTRPEstornar: TCheckBox;
    cbTRPP: TCheckBox;
    cbTRPD: TCheckBox;
    GroupBox30: TGroupBox;
    cbTRCV: TCheckBox;
    cbTRCC: TCheckBox;
    cbTRCE: TCheckBox;
    cbTRCB: TCheckBox;
    cbTRCEstornar: TCheckBox;
    cbTRCP: TCheckBox;
    cbTRCD: TCheckBox;
    GroupBox31: TGroupBox;
    cbCRV: TCheckBox;
    cbCREstornar: TCheckBox;
    cbCRC: TCheckBox;
    cbNotificacaoFinanceira: TCheckBox;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbSelecionarTodosClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    Procedure CarregaOperador(ID : Integer);
    procedure gListaCellClick(Column: TColumn);
    procedure btnDeletarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroOperadores: TfrmCadastroOperadores;

implementation

{$R *.dfm}

procedure TfrmCadastroOperadores.btnDeletarClick(Sender: TObject);
begin
  inherited;
  if Not Operador.OperadorSIstemaE then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para deletar um operador!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM OPERADORES');
      SQL.Add('WHERE ID_OPERADORES = :pID');
      Parameters.ParamByName('pID').Value := qryOperadorID_OPERADORES.AsInteger;
      ExecSQL;
    End;

  qryOperador.Close;
  qryOperador.Open;
end;

procedure TfrmCadastroOperadores.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadastroOperadores.btnSalvarClick(Sender: TObject);
var
  sNome, sSenha : String;
begin
  inherited;
 if EdtNome.Text = '' then
  Begin
    application.MessageBox('O campo NOME � obrigat�rio o preenchimento!', 'Erro!!!',
      mb_ok + MB_ICONERROR);
    EdtNome.SetFocus;
    Exit;
  End;

 if EdtSenha.Text = '' then
  Begin
    application.MessageBox('O campo SENHA � obrigat�rio o preenchimento!', 'Erro!!!',
      mb_ok + MB_ICONERROR);
    EdtSenha.SetFocus;
    Exit;
  End;

  sSenha := Crypt('C', EdtSenha.Text);

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM OPERADORES');
      SQL.Add('WHERE NOME = :pNome');
      Parameters.ParamByName('pNome').Value := EdtNome.Text;
      Open;

      if Not EOf then
        Begin

          if not Operador.OperadorSIstemaE then
            Begin
              application.MessageBox('Operador n�o tem permiss�o para editar o cadastro de operadores!', 'Acesso Negado',
              mb_ok + MB_ICONWARNING);
              Exit;
            End;

          Edit;
        End
      Else
        Begin

          if not Operador.OperadorSIstemaC then
            Begin
              application.MessageBox('Operador n�o tem permiss�o para cadastrar um novo operador!', 'Acesso Negado',
              mb_ok + MB_ICONWARNING);
              Exit;
            End;

          Append;
          FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
        End;

      FieldByName('NOME').AsString := EdtNome.Text;
      FieldByName('Senha').AsString := sSenha;
      FieldByName('TODASFILIAL').AsBoolean := cbTodasFiliais.Checked;

      //Paciente
      FieldByName('LISTAPACIENTEV').AsBoolean := cbListaPacienteV.Checked;
      FieldByName('LISTAPACIENTEC').AsBoolean := cbListaPacienteC.Checked;
      FieldByName('LISTAPACIENTEE').AsBoolean := cbListaPacienteE.Checked;
      FieldByName('ANAMNESEV').AsBoolean := cbAnamneseV.Checked;
      FieldByName('ANAMNESEC').AsBoolean := cbAnamneseC.Checked;
      FieldByName('ANAMNESEE').AsBoolean := cbAnamneseE.Checked;
      FieldByName('EXAMEORALV').AsBoolean := cbExameOralV.Checked;
      FieldByName('EXAMEORALC').AsBoolean := cbExameOralC.Checked;
      FieldByName('EXAMEORALE').AsBoolean := cbExameOralE.Checked;
      FieldByName('PLANOTRATAMENTOV').AsBoolean := cbPlanoTratamentoV.Checked;
      FieldByName('PLANOTRATAMENTOC').AsBoolean := cbPlanoTratamentoC.Checked;
      FieldByName('PLANOTRATAMENTOE').AsBoolean := cbPlanoTratamentoE.Checked;
      FieldByName('FOTOPACIENTEV').AsBoolean := cbFotosPacienteV.Checked;
      FieldByName('FOTOPACIENTEC').AsBoolean := cbFotosPacienteC.Checked;
      FieldByName('FOTOPACIENTEE').AsBoolean := cbFotosPacienteE.Checked;
      FieldByName('OPERADORSISTEMAV').AsBoolean := cbOperadorV.Checked;
      FieldByName('OPERADORSISTEMAC').AsBoolean := cbOperadorC.Checked;
      FieldByName('OPERADORSISTEMAE').AsBoolean := cbOperadorE.Checked;
      FieldByName('PROCEDIMENTOSV').AsBoolean := cbProcedimentoV.Checked;
      FieldByName('PROCEDIMENTOSC').AsBoolean := cbProcedimentoC.Checked;
      FieldByName('PROCEDIMENTOSE').AsBoolean := cbProcedimentoE.Checked;
      FieldByName('CIDADESV').AsBoolean := cbCidadesV.Checked;
      FieldByName('CIDADESC').AsBoolean := cbCidadesC.Checked;
      FieldByName('CIDADESE').AsBoolean := cbCidadesE.Checked;
      FieldByName('CONVENIOSV').AsBoolean := cbConveniosV.Checked;
      FieldByName('CONVENIOSC').AsBoolean := cbConveniosC.Checked;
      FieldByName('CONVENIOSE').AsBoolean := cbConveniosE.Checked;
      FieldByName('DENTISTASV').AsBoolean := cbDentistaV.Checked;
      FieldByName('DENTISTASC').AsBoolean := cbDentistaC.Checked;
      FieldByName('DENTISTASE').AsBoolean := cbDentistaE.Checked;
      FieldByName('AGENDAV').AsBoolean := cbAgendaV.Checked;
      FieldByName('AGENDAC').AsBoolean := cbAgendaC.Checked;
      FieldByName('AGENDAE').AsBoolean := cbAgendaE.Checked;
      FieldByName('ENCAIXEV').AsBoolean := cbEncaixeV.Checked;
      FieldByName('ENCAIXEC').AsBoolean := cbEncaixeC.Checked;
      FieldByName('ENCAIXEE').AsBoolean := cbEncaixeE.Checked;
      FieldByName('RETORNOV').AsBoolean := cbRetornoV.Checked;
      FieldByName('RETORNOC').AsBoolean := cbRetornoC.Checked;
      FieldByName('RETORNOE').AsBoolean := cbRetornoE.Checked;
      FieldByName('FORNECEDORESV').AsBoolean := cbFornecedorV.Checked;
      FieldByName('FORNECEDORESC').AsBoolean := cbFornecedorC.Checked;
      FieldByName('FORNECEDORESE').AsBoolean := cbFornecedorE.Checked;
      FieldByName('BANCOV').AsBoolean := cbBancoV.Checked;
      FieldByName('BANCOC').AsBoolean := cbBancoC.Checked;
      FieldByName('BANCOE').AsBoolean := cbBancoE.Checked;
      FieldByName('DOCPERSONALIZADOV').AsBoolean := cbDocPersonalizadoV.Checked;
      FieldByName('DOCPERSONALIZADOC').AsBoolean := cbDocPersonalizadoC.Checked;
      FieldByName('DOCPERSONALIZADOE').AsBoolean := cbDocPersonalizadoE.Checked;
      FieldByName('EMIDOCPERSONALIZADOV').AsBoolean := cbEmiDocPersonalizadoV.Checked;
      FieldByName('EMIDOCPERSONALIZADOC').AsBoolean := cbEmiDocPersonalizadoC.Checked;
      FieldByName('EMIDOCPERSONALIZADOE').AsBoolean := cbEmiDocPersonalizadoE.Checked;
      FieldByName('RECEITUARIOV').AsBoolean := cbReceituarioV.Checked;
      FieldByName('RECEITUARIOC').AsBoolean := cbReceituarioC.Checked;
      FieldByName('RECEITUARIOE').AsBoolean := cbReceituarioE.Checked;
      FieldByName('ATESTADOSV').AsBoolean := cbAtestadosV.Checked;
      FieldByName('ATESTADOSC').AsBoolean := cbAtestadosC.Checked;
      FieldByName('ATESTADOSE').AsBoolean := cbAtestadosE.Checked;
      FieldByName('TERMOSV').AsBoolean := cbTermosV.Checked;
      FieldByName('TERMOSC').AsBoolean := cbTermosC.Checked;
      FieldByName('TERMOSE').AsBoolean := cbTermosE.Checked;

      FieldByName('CaixaV').AsBoolean := cbCaixaV.Checked;
      FieldByName('CaixaA').AsBoolean := cbCaixaA.Checked;
      FieldByName('CaixaF').AsBoolean := cbCaixaF.Checked;
      FieldByName('TitulosPagarV').AsBoolean := cbTPV.Checked;
      FieldByName('TitulosPagarC').AsBoolean := cbTPC.Checked;
      FieldByName('TitulosPagarE').AsBoolean := cbTPE.Checked;
      FieldByName('TitulosPagarB').AsBoolean := cbTPB.Checked;
      FieldByName('TitulosPagarEstornar').AsBoolean := cbTPEstornar.Checked;
      FieldByName('TitulosPagarP').AsBoolean := cbTPP.Checked;
      FieldByName('TitulosPagarD').AsBoolean := cbTPD.Checked;
      FieldByName('TitulosReceberPV').AsBoolean := cbTRPV.Checked;
      FieldByName('TitulosReceberPC').AsBoolean := cbTRPC.Checked;
      FieldByName('TitulosReceberPE').AsBoolean := cbTRPE.Checked;
      FieldByName('TitulosReceberPB').AsBoolean := cbTRPB.Checked;
      FieldByName('TitulosReceberPEstornar').AsBoolean := cbTRPEstornar.Checked;
      FieldByName('TitulosReceberPP').AsBoolean := cbTRPP.Checked;
      FieldByName('TitulosReceberPD').AsBoolean := cbTRPD.Checked;
      FieldByName('TitulosReceberCV').AsBoolean := cbTRCV.Checked;
      FieldByName('TitulosReceberCC').AsBoolean := cbTRCC.Checked;
      FieldByName('TitulosReceberCE').AsBoolean := cbTRCE.Checked;
      FieldByName('TitulosReceberCB').AsBoolean := cbTRCB.Checked;
      FieldByName('TitulosReceberCEstornar').AsBoolean := cbTRCEstornar.Checked;
      FieldByName('TitulosReceberCP').AsBoolean := cbTRCP.Checked;
      FieldByName('TitulosReceberCD').AsBoolean := cbTRCD.Checked;
      FieldByName('ChequesRecebidosV').AsBoolean := cbCRV.Checked;
      FieldByName('ChequesRecebidosE').AsBoolean := cbCREstornar.Checked;
      FieldByName('ChequesRecebidosC').AsBoolean := cbCRC.Checked;
      FieldByName('LancamentoCaixa').AsBoolean := cbLancamentoCaixa.Checked;
      FieldByName('ConfLancCaixa').AsBoolean := cbConferenciaLancamentoCaixa.Checked;
      FieldByName('ConfLancBanco').AsBoolean := cbConferenciaLancamentoBanco.Checked;
      FieldByName('ReforcoCaixa').AsBoolean := cbReforcoCaixa.Checked;
      FieldByName('SaqueValores').AsBoolean := cbSaqueValores.Checked;
      FieldByName('RelCaixaGeral').AsBoolean := cbRelCaixaGeral.Checked;
      FieldByName('TransfSaldos').AsBoolean := cbTransfSaldo.Checked;
      FieldByName('NotificacaoFinanceira').AsBoolean := cbNotificacaoFinanceira.Checked;

      Post;
      Funcoes.CarregaOperador(Operador.ID);
      CarregaOperador(Operador.ID);
      qryOperador.Close;
      qryOperador.Open;

      application.MessageBox('Operador salvo com sucesso', 'Sucesso!!!',
      mb_ok + MB_ICONINFORMATION);
    End;

end;

procedure TfrmCadastroOperadores.CarregaOperador(ID: Integer);
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM OPERADORES');
      SQL.Add('WHERE ID_OPERADORES = :pID');
      Parameters.ParamByName('pID').Value := ID;
      Open;

      EdtNome.Text := FieldByName('NOME').AsString;
      EdtSenha.Text := Crypt('D', FieldByName('Senha').AsString);


      cbListaPacienteV.Checked := FieldByName('LISTAPACIENTEV').AsBoolean;
      cbListaPacienteC.Checked := FieldByName('LISTAPACIENTEC').AsBoolean;
      cbListaPacienteE.Checked := FieldByName('LISTAPACIENTEE').AsBoolean;
      cbAnamneseV.Checked := FieldByName('ANAMNESEV').AsBoolean;
      cbAnamneseC.Checked := FieldByName('ANAMNESEC').AsBoolean;
      cbAnamneseE.Checked := FieldByName('ANAMNESEE').AsBoolean;
      cbExameOralV.Checked := FieldByName('EXAMEORALV').AsBoolean;
      cbExameOralC.Checked := FieldByName('EXAMEORALC').AsBoolean;
      cbExameOralE.Checked := FieldByName('EXAMEORALE').AsBoolean;
      cbPlanoTratamentoV.Checked := FieldByName('PLANOTRATAMENTOV').AsBoolean;
      cbPlanoTratamentoC.Checked := FieldByName('PLANOTRATAMENTOC').AsBoolean;
      cbPlanoTratamentoE.Checked := FieldByName('PLANOTRATAMENTOE').AsBoolean;
      cbFotosPacienteV.Checked := FieldByName('FOTOPACIENTEV').AsBoolean;
      cbFotosPacienteC.Checked := FieldByName('FOTOPACIENTEC').AsBoolean;
      cbFotosPacienteE.Checked := FieldByName('FOTOPACIENTEE').AsBoolean;
      cbOperadorV.Checked := FieldByName('OPERADORSISTEMAV').AsBoolean;
      cbOperadorC.Checked := FieldByName('OPERADORSISTEMAC').AsBoolean;
      cbOperadorE.Checked := FieldByName('OPERADORSISTEMAE').AsBoolean;
      cbProcedimentoV.Checked := FieldByName('PROCEDIMENTOSV').AsBoolean;
      cbProcedimentoC.Checked := FieldByName('PROCEDIMENTOSC').AsBoolean;
      cbProcedimentoE.Checked := FieldByName('PROCEDIMENTOSE').AsBoolean;
      cbCidadesV.Checked := FieldByName('CIDADESV').AsBoolean;
      cbCidadesC.Checked := FieldByName('CIDADESC').AsBoolean;
      cbCidadesE.Checked := FieldByName('CIDADESE').AsBoolean;
      cbConveniosV.Checked := FieldByName('CONVENIOSV').AsBoolean;
      cbConveniosC.Checked := FieldByName('CONVENIOSC').AsBoolean;
      cbConveniosE.Checked := FieldByName('CONVENIOSE').AsBoolean;
      cbDentistaV.Checked := FieldByName('DENTISTASV').AsBoolean;
      cbDentistaC.Checked := FieldByName('DENTISTASC').AsBoolean;
      cbDentistaE.Checked := FieldByName('DENTISTASE').AsBoolean;
      cbAgendaV.Checked := FieldByName('AGENDAV').AsBoolean;
      cbAgendaC.Checked := FieldByName('AGENDAC').AsBoolean;
      cbAgendaE.Checked := FieldByName('AGENDAE').AsBoolean;
      cbEncaixeV.Checked := FieldByName('ENCAIXEV').AsBoolean;
      cbEncaixeC.Checked := FieldByName('ENCAIXEC').AsBoolean;
      cbEncaixeE.Checked :=FieldByName('ENCAIXEE').AsBoolean;
      cbRetornoV.Checked := FieldByName('RETORNOV').AsBoolean;
      cbRetornoC.Checked := FieldByName('RETORNOC').AsBoolean;
      cbRetornoE.Checked := FieldByName('RETORNOE').AsBoolean;
      cbFornecedorV.Checked := FieldByName('FORNECEDORESV').AsBoolean;
      cbFornecedorC.Checked := FieldByName('FORNECEDORESC').AsBoolean;
      cbFornecedorE.Checked := FieldByName('FORNECEDORESE').AsBoolean;
      cbBancoV.Checked := FieldByName('BANCOV').AsBoolean;
      cbBancoC.Checked := FieldByName('BANCOC').AsBoolean;
      cbBancoE.Checked := FieldByName('BANCOE').AsBoolean;
      cbDocPersonalizadoV.Checked := FieldByName('DOCPERSONALIZADOV').AsBoolean;
      cbDocPersonalizadoC.Checked := FieldByName('DOCPERSONALIZADOC').AsBoolean;
      cbDocPersonalizadoE.Checked := FieldByName('DOCPERSONALIZADOE').AsBoolean;
      cbEmiDocPersonalizadoV.Checked := FieldByName('EMIDOCPERSONALIZADOV').AsBoolean;
      cbEmiDocPersonalizadoC.Checked := FieldByName('EMIDOCPERSONALIZADOC').AsBoolean;
      cbEmiDocPersonalizadoE.Checked := FieldByName('EMIDOCPERSONALIZADOE').AsBoolean;
      cbReceituarioV.Checked := FieldByName('RECEITUARIOV').AsBoolean;
      cbReceituarioC.Checked := FieldByName('RECEITUARIOC').AsBoolean;
      cbReceituarioE.Checked := FieldByName('RECEITUARIOE').AsBoolean;
      cbAtestadosV.Checked := FieldByName('ATESTADOSV').AsBoolean;
      cbAtestadosC.Checked := FieldByName('ATESTADOSC').AsBoolean;
      cbAtestadosE.Checked := FieldByName('ATESTADOSE').AsBoolean;
      cbTermosV.Checked := FieldByName('TERMOSV').AsBoolean;
      cbTermosC.Checked := FieldByName('TERMOSC').AsBoolean;
      cbTermosE.Checked := FieldByName('TERMOSE').AsBoolean;
      cbCaixaV.Checked := FieldByName('CaixaV').AsBoolean;
      cbCaixaA.Checked := FieldByName('CaixaA').AsBoolean;
      cbCaixaF.Checked := FieldByName('CaixaF').AsBoolean;
      cbTPV.Checked := FieldByName('TitulosPagarV').AsBoolean;
      cbTPC.Checked := FieldByName('TitulosPagarC').AsBoolean;
      cbTPE.Checked := FieldByName('TitulosPagarE').AsBoolean;
      cbTPB.Checked := FieldByName('TitulosPagarB').AsBoolean;
      cbTPEstornar.Checked := FieldByName('TitulosPagarEstornar').AsBoolean;
      cbTPP.Checked := FieldByName('TitulosPagarP').AsBoolean;
      cbTPD.Checked := FieldByName('TitulosPagarD').AsBoolean;
      cbTRPV.Checked := FieldByName('TitulosReceberPV').AsBoolean;
      cbTRPC.Checked := FieldByName('TitulosReceberPC').AsBoolean;
      cbTRPE.Checked := FieldByName('TitulosReceberPE').AsBoolean;
      cbTRPB.Checked := FieldByName('TitulosReceberPB').AsBoolean;
      cbTRPEstornar.Checked := FieldByName('TitulosReceberPEstornar').AsBoolean;
      cbTRPP.Checked := FieldByName('TitulosReceberPP').AsBoolean;
      cbTRPD.Checked := FieldByName('TitulosReceberPD').AsBoolean;
      cbTRCV.Checked := FieldByName('TitulosReceberCV').AsBoolean;
      cbTRCC.Checked := FieldByName('TitulosReceberCC').AsBoolean;
      cbTRCE.Checked := FieldByName('TitulosReceberCE').AsBoolean;
      cbTRCB.Checked := FieldByName('TitulosReceberCB').AsBoolean;
      cbTRCEstornar.Checked := FieldByName('TitulosReceberCEstornar').AsBoolean;
      cbTRCP.Checked := FieldByName('TitulosReceberCP').AsBoolean;
      cbTRCD.Checked := FieldByName('TitulosReceberCD').AsBoolean;
      cbCRV.Checked := FieldByName('ChequesRecebidosV').AsBoolean;
      cbCREstornar.Checked := FieldByName('ChequesRecebidosE').AsBoolean;
      cbCRC.Checked := FieldByName('ChequesRecebidosC').AsBoolean;
      cbLancamentoCaixa.Checked := FieldByName('LancamentoCaixa').AsBoolean;
      cbConferenciaLancamentoCaixa.Checked := FieldByName('ConfLancCaixa').AsBoolean;
      cbConferenciaLancamentoBanco.Checked := FieldByName('ConfLancBanco').AsBoolean;
      cbReforcoCaixa.Checked := FieldByName('ReforcoCaixa').AsBoolean;
      cbSaqueValores.Checked := FieldByName('SaqueValores').AsBoolean;
      cbRelCaixaGeral.Checked := FieldByName('RelCaixaGeral').AsBoolean;
      cbTransfSaldo.Checked := FieldByName('TransfSaldos').AsBoolean;
      cbNotificacaoFinanceira.Checked := FieldByName('NotificacaoFinanceira').AsBoolean;

      if FieldByName('NOME').AsString = 'admin' then
      Begin
        cbTodasFiliais.Checked := True;
      End
      Else
        cbTodasFiliais.Checked := FieldByName('TODASFILIAL').AsBoolean;
    End;
end;

procedure TfrmCadastroOperadores.cbSelecionarTodosClick(Sender: TObject);
begin
  inherited;
  if cbSelecionarTodos.Checked then
    Begin
      cbListaPacienteV.Checked := True;
      cbListaPacienteC.Checked := True;
      cbListaPacienteE.Checked := True;
      cbAnamneseV.Checked := True;
      cbAnamneseC.Checked := True;
      cbAnamneseE.Checked := True;
      cbExameOralV.Checked := True;
      cbExameOralC.Checked := True;
      cbExameOralE.Checked := True;
      cbPlanoTratamentoV.Checked := True;
      cbPlanoTratamentoC.Checked := True;
      cbPlanoTratamentoE.Checked := True;
      cbFotosPacienteV.Checked := True;
      cbFotosPacienteC.Checked := True;
      cbFotosPacienteE.Checked := True;
      cbOperadorV.Checked := True;
      cbOperadorC.Checked := True;
      cbOperadorE.Checked := True;
      cbProcedimentoV.Checked := True;
      cbProcedimentoC.Checked := True;
      cbProcedimentoE.Checked := True;
      cbCidadesV.Checked := True;
      cbCidadesC.Checked := True;
      cbCidadesE.Checked := True;
      cbConveniosV.Checked := True;
      cbConveniosC.Checked := True;
      cbConveniosE.Checked := True;
      cbDentistaV.Checked := True;
      cbDentistaC.Checked := True;
      cbDentistaE.Checked := True;
      cbAgendaV.Checked := True;
      cbAgendaC.Checked := True;
      cbAgendaE.Checked := True;
      cbEncaixeV.Checked := True;
      cbEncaixeC.Checked := True;
      cbEncaixeE.Checked := True;

      cbRetornoV.Checked := True;
      cbRetornoC.Checked := True;
      cbRetornoE.Checked := True;
      cbFornecedorV.Checked := True;
      cbFornecedorC.Checked := True;
      cbFornecedorE.Checked := True;
      cbBancoV.Checked := True;
      cbBancoC.Checked := True;
      cbBancoE.Checked := True;
      cbDocPersonalizadoV.Checked := True;
      cbDocPersonalizadoC.Checked := True;
      cbDocPersonalizadoE.Checked := True;
      cbEmiDocPersonalizadoV.Checked := True;
      cbEmiDocPersonalizadoC.Checked := True;
      cbEmiDocPersonalizadoE.Checked := True;
      cbReceituarioV.Checked := True;
      cbReceituarioC.Checked := True;
      cbReceituarioE.Checked := True;
      cbAtestadosV.Checked := True;
      cbAtestadosC.Checked := True;
      cbAtestadosE.Checked := True;
      cbTermosV.Checked := True;
      cbTermosC.Checked := True;
      cbTermosE.Checked := True;

      //Financeiro
      cbCaixaV.Checked := True;
      cbCaixaA.Checked := True;
      cbCaixaF.Checked := True;
      cbTPV.Checked := True;
      cbTPC.Checked := True;
      cbTPE.Checked := True;
      cbTPB.Checked := True;
      cbTPEstornar.Checked := True;
      cbTPP.Checked := True;
      cbTPD.Checked := True;
      cbTRPV.Checked := True;
      cbTRPC.Checked := True;
      cbTRPE.Checked := True;
      cbTRPB.Checked := True;
      cbTRPEstornar.Checked := True;
      cbTRPP.Checked := True;
      cbTRPD.Checked := True;
      cbTRCV.Checked := True;
      cbTRCC.Checked := True;
      cbTRCE.Checked := True;
      cbTRCB.Checked := True;
      cbTRCEstornar.Checked := True;
      cbTRCP.Checked := True;
      cbTRCD.Checked := True;
      cbCRV.Checked := True;
      cbCREstornar.Checked := True;
      cbCRC.Checked := True;
      cbLancamentoCaixa.Checked := True;
      cbConferenciaLancamentoCaixa.Checked := True;
      cbConferenciaLancamentoBanco.Checked := True;
      cbReforcoCaixa.Checked := True;
      cbSaqueValores.Checked := True;
      cbRelCaixaGeral.Checked := True;
      cbTransfSaldo.Checked := True;
      cbNotificacaoFinanceira.Checked := True;
    End
  Else
    Begin
      //Paciente
      cbListaPacienteV.Checked := False;
      cbListaPacienteC.Checked := False;
      cbListaPacienteE.Checked := False;
      cbAnamneseV.Checked := False;
      cbAnamneseC.Checked := False;
      cbAnamneseE.Checked := False;
      cbExameOralV.Checked := False;
      cbExameOralC.Checked := False;
      cbExameOralE.Checked := False;
      cbPlanoTratamentoV.Checked := False;
      cbPlanoTratamentoC.Checked := False;
      cbPlanoTratamentoE.Checked := False;
      cbFotosPacienteV.Checked := False;
      cbFotosPacienteC.Checked := False;
      cbFotosPacienteE.Checked := False;

      //Cadastros
      cbOperadorV.Checked := False;
      cbOperadorC.Checked := False;
      cbOperadorE.Checked := False;
      cbProcedimentoV.Checked := False;
      cbProcedimentoC.Checked := False;
      cbProcedimentoE.Checked := False;
      cbCidadesV.Checked := False;
      cbCidadesC.Checked := False;
      cbCidadesE.Checked := False;
      cbConveniosV.Checked := False;
      cbConveniosC.Checked := False;
      cbConveniosE.Checked := False;
      cbDentistaV.Checked := False;
      cbDentistaC.Checked := False;
      cbDentistaE.Checked := False;
      cbAgendaV.Checked := False;
      cbAgendaC.Checked := False;
      cbAgendaE.Checked := False;
      cbEncaixeV.Checked := False;
      cbEncaixeC.Checked := False;
      cbEncaixeE.Checked := False;

      cbRetornoV.Checked := False;
      cbRetornoC.Checked := False;
      cbRetornoE.Checked := False;
      cbFornecedorV.Checked := False;
      cbFornecedorC.Checked := False;
      cbFornecedorE.Checked := False;
      cbBancoV.Checked := False;
      cbBancoC.Checked := False;
      cbBancoE.Checked := False;
      cbDocPersonalizadoV.Checked := False;
      cbDocPersonalizadoC.Checked := False;
      cbDocPersonalizadoE.Checked := False;
      cbEmiDocPersonalizadoV.Checked := False;
      cbEmiDocPersonalizadoC.Checked := False;
      cbEmiDocPersonalizadoE.Checked := False;
      cbReceituarioV.Checked := False;
      cbReceituarioC.Checked := False;
      cbReceituarioE.Checked := False;
      cbAtestadosV.Checked := False;
      cbAtestadosC.Checked := False;
      cbAtestadosE.Checked := False;
      cbTermosV.Checked := False;
      cbTermosC.Checked := False;
      cbTermosE.Checked := False;

      //Financeiro
      cbCaixaV.Checked := False;
      cbCaixaA.Checked := False;
      cbCaixaF.Checked := False;
      cbTPV.Checked := False;
      cbTPC.Checked := False;
      cbTPE.Checked := False;
      cbTPB.Checked := False;
      cbTPEstornar.Checked := False;
      cbTPP.Checked := False;
      cbTPD.Checked := False;
      cbTRPV.Checked := False;
      cbTRPC.Checked := False;
      cbTRPE.Checked := False;
      cbTRPB.Checked := False;
      cbTRPEstornar.Checked := False;
      cbTRPP.Checked := False;
      cbTRPD.Checked := False;
      cbTRCV.Checked := False;
      cbTRCC.Checked := False;
      cbTRCE.Checked := False;
      cbTRCB.Checked := False;
      cbTRCEstornar.Checked := False;
      cbTRCP.Checked := False;
      cbTRCD.Checked := False;
      cbCRV.Checked := False;
      cbCREstornar.Checked := False;
      cbCRC.Checked := False;
      cbLancamentoCaixa.Checked := False;
      cbConferenciaLancamentoCaixa.Checked := False;
      cbConferenciaLancamentoBanco.Checked := False;
      cbReforcoCaixa.Checked := False;
      cbSaqueValores.Checked := False;
      cbRelCaixaGeral.Checked := False;
      cbTransfSaldo.Checked := False;
      cbNotificacaoFinanceira.Checked := False;
    End;
end;

procedure TfrmCadastroOperadores.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 0;
  qryOperador.Close;
  qryOperador.Open;
  CarregaOperador(Operador.ID);
end;

procedure TfrmCadastroOperadores.gListaCellClick(Column: TColumn);
begin
  inherited;
  CarregaOperador(qryOperadorID_OPERADORES.AsInteger);
end;

procedure TfrmCadastroOperadores.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  EdtNome.Text := '';
  EdtSenha.Text := '';
  cbTodasFiliais.Checked := False;
  cbSelecionarTodos.Checked := False;
  cbSelecionarTodosClick(Self);
  EdtNome.SetFocus;
end;

end.
