//
// PlanoParcelamentoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o da resposta do recurso de planos de parcelamento */
public class PlanoParcelamentoResponse: JSONEncodable {

    /** Identificador do parcelamento */
    public var id: Int?
    /** Data de fechamento da fatura */
    public var dataFechamentoFatura: String?
    /** Data de vencimento padr\u00C3\u00A3o */
    public var dataVencimentoPadrao: String?
    /** Valor total da fatura */
    public var valorTotalFatura: Double?
    /** Quantidade de parcelas */
    public var quantidadeParcelas: Int?
    /** Valor da parcela */
    public var valorParcela: Double?
    /** Valor de entrada */
    public var valorEntrada: Double?
    /** Taxa de refinanciamento */
    public var taxaRefinanciamento: Double?
    /** Custo efetivo total */
    public var custoEfetivoTotal: Double?
    /** Valor total de refinanciamento */
    public var valorTotalRefinanciamento: Double?
    /** Valor do IOF */
    public var valorIOF: Double?
    /** Valor do TAC */
    public var valorTAC: Double?
    /** Status da ades\u00C3\u00A3o */
    public var statusAdesao: Int?
    /** Data de inclus\u00C3\u00A3o */
    public var dataInclusao: String?
    /** Data de processamento da ades\u00C3\u00A3o */
    public var dataProcessamentoAdesao: String?
    /** Identificador da conta */
    public var idConta: Int?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do tipo de servi\u00C3\u00A7o */
    public var descricaoServicoTipo: String?
    /** Indica se a fatura foi com entrada */
    public var comEntrada: Bool?
    /** Nome da campanha */
    public var nomeCampanha: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["dataFechamentoFatura"] = self.dataFechamentoFatura
        nillableDictionary["dataVencimentoPadrao"] = self.dataVencimentoPadrao
        nillableDictionary["valorTotalFatura"] = self.valorTotalFatura
        nillableDictionary["quantidadeParcelas"] = self.quantidadeParcelas
        nillableDictionary["valorParcela"] = self.valorParcela
        nillableDictionary["valorEntrada"] = self.valorEntrada
        nillableDictionary["taxaRefinanciamento"] = self.taxaRefinanciamento
        nillableDictionary["custoEfetivoTotal"] = self.custoEfetivoTotal
        nillableDictionary["valorTotalRefinanciamento"] = self.valorTotalRefinanciamento
        nillableDictionary["valorIOF"] = self.valorIOF
        nillableDictionary["valorTAC"] = self.valorTAC
        nillableDictionary["statusAdesao"] = self.statusAdesao
        nillableDictionary["dataInclusao"] = self.dataInclusao
        nillableDictionary["dataProcessamentoAdesao"] = self.dataProcessamentoAdesao
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["descricaoServicoTipo"] = self.descricaoServicoTipo
        nillableDictionary["comEntrada"] = self.comEntrada
        nillableDictionary["nomeCampanha"] = self.nomeCampanha
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}