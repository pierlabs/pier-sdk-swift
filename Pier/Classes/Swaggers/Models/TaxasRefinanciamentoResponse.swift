//
// TaxasRefinanciamentoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto de resposta para a valida\u00C3\u00A7\u00C3\u00A3o das Taxas de Refinanciamento */
public class TaxasRefinanciamentoResponse: JSONEncodable {

    /** ID das taxas */
    public var id: Int?
    /** ID da conta */
    public var idConta: Int?
    /** ID do produto */
    public var idProduto: Int?
    /** ID do plano de contas */
    public var idPlanoConta: Int?
    /** ID do plano PCT */
    public var idPlanoPct: Int?
    /** ID do plano credito taxa */
    public var idPlanoCreditoTaxa: Int?
    /** Data de entrada */
    public var dataEntrada: String?
    /** Vencimento das taxas */
    public var vencimento: String?
    /** Recupera\u00C3\u00A7\u00C3\u00A3o de encargos financeiro */
    public var recuperacaoEncargosFinanceiros: Double?
    /** Descri\u00C3\u00A7\u00C3\u00A3o da comiss\u00C3\u00A3o de garantia */
    public var comissaoGarantia: Double?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do agenciamento */
    public var agenciamento: Double?
    /** Taxa m\u00C3\u00A1xima do proximo per\u00C3\u00ADodo */
    public var taxaMaximaProximoPeriodo: Double?
    /** Taxa de encargos do financiamento */
    public var taxaEncargosFinanciamento: Double?
    /** Taxa m\u00C3\u00A1xima de saque */
    public var taxaMaximaSaque: Double?
    /** Taxa de saque */
    public var taxaSaque: Double?
    /** Taxa m\u00C3\u00A1xima de compras juros */
    public var taxaMaximaCompraJuros: Double?
    /** Taxa de juros compra */
    public var taxaCompraJuros: Double?
    /** Taxa de permanencia */
    public var taxaPermanencia: Double?
    /** Taxa de permanencia */
    public var taxaRefinanciamento: Double?
    /** Taxa de permanencia */
    public var taxaRecuperacaoRefinanciamento: Double?
    /** Taxa Percelamento pagamento minimo */
    public var taxaPercCalcPagamentoMinimo: Double?
    /** Plano de taxa padr\u00C3\u00A3o */
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
