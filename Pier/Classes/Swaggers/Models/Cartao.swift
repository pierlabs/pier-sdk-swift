//
// Cartao.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto Cart\u00C3\u00A3o */
public class Cartao: JSONEncodable {

    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (id). */
    public var id: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id). */
    public var idStatusCartao: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o (id). */
    public var idEstagioCartao: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta a qual o cart\u00C3\u00A3o pertence (id). */
    public var idConta: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa a qual o cart\u00C3\u00A3o pertence (id) */
    public var idPessoa: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto a qual o cart\u00C3\u00A3o pertence (id). */
    public var idProduto: Int?
    /** Apresenta o tipo do Portador do cart\u00C3\u00A3o, sendo: (&#39;T&#39;: Titular, &#39;A&#39;: Adicional). */
    public var tipoPortador: String?
    /** Apresenta o n\u00C3\u00BAmero do cart\u00C3\u00A3o. */
    public var numeroCartao: String?
    /** Apresenta o nome impresso no cart\u00C3\u00A3o. */
    public var nomeImpresso: String?
    /** Apresenta a data em que o cart\u00C3\u00A3o foi gerado. */
    public var dataGeracao: NSDate?
    /** Apresenta a data em que o idStatusCartao atual do cart\u00C3\u00A3o fora aplicado, quando houver. */
    public var dataStatusCartao: NSDate?
    /** Apresenta a data em que o idEstagioCartao atual do cart\u00C3\u00A3o fora aplicado, quando houver. */
    public var dataEstagioCartao: NSDate?
    /** Apresenta a data de validade do cart\u00C3\u00A3o em formato yyyy-MM, quando houver. */
    public var dataValidade: NSDate?
    /** Apresenta a data em que o cart\u00C3\u00A3o fora impresso, caso impress\u00C3\u00A3o em loja, ou a data em que ele fora inclu\u00C3\u00ADdo no arquivo para impress\u00C3\u00A3o via gr\u00C3\u00A1fica. */
    public var dataImpressao: NSDate?
    /** Apresenta o nome do arquivo onde o cart\u00C3\u00A3o fora inclu\u00C3\u00ADdo para impress\u00C3\u00A3o por uma gr\u00C3\u00A1fica, quando houver. */
    public var arquivoImpressao: String?
    /** Quando ativa, indica que o cart\u00C3\u00A3o fora impresso na Origem Comercial. */
    public var flagImpressaoOrigemComercial: Int?
    /** Quando ativa, indica que o cart\u00C3\u00A3o \u00C3\u00A9 provis\u00C3\u00B3rio. Ou seja, \u00C3\u00A9 um cart\u00C3\u00A3o para uso tempor\u00C3\u00A1rio quando se deseja permitir que o cliente transacione sem que ele tenha recebido um cart\u00C3\u00A3o definitivo. */
    public var flagProvisorio: Int?
    /** Apresenta um c\u00C3\u00B3digo espec\u00C3\u00ADfico para ser utilizado como vari\u00C3\u00A1vel no processo de desbloqueio do cart\u00C3\u00A3o para emissores que querem usar esta funcionalidade. */
    public var codigoDesbloqueio: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idStatusCartao"] = self.idStatusCartao
        nillableDictionary["idEstagioCartao"] = self.idEstagioCartao
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["tipoPortador"] = self.tipoPortador
        nillableDictionary["numeroCartao"] = self.numeroCartao
        nillableDictionary["nomeImpresso"] = self.nomeImpresso
        nillableDictionary["dataGeracao"] = self.dataGeracao?.encodeToJSON()
        nillableDictionary["dataStatusCartao"] = self.dataStatusCartao?.encodeToJSON()
        nillableDictionary["dataEstagioCartao"] = self.dataEstagioCartao?.encodeToJSON()
        nillableDictionary["dataValidade"] = self.dataValidade?.encodeToJSON()
        nillableDictionary["dataImpressao"] = self.dataImpressao?.encodeToJSON()
        nillableDictionary["arquivoImpressao"] = self.arquivoImpressao
        nillableDictionary["flagImpressaoOrigemComercial"] = self.flagImpressaoOrigemComercial
        nillableDictionary["flagProvisorio"] = self.flagProvisorio
        nillableDictionary["codigoDesbloqueio"] = self.codigoDesbloqueio
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
