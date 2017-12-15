//
// PlanoParcelamentoTransferenciaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Parcelamento para Transfer\u00C3\u00AAncia de cr\u00C3\u00A9dito para contas banc\u00C3\u00A1rias */
public class PlanoParcelamentoTransferenciaResponse: JSONEncodable {

    /** C\u00C3\u00B3digo de processamento da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var codigoEspecial: Int?
    /** Data de vencimento da primeira parcela. */
    public var vencimentoPrimeiraParcela: String?
    /** Flag indicativa para juros. */
    public var flagJuros: Int?
    /** N\u00C3\u00BAmero de meses para car\u00C3\u00AAncia. */
    public var numeroMesesCarencia: Int?
    /** Lista com os planos de parcelamento. */
    public var parcelas: [ParcelamentoTransferenciaResponse]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["codigoEspecial"] = self.codigoEspecial
        nillableDictionary["vencimentoPrimeiraParcela"] = self.vencimentoPrimeiraParcela
        nillableDictionary["flagJuros"] = self.flagJuros
        nillableDictionary["numeroMesesCarencia"] = self.numeroMesesCarencia
        nillableDictionary["parcelas"] = self.parcelas?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}