//
// Portador.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Portador */
public class Portador: JSONEncodable {

    /** Apresenta a data em que o Portador fora cadastrado, quando possuir esta informa\u00C3\u00A7\u00C3\u00A3o. */
    public var dataCadastroPortador: NSDate?
    /** Apresenta a data em que o Portador fora cancelado, quando possuir esta informa\u00C3\u00A7\u00C3\u00A3o. */
    public var dataCancelamentoPortador: NSDate?
    /** Quanto ativa, indica que o cadastro do Portador est\u00C3\u00A1 ativo, em emissores que realizam este tipo de gest\u00C3\u00A3o. */
    public var flagAtivo: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id). */
    public var idConta: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Parentesco (id) */
    public var idParentesco: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id). */
    public var idPessoa: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id). */
    public var idProduto: Int?
    /** Apresenta o nome a ser impresso no cart\u00C3\u00A3o. */
    public var nomeImpresso: String?
    /** Apresenta o tipo do Portador do cart\u00C3\u00A3o, sendo: (&#39;T&#39;: Titular, &#39;A&#39;: Adicional). */
    public var tipoPortador: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["dataCadastroPortador"] = self.dataCadastroPortador?.encodeToJSON()
        nillableDictionary["dataCancelamentoPortador"] = self.dataCancelamentoPortador?.encodeToJSON()
        nillableDictionary["flagAtivo"] = self.flagAtivo
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idParentesco"] = self.idParentesco
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["nomeImpresso"] = self.nomeImpresso
        nillableDictionary["tipoPortador"] = self.tipoPortador
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
