//
// FaturaDetalheResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Detalhes da fatura */
public class FaturaDetalheResponse: JSONEncodable {

    public enum SituacaoProcessamento: String { 
        case Aberta = "ABERTA"
        case Fechada = "FECHADA"
        case Todas = "TODAS"
    }
    
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta. */
    public var idConta: Int?
    /** Situa\u00C3\u00A7\u00C3\u00A3o de Processamento da fatura. */
    public var situacaoProcessamento: SituacaoProcessamento?
    /** Status de pagamento efetuado. */
    public var pagamentoEfetuado: Bool?
    /** Data de vencimento da fatura. */
    public var dataVencimentoFatura: String?
    /** Data de vencimento real da fatura. */
    public var dataVencimentoReal: String?
    /** Data de fechamento da fatura. */
    public var dataFechamento: String?
    /** Valor total da fatura. */
    public var valorTotal: Double?
    /** Valor do pagamento m\u00C3\u00ADnimo. */
    public var valorPagamentoMinimo: Double?
    /** Lista de lan\u00C3\u00A7amentos da fatura. */
    public var lancamentosFaturaResponse: [LancamentoFaturaResponse]?
    /** Valor do saldo anterior. */
    public var saldoAnterior: Double?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["situacaoProcessamento"] = self.situacaoProcessamento?.rawValue
        nillableDictionary["pagamentoEfetuado"] = self.pagamentoEfetuado
        nillableDictionary["dataVencimentoFatura"] = self.dataVencimentoFatura
        nillableDictionary["dataVencimentoReal"] = self.dataVencimentoReal
        nillableDictionary["dataFechamento"] = self.dataFechamento
        nillableDictionary["valorTotal"] = self.valorTotal
        nillableDictionary["valorPagamentoMinimo"] = self.valorPagamentoMinimo
        nillableDictionary["lancamentosFaturaResponse"] = self.lancamentosFaturaResponse?.encodeToJSON()
        nillableDictionary["saldoAnterior"] = self.saldoAnterior
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}