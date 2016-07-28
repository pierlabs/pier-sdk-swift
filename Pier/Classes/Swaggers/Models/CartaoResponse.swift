//
// CartaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CartaoResponse: JSONEncodable {

    public var bin: Int?
    public var codRetorno: Int?
    public var codigoDesbloqueio: String?
    public var criptografiaHSM: String?
    public var dataEmissao: NSDate?
    public var dataValidade: NSDate?
    public var dataVencimentoPadrao: String?
    public var descricaoRetorno: String?
    public var estagioCartao: Int?
    public var estagioData: NSDate?
    public var flagReversao: Bool?
    public var flagSenha: Bool?
    public var idCartao: Int?
    public var idConta: Int?
    public var idEmissor: Int?
    public var idLog: String?
    public var idPessoaFisica: Int?
    public var idProduto: Int?
    public var nomePlastico: String?
    public var numeroCartao: String?
    public var numeroCartaoReal: String?
    public var statusCartao: Int?
    public var statusData: NSDate?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["bin"] = self.bin
        nillableDictionary["codRetorno"] = self.codRetorno
        nillableDictionary["codigoDesbloqueio"] = self.codigoDesbloqueio
        nillableDictionary["criptografiaHSM"] = self.criptografiaHSM
        nillableDictionary["dataEmissao"] = self.dataEmissao?.encodeToJSON()
        nillableDictionary["dataValidade"] = self.dataValidade?.encodeToJSON()
        nillableDictionary["dataVencimentoPadrao"] = self.dataVencimentoPadrao
        nillableDictionary["descricaoRetorno"] = self.descricaoRetorno
        nillableDictionary["estagioCartao"] = self.estagioCartao
        nillableDictionary["estagioData"] = self.estagioData?.encodeToJSON()
        nillableDictionary["flagReversao"] = self.flagReversao
        nillableDictionary["flagSenha"] = self.flagSenha
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idEmissor"] = self.idEmissor
        nillableDictionary["idLog"] = self.idLog
        nillableDictionary["idPessoaFisica"] = self.idPessoaFisica
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["nomePlastico"] = self.nomePlastico
        nillableDictionary["numeroCartao"] = self.numeroCartao
        nillableDictionary["numeroCartaoReal"] = self.numeroCartaoReal
        nillableDictionary["statusCartao"] = self.statusCartao
        nillableDictionary["statusData"] = self.statusData?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
