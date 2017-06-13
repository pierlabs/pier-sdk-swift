//
// TransacaoCorrenteResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o do recurso transacao */
public class TransacaoCorrenteResponse: JSONEncodable {

    public var ultimaParcelaLancada: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da timeline (idTimeline). */
    public var id: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). */
    public var idConta: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo de transacao (id). */
    public var idTipoRegistro: Int?
    /** Representa\u00C3\u00A7\u00C3\u00A3o da ordena\u00C3\u00A7\u00C3\u00A3o da transacao (id). */
    public var ordem: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da transacao (id). */
    public var idTransacao: Int?
    /** Atributo que representa a descri\u00C3\u00A7\u00C3\u00A3o da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var descricao: String?
    /** Atributo que representa o c\u00C3\u00B3digo identificador do status da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var status: Int?
    /** Atributo que representa a descri\u00C3\u00A7\u00C3\u00A3o do status da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var descricaoStatus: String?
    /** Atributo que representa o valor da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var valor: Double?
    /** Atributo que representa o valor em D\u00C3\u00B3lar da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var valorDolar: Double?
    /** Atributo que representa a quantidade de parcelas da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var quantidadeParcelas: Int?
    /** Atributo que representa o valor da parcela da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var valorParcela: Double?
    /** Atributo que representa a data de envio da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var dataEvento: String?
    /** Atributo que representa o estabelecimento da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var estabelecimento: String?
    /** Atributo que identifica se a transa\u00C3\u00A7\u00C3\u00A3o \u00C3\u00A9 um cr\u00C3\u00A9dito ou d\u00C3\u00A9bito. */
    public var flagCredito: Int?
    /** Atributo que representa o tipo de estabelecimento da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var tipoEstabelecimento: String?
    /** Atributo que representa o grupo MCC da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var idGrupoMCC: Int?
    /** Atributo que identifica se o portador solicitou contesta\u00C3\u00A7\u00C3\u00A3o da transa\u00C3\u00A7\u00C3\u00A3o. */
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
        nillableDictionary["dataEvento"] = self.dataEvento
        nillableDictionary["estabelecimento"] = self.estabelecimento
        nillableDictionary["flagCredito"] = self.flagCredito
        nillableDictionary["tipoEstabelecimento"] = self.tipoEstabelecimento
        nillableDictionary["idGrupoMCC"] = self.idGrupoMCC
        nillableDictionary["flagSolicitouContestacao"] = self.flagSolicitouContestacao
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
