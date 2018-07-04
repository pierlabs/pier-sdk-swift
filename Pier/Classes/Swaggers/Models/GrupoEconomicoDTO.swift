//
// GrupoEconomicoDTO.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{grupo_economico_d_t_o_description}}} */
public class GrupoEconomicoDTO: JSONEncodable {

    public enum Periodicidade: String { 
        case Diario = "DIARIO"
        case Semanal = "SEMANAL"
        case Mensal = "MENSAL"
        case Decendial = "DECENDIAL"
        case Quinzenal = "QUINZENAL"
    }
    
    public enum PagamentoSemanal: String { 
        case Segunda = "SEGUNDA"
        case Terca = "TERCA"
        case Quarta = "QUARTA"
        case Quinta = "QUINTA"
        case Sexta = "SEXTA"
        case Sabado = "SABADO"
        case Domingo = "DOMINGO"
    }
    
    public enum RecebeRAV: String { 
        case NaoTemPermissaoRav = "NAO_TEM_PERMISSAO_RAV"
        case CreditoRav = "CREDITO_RAV"
        case DebitoRav = "DEBITO_RAV"
    }
    
    /** {{{grupo_economico_d_t_o_razao_social_value}}} */
    public var razaoSocial: String?
    /** {{{grupo_economico_d_t_o_nome_credor_value}}} */
    public var nomeCredor: String?
    /** {{{grupo_economico_d_t_o_numero_receita_federal_value}}} */
    public var numeroReceitaFederal: String?
    /** {{{grupo_economico_d_t_o_inscricao_estadual_value}}} */
    public var inscricaoEstadual: String?
    /** {{{grupo_economico_d_t_o_contato_value}}} */
    public var contato: String?
    /** {{{grupo_economico_d_t_o_banco_value}}} */
    public var banco: Int?
    /** {{{grupo_economico_d_t_o_agencia_value}}} */
    public var agencia: Int?
    /** {{{grupo_economico_d_t_o_digito_agencia_value}}} */
    public var digitoAgencia: String?
    /** {{{grupo_economico_d_t_o_conta_corrente_value}}} */
    public var contaCorrente: String?
    /** {{{grupo_economico_d_t_o_digito_conta_corrente_value}}} */
    public var digitoContaCorrente: String?
    /** {{{grupo_economico_d_t_o_periodicidade_value}}} */
    public var periodicidade: Periodicidade?
    /** {{{grupo_economico_d_t_o_pagamento_semanal_value}}} */
    public var pagamentoSemanal: PagamentoSemanal?
    /** {{{grupo_economico_d_t_o_pagamento_mensal_value}}} */
    public var pagamentoMensal: Int?
    /** {{{grupo_economico_d_t_o_pagamento_decendial_primeiro_value}}} */
    public var pagamentoDecendialPrimeiro: Int?
    /** {{{grupo_economico_d_t_o_pagamento_decendial_segundo_value}}} */
    public var pagamentoDecendialSegundo: Int?
    /** {{{grupo_economico_d_t_o_pagamento_decendial_terceiro_value}}} */
    public var pagamentoDecendialTerceiro: Int?
    /** {{{grupo_economico_d_t_o_pagamento_quinzenal_primeiro_value}}} */
    public var pagamentoQuinzenalPrimeiro: Int?
    /** {{{grupo_economico_d_t_o_pagamento_quinzenal_segundo_value}}} */
    public var pagamentoQuinzenalSegundo: Int?
    /** {{{grupo_economico_d_t_o_id_credor_r_a_v_value}}} */
    public var idCredorRAV: Int?
    /** {{{grupo_economico_d_t_o_percentual_r_a_v_value}}} */
    public var percentualRAV: Double?
    /** {{{grupo_economico_d_t_o_recebe_r_a_v_value}}} */
    public var recebeRAV: RecebeRAV?
    /** {{{grupo_economico_d_t_o_percentual_multiplica_value}}} */
    public var percentualMultiplica: Double?
    /** {{{grupo_economico_d_t_o_taxa_adm_value}}} */
    public var taxaAdm: Double?
    /** {{{grupo_economico_d_t_o_taxa_banco_value}}} */
    public var taxaBanco: Double?
    /** {{{grupo_economico_d_t_o_limite_r_a_v_value}}} */
    public var limiteRAV: Double?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["razaoSocial"] = self.razaoSocial
        nillableDictionary["nomeCredor"] = self.nomeCredor
        nillableDictionary["numeroReceitaFederal"] = self.numeroReceitaFederal
        nillableDictionary["inscricaoEstadual"] = self.inscricaoEstadual
        nillableDictionary["contato"] = self.contato
        nillableDictionary["banco"] = self.banco
        nillableDictionary["agencia"] = self.agencia
        nillableDictionary["digitoAgencia"] = self.digitoAgencia
        nillableDictionary["contaCorrente"] = self.contaCorrente
        nillableDictionary["digitoContaCorrente"] = self.digitoContaCorrente
        nillableDictionary["periodicidade"] = self.periodicidade?.rawValue
        nillableDictionary["pagamentoSemanal"] = self.pagamentoSemanal?.rawValue
        nillableDictionary["pagamentoMensal"] = self.pagamentoMensal
        nillableDictionary["pagamentoDecendialPrimeiro"] = self.pagamentoDecendialPrimeiro
        nillableDictionary["pagamentoDecendialSegundo"] = self.pagamentoDecendialSegundo
        nillableDictionary["pagamentoDecendialTerceiro"] = self.pagamentoDecendialTerceiro
        nillableDictionary["pagamentoQuinzenalPrimeiro"] = self.pagamentoQuinzenalPrimeiro
        nillableDictionary["pagamentoQuinzenalSegundo"] = self.pagamentoQuinzenalSegundo
        nillableDictionary["idCredorRAV"] = self.idCredorRAV
        nillableDictionary["percentualRAV"] = self.percentualRAV
        nillableDictionary["recebeRAV"] = self.recebeRAV?.rawValue
        nillableDictionary["percentualMultiplica"] = self.percentualMultiplica
        nillableDictionary["taxaAdm"] = self.taxaAdm
        nillableDictionary["taxaBanco"] = self.taxaBanco
        nillableDictionary["limiteRAV"] = self.limiteRAV
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}