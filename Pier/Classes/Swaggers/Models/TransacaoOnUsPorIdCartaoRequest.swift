//
// TransacaoOnUsPorIdCartaoRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto de Requisi\u00C3\u00A7\u00C3\u00A3o de Transa\u00C3\u00A7\u00C3\u00A3o On Us por idCartao */
public class TransacaoOnUsPorIdCartaoRequest: JSONEncodable {

    /** N\u00C3\u00BAmero Sequencial \u00C3\u009Anico que identifica a transa\u00C3\u00A7\u00C3\u00A3o no sistema que a originou. */
    public var nsuOrigem: String?
    /** C\u00C3\u00B3digo de Processamento que identifica o Tipo da Transa\u00C3\u00A7\u00C3\u00A3o. */
    public var codigoProcessamento: String?
    /** Valor da transa\u00C3\u00A7\u00C3\u00A3o com duas casas decimais para os centavos. */
    public var valorTransacao: Double?
    /** N\u00C3\u00BAmero do Estabelecimento (N\u00C3\u00BAmero+DV). */
    public var numeroEstabelecimento: Int?
    /** Apresenta a data e hora local da consulta yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ. Ex: 2000-10-31T01:30:00.000-05:00 */
    public var dataHoraTerminal: String?
    /** Apresenta a identifica\u00C3\u00A7\u00C3\u00A3o do terminal requisitante */
    public var terminalRequisitante: String?
    /** N\u00C3\u00BAmero de Parcelas. */
    public var numeroParcelas: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["nsuOrigem"] = self.nsuOrigem
        nillableDictionary["codigoProcessamento"] = self.codigoProcessamento
        nillableDictionary["valorTransacao"] = self.valorTransacao
        nillableDictionary["numeroEstabelecimento"] = self.numeroEstabelecimento
        nillableDictionary["dataHoraTerminal"] = self.dataHoraTerminal
        nillableDictionary["terminalRequisitante"] = self.terminalRequisitante
        nillableDictionary["numeroParcelas"] = self.numeroParcelas
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
