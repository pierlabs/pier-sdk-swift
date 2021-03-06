//
// OperacaoCredorResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{operacao_credor_response_description}}} */
public class OperacaoCredorResponse: JSONEncodable {

    public enum Periodicidade: String { 
        case Diario = "DIARIO"
        case Semanal = "SEMANAL"
        case Mensal = "MENSAL"
        case Decendial = "DECENDIAL"
        case Quinzenal = "QUINZENAL"
    }
    
    public enum FatorMultiplicador: String { 
        case ForaAgenda = "FORA_AGENDA"
        case Agenda = "AGENDA"
        case AgendaNegativa = "AGENDA_NEGATIVA"
    }
    
    /** {{{operacao_credor_response_id_value}}} */
    public var id: Int?
    /** {{{operacao_credor_response_id_operacao_value}}} */
    public var idOperacao: Int?
    /** {{{operacao_credor_response_id_grupo_economico_value}}} */
    public var idGrupoEconomico: Int?
    /** {{{operacao_credor_response_id_produto_value}}} */
    public var idProduto: Int?
    /** {{{operacao_credor_response_remuneracao_percentual_value}}} */
    public var remuneracaoPercentual: Double?
    /** {{{operacao_credor_response_remuneracao_fixa_value}}} */
    public var remuneracaoFixa: Double?
    /** {{{operacao_credor_response_periodicidade_value}}} */
    public var periodicidade: Periodicidade?
    /** {{{operacao_credor_response_vencimento_primeira_parcela_value}}} */
    public var vencimentoPrimeiraParcela: Int?
    /** {{{operacao_credor_response_dias_afastamento_value}}} */
    public var diasAfastamento: Int?
    /** {{{operacao_credor_response_fator_multiplicador_value}}} */
    public var fatorMultiplicador: FatorMultiplicador?
    /** {{{operacao_credor_response_flag_taxa_fixada_value}}} */
    public var flagTaxaFixada: Bool?
    /** {{{operacao_credor_response_plano_minimo_value}}} */
    public var planoMinimo: Int?
    /** {{{operacao_credor_response_plano_maximo_value}}} */
    public var planoMaximo: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idOperacao"] = self.idOperacao
        nillableDictionary["idGrupoEconomico"] = self.idGrupoEconomico
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["remuneracaoPercentual"] = self.remuneracaoPercentual
        nillableDictionary["remuneracaoFixa"] = self.remuneracaoFixa
        nillableDictionary["periodicidade"] = self.periodicidade?.rawValue
        nillableDictionary["vencimentoPrimeiraParcela"] = self.vencimentoPrimeiraParcela
        nillableDictionary["diasAfastamento"] = self.diasAfastamento
        nillableDictionary["fatorMultiplicador"] = self.fatorMultiplicador?.rawValue
        nillableDictionary["flagTaxaFixada"] = self.flagTaxaFixada
        nillableDictionary["planoMinimo"] = self.planoMinimo
        nillableDictionary["planoMaximo"] = self.planoMaximo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
