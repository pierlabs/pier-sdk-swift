//
// DadosCartaoImpressaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{dados_cartao_impressao_response_description}}} */
public class DadosCartaoImpressaoResponse: JSONEncodable {

    /** {{{dados_cartao_impressao_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{dados_cartao_impressao_response_id_pessoa_value}}} */
    public var idPessoa: Int?
    /** {{{dados_cartao_impressao_response_id_cartao_value}}} */
    public var idCartao: Int?
    /** {{{dados_cartao_impressao_response_id_bandeira_value}}} */
    public var idBandeira: Int?
    /** {{{dados_cartao_impressao_response_id_tipo_cartao_value}}} */
    public var idTipoCartao: Int?
    /** {{{dados_cartao_impressao_response_numero_cartao_value}}} */
    public var numeroCartao: String?
    /** {{{dados_cartao_impressao_response_nome_plastico_value}}} */
    public var nomePlastico: String?
    /** {{{dados_cartao_impressao_response_cvv2_value}}} */
    public var cvv2: String?
    /** {{{dados_cartao_impressao_response_data_geracao_value}}} */
    public var dataGeracao: String?
    /** {{{dados_cartao_impressao_response_data_validade_value}}} */
    public var dataValidade: String?
    /** {{{dados_cartao_impressao_response_cpf_value}}} */
    public var cpf: String?
    /** {{{dados_cartao_impressao_response_tipo_portador_value}}} */
    public var tipoPortador: String?
    /** {{{dados_cartao_impressao_response_trilha1_value}}} */
    public var trilha1: String?
    /** {{{dados_cartao_impressao_response_trilha2_value}}} */
    public var trilha2: String?
    /** {{{dados_cartao_impressao_response_trilha_c_v_v1_value}}} */
    public var trilhaCVV1: String?
    /** {{{dados_cartao_impressao_response_trilha_c_v_v2_value}}} */
    public var trilhaCVV2: String?
    /** {{{dados_cartao_impressao_response_flag_virtual_value}}} */
    public var flagVirtual: Int?
    /** {{{dados_cartao_impressao_response_nome_bandeira_value}}} */
    public var nomeBandeira: String?
    /** {{{dados_cartao_impressao_response_flag_titular_value}}} */
    public var flagTitular: Int?
    /** {{{dados_cartao_impressao_response_sequencial_cartao_value}}} */
    public var sequencialCartao: Int?
    /** {{{dados_cartao_impressao_response_id_status_value}}} */
    public var idStatus: Int?
    /** {{{dados_cartao_impressao_response_descricao_status_cartao_value}}} */
    public var descricaoStatusCartao: String?
    /** {{{dados_cartao_impressao_response_data_status_value}}} */
    public var dataStatus: String?
    /** {{{dados_cartao_impressao_response_id_estagio_value}}} */
    public var idEstagio: Int?
    /** {{{dados_cartao_impressao_response_descricao_estagio_value}}} */
    public var descricaoEstagio: String?
    /** {{{dados_cartao_impressao_response_data_estagio_value}}} */
    public var dataEstagio: String?
    /** {{{dados_cartao_impressao_response_numero_bin_value}}} */
    public var numeroBin: String?
    /** {{{dados_cartao_impressao_response_id_produto_value}}} */
    public var idProduto: Int?
    /** {{{dados_cartao_impressao_response_descricao_produto_value}}} */
    public var descricaoProduto: String?
    /** {{{dados_cartao_impressao_response_id_status_conta_value}}} */
    public var idStatusConta: Int?
    /** {{{dados_cartao_impressao_response_descricao_status_conta_value}}} */
    public var descricaoStatusConta: Int?
    /** {{{dados_cartao_impressao_response_data_embossing_value}}} */
    public var dataEmbossing: String?
    /** {{{dados_cartao_impressao_response_codigo_desbloqueio_value}}} */
    public var codigoDesbloqueio: String?
    /** {{{dados_cartao_impressao_response_nome_pessoa_value}}} */
    public var nomePessoa: String?
    /** {{{dados_cartao_impressao_response_tipo_pessoa_value}}} */
    public var tipoPessoa: String?
    /** {{{dados_cartao_impressao_response_data_nascimento_value}}} */
    public var dataNascimento: String?
    /** {{{dados_cartao_impressao_response_id_endereco_value}}} */
    public var idEndereco: Int?
    /** {{{dados_cartao_impressao_response_id_tipo_endereco_value}}} */
    public var idTipoEndereco: Int?
    /** {{{dados_cartao_impressao_response_descricao_tipo_endereco_value}}} */
    public var descricaoTipoEndereco: String?
    /** {{{dados_cartao_impressao_response_cep_value}}} */
    public var cep: String?
    /** {{{dados_cartao_impressao_response_logradouro_value}}} */
    public var logradouro: String?
    /** {{{dados_cartao_impressao_response_numero_endereco_value}}} */
    public var numeroEndereco: String?
    /** {{{dados_cartao_impressao_response_complemento_endereco_value}}} */
    public var complementoEndereco: String?
    /** {{{dados_cartao_impressao_response_bairro_value}}} */
    public var bairro: String?
    /** {{{dados_cartao_impressao_response_cidade_value}}} */
    public var cidade: String?
    /** {{{dados_cartao_impressao_response_uf_value}}} */
    public var uf: String?
    /** {{{dados_cartao_impressao_response_pais_value}}} */
    public var pais: String?
    /** {{{dados_cartao_impressao_response_senha_criptografada_value}}} */
    public var senhaCriptografada: String?
    /** {{{dados_cartao_impressao_response_icvv_value}}} */
    public var icvv: String?
    /** {{{dados_cartao_impressao_response_id_status_impressao_value}}} */
    public var idStatusImpressao: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["idBandeira"] = self.idBandeira
        nillableDictionary["idTipoCartao"] = self.idTipoCartao
        nillableDictionary["numeroCartao"] = self.numeroCartao
        nillableDictionary["nomePlastico"] = self.nomePlastico
        nillableDictionary["cvv2"] = self.cvv2
        nillableDictionary["dataGeracao"] = self.dataGeracao
        nillableDictionary["dataValidade"] = self.dataValidade
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["tipoPortador"] = self.tipoPortador
        nillableDictionary["trilha1"] = self.trilha1
        nillableDictionary["trilha2"] = self.trilha2
        nillableDictionary["trilhaCVV1"] = self.trilhaCVV1
        nillableDictionary["trilhaCVV2"] = self.trilhaCVV2
        nillableDictionary["flagVirtual"] = self.flagVirtual
        nillableDictionary["nomeBandeira"] = self.nomeBandeira
        nillableDictionary["flagTitular"] = self.flagTitular
        nillableDictionary["sequencialCartao"] = self.sequencialCartao
        nillableDictionary["idStatus"] = self.idStatus
        nillableDictionary["descricaoStatusCartao"] = self.descricaoStatusCartao
        nillableDictionary["dataStatus"] = self.dataStatus
        nillableDictionary["idEstagio"] = self.idEstagio
        nillableDictionary["descricaoEstagio"] = self.descricaoEstagio
        nillableDictionary["dataEstagio"] = self.dataEstagio
        nillableDictionary["numeroBin"] = self.numeroBin
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["descricaoProduto"] = self.descricaoProduto
        nillableDictionary["idStatusConta"] = self.idStatusConta
        nillableDictionary["descricaoStatusConta"] = self.descricaoStatusConta
        nillableDictionary["dataEmbossing"] = self.dataEmbossing
        nillableDictionary["codigoDesbloqueio"] = self.codigoDesbloqueio
        nillableDictionary["nomePessoa"] = self.nomePessoa
        nillableDictionary["tipoPessoa"] = self.tipoPessoa
        nillableDictionary["dataNascimento"] = self.dataNascimento
        nillableDictionary["idEndereco"] = self.idEndereco
        nillableDictionary["idTipoEndereco"] = self.idTipoEndereco
        nillableDictionary["descricaoTipoEndereco"] = self.descricaoTipoEndereco
        nillableDictionary["cep"] = self.cep
        nillableDictionary["logradouro"] = self.logradouro
        nillableDictionary["numeroEndereco"] = self.numeroEndereco
        nillableDictionary["complementoEndereco"] = self.complementoEndereco
        nillableDictionary["bairro"] = self.bairro
        nillableDictionary["cidade"] = self.cidade
        nillableDictionary["uf"] = self.uf
        nillableDictionary["pais"] = self.pais
        nillableDictionary["senhaCriptografada"] = self.senhaCriptografada
        nillableDictionary["icvv"] = self.icvv
        nillableDictionary["idStatusImpressao"] = self.idStatusImpressao
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
