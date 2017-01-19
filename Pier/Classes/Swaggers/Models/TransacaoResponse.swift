//
// TransacaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o do recurso transacao */
public class TransacaoResponse: JSONEncodable {

    public var ultimaParcelaLancada: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da transacao (id). */
    public var id: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). */
    public var idConta: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo de transacao (id). */
    public var idTipoRegistro: Int?
    /** Representa\u00C3\u00A7\u00C3\u00A3o da ordena\u00C3\u00A7\u00C3\u00A3o da transacao (id). */
    public var ordem: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da transacao (id). */
    public var idTransacao: Int?
    public var descricao: String?
    public var status: Int?
    public var descricaoStatus: String?
    public var valor: Double?
    public var valorDolar: Double?
    public var quantidadeParcelas: Int?
    public var valorParcela: Double?
    public var dataEvento: NSDate?
    public var estabelecimento: String?
    public var flagCredito: Int?
    public var tipoEstabelecimento: String?
    public var latitude: String?
    public var longetude: String?
    public var idGrupoMCC: Int?
    public var flagSolicitouContestacao: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["ultimaParcelaLancada"] = self.ultimaParcelaLancada
        nillableDictionary["id"] = self.id
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idTipoRegistro"] = self.idTipoRegistro
        nillableDictionary["ordem"] = self.ordem
        nillableDictionary["idTransacao"] = self.idTransacao
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["status"] = self.status
        nillableDictionary["descricaoStatus"] = self.descricaoStatus
        nillableDictionary["valor"] = self.valor
        nillableDictionary["valorDolar"] = self.valorDolar
        nillableDictionary["quantidadeParcelas"] = self.quantidadeParcelas
        nillableDictionary["valorParcela"] = self.valorParcela
        nillableDictionary["dataEvento"] = self.dataEvento?.encodeToJSON()
        nillableDictionary["estabelecimento"] = self.estabelecimento
        nillableDictionary["flagCredito"] = self.flagCredito
        nillableDictionary["tipoEstabelecimento"] = self.tipoEstabelecimento
        nillableDictionary["latitude"] = self.latitude
        nillableDictionary["longetude"] = self.longetude
        nillableDictionary["idGrupoMCC"] = self.idGrupoMCC
        nillableDictionary["flagSolicitouContestacao"] = self.flagSolicitouContestacao
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
