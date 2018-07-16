//
// ArquivoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{arquivo_response_description}}} */
public class ArquivoResponse: JSONEncodable {

    /** {{{arquivo_response_id_value}}} */
    public var id: Int?
    /** {{{arquivo_response_id_tipo_arquivo_value}}} */
    public var idTipoArquivo: Int?
    /** {{{arquivo_response_nome_tipo_arquivo_value}}} */
    public var nomeTipoArquivo: String?
    /** {{{arquivo_response_id_status_arquivo_value}}} */
    public var idStatusArquivo: Int?
    /** {{{arquivo_response_nome_status_arquivo_value}}} */
    public var nomeStatusArquivo: String?
    /** {{{arquivo_response_nome_value}}} */
    public var nome: String?
    /** {{{arquivo_response_extensao_value}}} */
    public var extensao: String?
    /** {{{arquivo_response_data_inclusao_value}}} */
    public var dataInclusao: String?
    /** {{{arquivo_response_data_alteracao_value}}} */
    public var dataAlteracao: String?
    /** {{{arquivo_response_detalhes_value}}} */
    public var detalhes: [ArquivoParametroResponse]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idTipoArquivo"] = self.idTipoArquivo
        nillableDictionary["nomeTipoArquivo"] = self.nomeTipoArquivo
        nillableDictionary["idStatusArquivo"] = self.idStatusArquivo
        nillableDictionary["nomeStatusArquivo"] = self.nomeStatusArquivo
        nillableDictionary["nome"] = self.nome
        nillableDictionary["extensao"] = self.extensao
        nillableDictionary["dataInclusao"] = self.dataInclusao
        nillableDictionary["dataAlteracao"] = self.dataAlteracao
        nillableDictionary["detalhes"] = self.detalhes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
