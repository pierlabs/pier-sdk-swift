//
// ControleVencimentoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto de Resposta dos Vencimentos */
public class ControleVencimentoResponse: JSONEncodable {

    /**  Indica a data de vencimento das faturas */
    public var dataVencimento: String?
    /**  Indica a data prevista para a realiza\u00C3\u00A7\u00C3\u00A3o do Corte das faturas */
    public var dataPrevistaCorte: String?
    /** Indica a data e a hora que fora realizada a realiza\u00C3\u00A7\u00C3\u00A3o do Corte das faturas */
    public var dataHoraRealizacaoCorte: String?
    /** Indica a data prevista para a realiza\u00C3\u00A7\u00C3\u00A3o do faturamento */
    public var dataPrevistaFaturamento: String?
    /** Indica a data e a hora que fora realizado o faturamento */
    public var dataHoraRealizacaoFaturamento: String?
    /** Indica o dia \u00C3\u00BAtil que ser\u00C3\u00A1 considerado como a data de vencimento */
    public var dataRealVencimento: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["dataVencimento"] = self.dataVencimento
        nillableDictionary["dataPrevistaCorte"] = self.dataPrevistaCorte
        nillableDictionary["dataHoraRealizacaoCorte"] = self.dataHoraRealizacaoCorte
        nillableDictionary["dataPrevistaFaturamento"] = self.dataPrevistaFaturamento
        nillableDictionary["dataHoraRealizacaoFaturamento"] = self.dataHoraRealizacaoFaturamento
        nillableDictionary["dataRealVencimento"] = self.dataRealVencimento
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
