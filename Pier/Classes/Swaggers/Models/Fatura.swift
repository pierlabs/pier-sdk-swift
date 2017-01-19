//
// Fatura.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto Fatura */
public class Fatura: JSONEncodable {

    /** Data de Vencimento da Fatura. */
    public var dataVencimento: NSDate?
    /** Saldo da Fatura Anterior. */
    public var saldoFaturaAnterior: Double?
    /** Saldo total da Multa lan\u00C3\u00A7ada na Fatura atual. */
    public var saldoMulta: Double?
    /** Saldo total das Compras lan\u00C3\u00A7adas na Fatura atual. */
    public var saldoCompras: Double?
    /** Saldo total dos Pagamentos lan\u00C3\u00A7ados na Fatura atual. */
    public var saldoPagamentos: Double?
    /** Saldo total das Tarifas lan\u00C3\u00A7adas na Fatura atual. */
    public var saldoTarifas: Double?
    /** Saldo total dos D\u00C3\u00A9bitos lan\u00C3\u00A7ados na Fatura atual. */
    public var saldoDebitos: Double?
    /** Saldo total dos Cr\u00C3\u00A9dito lan\u00C3\u00A7ados na Fatura atual. */
    public var saldoCreditos: Double?
    /** Salto total devedor da Fatura atual. */
    public var saldoAtualFinal: Double?
    /** Valor m\u00C3\u00ADnimo para Pagamento da Fatura. */
    public var valorMinimoFatura: Double?
    /** Quando ativa, indica que fora emitida uma Fatura. */
    public var flagEmiteFatura: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["dataVencimento"] = self.dataVencimento?.encodeToJSON()
        nillableDictionary["saldoFaturaAnterior"] = self.saldoFaturaAnterior
        nillableDictionary["saldoMulta"] = self.saldoMulta
        nillableDictionary["saldoCompras"] = self.saldoCompras
        nillableDictionary["saldoPagamentos"] = self.saldoPagamentos
        nillableDictionary["saldoTarifas"] = self.saldoTarifas
        nillableDictionary["saldoDebitos"] = self.saldoDebitos
        nillableDictionary["saldoCreditos"] = self.saldoCreditos
        nillableDictionary["saldoAtualFinal"] = self.saldoAtualFinal
        nillableDictionary["valorMinimoFatura"] = self.valorMinimoFatura
        nillableDictionary["flagEmiteFatura"] = self.flagEmiteFatura
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}