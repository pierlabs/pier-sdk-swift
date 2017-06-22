//
// PessoaDetalheResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** PessoaDetalheResponse */
public class PessoaDetalheResponse: JSONEncodable {

    /** C\u00C3\u00B3digo identificador da pessoa */
    public var idPessoa: Int?
    /** Apresenta o nome da m\u00C3\u00A3e da pessoa fisica */
    public var nomeMae: String?
    /** Id Estado civil da pessoa fisica */
    public var idEstadoCivil: Int?
    /** Profiss\u00C3\u00A3o da pessoa fisica */
    public var profissao: String?
    /** Id Natureza Ocupa\u00C3\u00A7\u00C3\u00A3o da pessoa fisica */
    public var idNaturezaOcupacao: Int?
    /** Id Nacionalidade da pessoa fisica */
    public var idNacionalidade: Int?
    /** N\u00C3\u00BAmero da ag\u00C3\u00AAncia. */
    public var numeroAgencia: Int?
    /** N\u00C3\u00BAmero da conta corrente. */
    public var numeroContaCorrente: String?
    /** Email da pessoa fisica */
    public var email: String?
    /** Nome que deve ser impresso no cart\u00C3\u00A3o */
    public var nomeEmpresa: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["nomeMae"] = self.nomeMae
        nillableDictionary["idEstadoCivil"] = self.idEstadoCivil
        nillableDictionary["profissao"] = self.profissao
        nillableDictionary["idNaturezaOcupacao"] = self.idNaturezaOcupacao
        nillableDictionary["idNacionalidade"] = self.idNacionalidade
        nillableDictionary["numeroAgencia"] = self.numeroAgencia
        nillableDictionary["numeroContaCorrente"] = self.numeroContaCorrente
        nillableDictionary["email"] = self.email
        nillableDictionary["nomeEmpresa"] = self.nomeEmpresa
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
