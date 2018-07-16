//
// TaxasRefinanciamentoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{taxas_refinanciamento_response_description}}} */
public class TaxasRefinanciamentoResponse: JSONEncodable {

    /** {{{taxas_refinanciamento_response_id_value}}} */
    public var id: Int?
    /** {{{taxas_refinanciamento_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{taxas_refinanciamento_response_id_produto_value}}} */
    public var idProduto: Int?
    /** {{{taxas_refinanciamento_response_id_plano_conta_value}}} */
    public var idPlanoConta: Int?
    /** {{{taxas_refinanciamento_response_id_plano_pct_value}}} */
    public var idPlanoPct: Int?
    /** {{{taxas_refinanciamento_response_id_plano_credito_taxa_value}}} */
    public var idPlanoCreditoTaxa: Int?
    /** {{{taxas_refinanciamento_response_data_entrada_value}}} */
    public var dataEntrada: String?
    /** {{{taxas_refinanciamento_response_vencimento_value}}} */
    public var vencimento: String?
    /** {{{taxas_refinanciamento_response_recuperacao_encargos_financeiros_value}}} */
    public var recuperacaoEncargosFinanceiros: Double?
    /** {{{taxas_refinanciamento_response_comissao_garantia_value}}} */
    public var comissaoGarantia: Double?
    /** {{{taxas_refinanciamento_response_agenciamento_value}}} */
    public var agenciamento: Double?
    /** {{{taxas_refinanciamento_response_taxa_maxima_proximo_periodo_value}}} */
    public var taxaMaximaProximoPeriodo: Double?
    /** {{{taxas_refinanciamento_response_taxa_encargos_financiamento_value}}} */
    public var taxaEncargosFinanciamento: Double?
    /** {{{taxas_refinanciamento_response_taxa_maxima_saque_value}}} */
    public var taxaMaximaSaque: Double?
    /** {{{taxas_refinanciamento_response_taxa_saque_value}}} */
    public var taxaSaque: Double?
    /** {{{taxas_refinanciamento_response_taxa_maxima_compra_juros_value}}} */
    public var taxaMaximaCompraJuros: Double?
    /** {{{taxas_refinanciamento_response_taxa_compra_juros_value}}} */
    public var taxaCompraJuros: Double?
    /** {{{taxas_refinanciamento_response_taxa_permanencia_value}}} */
    public var taxaPermanencia: Double?
    /** {{{taxas_refinanciamento_response_taxa_refinanciamento_value}}} */
    public var taxaRefinanciamento: Double?
    /** {{{taxas_refinanciamento_response_taxa_recuperacao_refinanciamento_value}}} */
    public var taxaRecuperacaoRefinanciamento: Double?
    /** {{{taxas_refinanciamento_response_taxa_perc_calc_pagamento_minimo_value}}} */
    public var taxaPercCalcPagamentoMinimo: Double?
    /** {{{taxas_refinanciamento_response_plano_taxa_default_value}}} */
    public var planoTaxaDefault: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["idPlanoConta"] = self.idPlanoConta
        nillableDictionary["idPlanoPct"] = self.idPlanoPct
        nillableDictionary["idPlanoCreditoTaxa"] = self.idPlanoCreditoTaxa
        nillableDictionary["dataEntrada"] = self.dataEntrada
        nillableDictionary["vencimento"] = self.vencimento
        nillableDictionary["recuperacaoEncargosFinanceiros"] = self.recuperacaoEncargosFinanceiros
        nillableDictionary["comissaoGarantia"] = self.comissaoGarantia
        nillableDictionary["agenciamento"] = self.agenciamento
        nillableDictionary["taxaMaximaProximoPeriodo"] = self.taxaMaximaProximoPeriodo
        nillableDictionary["taxaEncargosFinanciamento"] = self.taxaEncargosFinanciamento
        nillableDictionary["taxaMaximaSaque"] = self.taxaMaximaSaque
        nillableDictionary["taxaSaque"] = self.taxaSaque
        nillableDictionary["taxaMaximaCompraJuros"] = self.taxaMaximaCompraJuros
        nillableDictionary["taxaCompraJuros"] = self.taxaCompraJuros
        nillableDictionary["taxaPermanencia"] = self.taxaPermanencia
        nillableDictionary["taxaRefinanciamento"] = self.taxaRefinanciamento
        nillableDictionary["taxaRecuperacaoRefinanciamento"] = self.taxaRecuperacaoRefinanciamento
        nillableDictionary["taxaPercCalcPagamentoMinimo"] = self.taxaPercCalcPagamentoMinimo
        nillableDictionary["planoTaxaDefault"] = self.planoTaxaDefault
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
