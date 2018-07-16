//
// PessoaFisicaAprovadaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{pessoa_fisica_aprovada_response_description}}} */
public class PessoaFisicaAprovadaResponse: JSONEncodable {

    /** {{{pessoa_fisica_aprovada_response_id_value}}} */
    public var id: Int?
    /** {{{pessoa_fisica_aprovada_response_nome_value}}} */
    public var nome: String?
    /** {{{pessoa_fisica_aprovada_response_nome_mae_value}}} */
    public var nomeMae: String?
    /** {{{pessoa_fisica_aprovada_response_data_nascimento_value}}} */
    public var dataNascimento: String?
    /** {{{pessoa_fisica_aprovada_response_sexo_value}}} */
    public var sexo: String?
    /** {{{pessoa_fisica_aprovada_response_cpf_value}}} */
    public var cpf: String?
    /** {{{pessoa_fisica_aprovada_response_numero_identidade_value}}} */
    public var numeroIdentidade: String?
    /** {{{pessoa_fisica_aprovada_response_orgao_expedidor_identidade_value}}} */
    public var orgaoExpedidorIdentidade: String?
    /** {{{pessoa_fisica_aprovada_response_unidade_federativa_identidade_value}}} */
    public var unidadeFederativaIdentidade: String?
    /** {{{pessoa_fisica_aprovada_response_data_emissao_identidade_value}}} */
    public var dataEmissaoIdentidade: String?
    /** {{{pessoa_fisica_aprovada_response_id_estado_civil_value}}} */
    public var idEstadoCivil: Int?
    /** {{{pessoa_fisica_aprovada_response_id_profissao_value}}} */
    public var idProfissao: String?
    /** {{{pessoa_fisica_aprovada_response_id_natureza_ocupacao_value}}} */
    public var idNaturezaOcupacao: Int?
    /** {{{pessoa_fisica_aprovada_response_id_nacionalidade_value}}} */
    public var idNacionalidade: Int?
    /** {{{pessoa_fisica_aprovada_response_id_origem_comercial_value}}} */
    public var idOrigemComercial: Int?
    /** {{{pessoa_fisica_aprovada_response_id_produto_value}}} */
    public var idProduto: Int?
    /** {{{pessoa_fisica_aprovada_response_numero_agencia_value}}} */
    public var numeroAgencia: Int?
    /** {{{pessoa_fisica_aprovada_response_numero_conta_corrente_value}}} */
    public var numeroContaCorrente: String?
    /** {{{pessoa_fisica_aprovada_response_email_value}}} */
    public var email: String?
    /** {{{pessoa_fisica_aprovada_response_dia_vencimento_value}}} */
    public var diaVencimento: Int?
    /** {{{pessoa_fisica_aprovada_response_nome_impresso_value}}} */
    public var nomeImpresso: String?
    /** {{{pessoa_fisica_aprovada_response_nome_empresa_value}}} */
    public var nomeEmpresa: String?
    /** {{{pessoa_fisica_aprovada_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{pessoa_fisica_aprovada_response_id_proposta_value}}} */
    public var idProposta: Int?
    /** {{{pessoa_fisica_aprovada_response_canal_entrada_value}}} */
    public var canalEntrada: String?
    /** {{{pessoa_fisica_aprovada_response_valor_pontuacao_value}}} */
    public var valorPontuacao: Int?
    /** {{{pessoa_fisica_aprovada_response_telefones_value}}} */
    public var telefones: [TelefonePessoaAprovadaResponse]?
    /** {{{pessoa_fisica_aprovada_response_enderecos_value}}} */
    public var enderecos: [EnderecoAprovadoResponse]?
    /** {{{pessoa_fisica_aprovada_response_limite_global_value}}} */
    public var limiteGlobal: Double?
    /** {{{pessoa_fisica_aprovada_response_limite_maximo_value}}} */
    public var limiteMaximo: Double?
    /** {{{pessoa_fisica_aprovada_response_limite_parcelas_value}}} */
    public var limiteParcelas: Double?
    /** {{{pessoa_fisica_aprovada_response_limite_consignado_value}}} */
    public var limiteConsignado: Double?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["nome"] = self.nome
        nillableDictionary["nomeMae"] = self.nomeMae
        nillableDictionary["dataNascimento"] = self.dataNascimento
        nillableDictionary["sexo"] = self.sexo
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["numeroIdentidade"] = self.numeroIdentidade
        nillableDictionary["orgaoExpedidorIdentidade"] = self.orgaoExpedidorIdentidade
        nillableDictionary["unidadeFederativaIdentidade"] = self.unidadeFederativaIdentidade
        nillableDictionary["dataEmissaoIdentidade"] = self.dataEmissaoIdentidade
        nillableDictionary["idEstadoCivil"] = self.idEstadoCivil
        nillableDictionary["idProfissao"] = self.idProfissao
        nillableDictionary["idNaturezaOcupacao"] = self.idNaturezaOcupacao
        nillableDictionary["idNacionalidade"] = self.idNacionalidade
        nillableDictionary["idOrigemComercial"] = self.idOrigemComercial
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["numeroAgencia"] = self.numeroAgencia
        nillableDictionary["numeroContaCorrente"] = self.numeroContaCorrente
        nillableDictionary["email"] = self.email
        nillableDictionary["diaVencimento"] = self.diaVencimento
        nillableDictionary["nomeImpresso"] = self.nomeImpresso
        nillableDictionary["nomeEmpresa"] = self.nomeEmpresa
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idProposta"] = self.idProposta
        nillableDictionary["canalEntrada"] = self.canalEntrada
        nillableDictionary["valorPontuacao"] = self.valorPontuacao
        nillableDictionary["telefones"] = self.telefones?.encodeToJSON()
        nillableDictionary["enderecos"] = self.enderecos?.encodeToJSON()
        nillableDictionary["limiteGlobal"] = self.limiteGlobal
        nillableDictionary["limiteMaximo"] = self.limiteMaximo
        nillableDictionary["limiteParcelas"] = self.limiteParcelas
        nillableDictionary["limiteConsignado"] = self.limiteConsignado
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
