//
// ConsultarSaldoLimitesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ConsultarSaldoLimitesResponse: JSONEncodable {

    public var codigoRetorno: Int?
    public var dataVencimento: String?
    public var descricaoRetorno: String?
    public var disponibCompraNac: Double?
    public var disponibGlobalCredito: Double?
    public var disponibParceladoNac: Double?
    public var disponibParcelasNac: Double?
    public var disponibSaqueNacGlobal: Double?
    public var limiteCompraNac: Double?
    public var limiteGlobalCredito: Double?
    public var limiteParceladoNac: Double?
    public var limiteParcelasNac: Double?
    public var limiteSaqueNacGlobal: Double?
    public var saldoAtualFinal: Double?
    public var saldoDevedor: Double?
    public var saldoFuturo: Double?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["codigoRetorno"] = self.codigoRetorno
        nillableDictionary["dataVencimento"] = self.dataVencimento
        nillableDictionary["descricaoRetorno"] = self.descricaoRetorno
        nillableDictionary["disponibCompraNac"] = self.disponibCompraNac
        nillableDictionary["disponibGlobalCredito"] = self.disponibGlobalCredito
        nillableDictionary["disponibParceladoNac"] = self.disponibParceladoNac
        nillableDictionary["disponibParcelasNac"] = self.disponibParcelasNac
        nillableDictionary["disponibSaqueNacGlobal"] = self.disponibSaqueNacGlobal
        nillableDictionary["limiteCompraNac"] = self.limiteCompraNac
        nillableDictionary["limiteGlobalCredito"] = self.limiteGlobalCredito
        nillableDictionary["limiteParceladoNac"] = self.limiteParceladoNac
        nillableDictionary["limiteParcelasNac"] = self.limiteParcelasNac
        nillableDictionary["limiteSaqueNacGlobal"] = self.limiteSaqueNacGlobal
        nillableDictionary["saldoAtualFinal"] = self.saldoAtualFinal
        nillableDictionary["saldoDevedor"] = self.saldoDevedor
        nillableDictionary["saldoFuturo"] = self.saldoFuturo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}