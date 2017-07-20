//
// PortadorResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Portador */
public class PortadorResponse: JSONEncodable {

    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id). */
    public var idConta: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id). */
    public var idProduto: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id). */
    public var idPessoa: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Parentesco (id) */
    public var idParentesco: Int?
    /** Apresenta o tipo do Portador do cart\u00C3\u00A3o, sendo: (&#39;T&#39;: Titular, &#39;A&#39;: Adicional). */
    public var tipoPortador: String?
    /** Apresenta o nome a ser impresso no cart\u00C3\u00A3o. */
    public var nomeImpresso: String?
    /** Apresenta o c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo do cart\u00C3\u00A3o (id), que ser\u00C3\u00A1 utilizado para gerar os cart\u00C3\u00B5es deste portador, vinculados a sua respectiva conta atrav\u00C3\u00A9s do campo idConta. */
    public var idTipoCartao: Int?
    /** Quanto ativa, indica que o cadastro do Portador est\u00C3\u00A1 ativo, em emissores que realizam este tipo de gest\u00C3\u00A3o. */
    public var flagAtivo: Int?
    /** Apresenta a data em que o Portador fora cadastrado, quando possuir esta informa\u00C3\u00A7\u00C3\u00A3o. */
    public var dataCadastroPortador: String?
    /** Apresenta a data em que o Portador fora cancelado, quando possuir esta informa\u00C3\u00A7\u00C3\u00A3o. */
    public var dataCancelamentoPortador: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["idParentesco"] = self.idParentesco
        nillableDictionary["tipoPortador"] = self.tipoPortador
        nillableDictionary["nomeImpresso"] = self.nomeImpresso
        nillableDictionary["idTipoCartao"] = self.idTipoCartao
        nillableDictionary["flagAtivo"] = self.flagAtivo
        nillableDictionary["dataCadastroPortador"] = self.dataCadastroPortador
        nillableDictionary["dataCancelamentoPortador"] = self.dataCancelamentoPortador
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}