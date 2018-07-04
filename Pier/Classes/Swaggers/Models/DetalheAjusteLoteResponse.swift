//
// DetalheAjusteLoteResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{detalhe_ajuste_lote_response_description}}} */
public class DetalheAjusteLoteResponse: JSONEncodable {

    /** {{{detalhe_ajuste_lote_response_id_value}}} */
    public var id: Int?
    /** {{{detalhe_ajuste_lote_response_arquivoId_value}}} */
    public var arquivoId: Int?
    /** {{{detalhe_ajuste_lote_response_idTipoAjuste_value}}} */
    public var tipoAjusteDescricao: String?
    /** {{{detalhe_ajuste_lote_response_idConta_value}}} */
    public var idConta: Int?
    /** {{{detalhe_ajuste_lote_response_Status_value}}} */
    public var status: String?
    /** {{{detalhe_ajuste_lote_response_dataTransacao_value}}} */
    public var dataTransacao: NSDate?
    /** {{{detalhe_ajuste_lote_response_valorTransacao_value}}} */
    public var valorTotalTransacao: String?
    /** {{{detalhe_ajuste_lote_response_tipoRegistro_value}}} */
    public var tipoOperacao: String?
    /** {{{detalhe_ajuste_lote_response_dataProcessamento_value}}} */
    public var dataProcessamento: NSDate?
    /** {{{detalhe_ajuste_lote_response_numeroLinha_value}}} */
    public var numeroLinha: Int?
    /** {{{detalhe_ajuste_lote_response_descricaoStatus_value}}} */
    public var descricaoStatus: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["arquivoId"] = self.arquivoId
        nillableDictionary["tipoAjusteDescricao"] = self.tipoAjusteDescricao
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["status"] = self.status
        nillableDictionary["dataTransacao"] = self.dataTransacao?.encodeToJSON()
        nillableDictionary["valorTotalTransacao"] = self.valorTotalTransacao
        nillableDictionary["tipoOperacao"] = self.tipoOperacao
        nillableDictionary["dataProcessamento"] = self.dataProcessamento?.encodeToJSON()
        nillableDictionary["numeroLinha"] = self.numeroLinha
        nillableDictionary["descricaoStatus"] = self.descricaoStatus
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}