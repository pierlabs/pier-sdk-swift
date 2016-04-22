//
// PessoaFisicaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PessoaFisicaResponse: JSONEncodable {

    public var bairro: String?
    public var cep: String?
    public var cidade: String?
    public var complementoLogradouro: String?
    public var cpf: String?
    public var dataEmissaoIdentidade: String?
    public var dataNascimento: String?
    public var dddcelular: String?
    public var dddtelefone: String?
    public var endereco: String?
    public var idPessoaFisica: Int?
    public var identidade: String?
    public var nome: String?
    public var numeroCelular: String?
    public var numeroLogradouro: Int?
    public var numeroTelefone: String?
    public var orgaoEmissor: String?
    public var sexo: String?
    public var uf: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["bairro"] = self.bairro
        nillableDictionary["cep"] = self.cep
        nillableDictionary["cidade"] = self.cidade
        nillableDictionary["complementoLogradouro"] = self.complementoLogradouro
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["dataEmissaoIdentidade"] = self.dataEmissaoIdentidade
        nillableDictionary["dataNascimento"] = self.dataNascimento
        nillableDictionary["dddcelular"] = self.dddcelular
        nillableDictionary["dddtelefone"] = self.dddtelefone
        nillableDictionary["endereco"] = self.endereco
        nillableDictionary["idPessoaFisica"] = self.idPessoaFisica
        nillableDictionary["identidade"] = self.identidade
        nillableDictionary["nome"] = self.nome
        nillableDictionary["numeroCelular"] = self.numeroCelular
        nillableDictionary["numeroLogradouro"] = self.numeroLogradouro
        nillableDictionary["numeroTelefone"] = self.numeroTelefone
        nillableDictionary["orgaoEmissor"] = self.orgaoEmissor
        nillableDictionary["sexo"] = self.sexo
        nillableDictionary["uf"] = self.uf
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}