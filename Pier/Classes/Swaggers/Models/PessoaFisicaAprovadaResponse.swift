//
// PessoaFisicaAprovadaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** PessoaFisicaAprovadaResponse */
public class PessoaFisicaAprovadaResponse: JSONEncodable {

    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da pessoa fisica (id) */
    public var id: Int?
    /** Apresenta o nome completo da pessoa fisica. */
    public var nome: String?
    /** Apresenta o nome da m\u00C3\u00A3e da pessoa fisica */
    public var nomeMae: String?
    /** Data de Nascimento da Pessoa. Essa data deve ser informada no formato aaaa-MM-dd. */
    public var dataNascimento: String?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do sexo da Pessoa, quando PF, sendo: (\&quot;M\&quot;: Masculino), (\&quot;F\&quot;: Feminino). */
    public var sexo: String?
    /** N\u00C3\u00BAmero do Cadastro de Pessoa Fisica (CPF) */
    public var cpf: String?
    /** N\u00C3\u00BAmero da identidade. */
    public var numeroIdentidade: String?
    /** Org\u00C3\u00A3o expedidor da Identidade. */
    public var orgaoExpedidorIdentidade: String?
    /** Sigla da Unidade Federativa de onde foi expedido a Identidade */
    public var unidadeFederativaIdentidade: String?
    /** Data emiss\u00C3\u00A3o da Identidade no formato aaaa-MM-dd */
    public var dataEmissaoIdentidade: String?
    /** Id Estado civil da pessoa fisica */
    public var idEstadoCivil: Int?
    /** Profiss\u00C3\u00A3o da pessoa fisica */
    public var idProfissao: String?
    /** Id Natureza Ocupa\u00C3\u00A7\u00C3\u00A3o da pessoa fisica */
    public var idNaturezaOcupacao: Int?
    /** Id Nacionalidade da pessoa fisica */
    public var idNacionalidade: Int?
    /** Id da origem comercial */
    public var idOrigemComercial: Int?
    /** Id do produto */
    public var idProduto: Int?
    /** N\u00C3\u00BAmero da ag\u00C3\u00AAncia. */
    public var numeroAgencia: Int?
    /** N\u00C3\u00BAmero da conta corrente. */
    public var numeroContaCorrente: String?
    /** Email da pessoa fisica */
    public var email: String?
    /** Dia vencimento */
    public var diaVencimento: Int?
    /** Nome que deve ser impresso no cart\u00C3\u00A3o */
    public var nomeImpresso: String?
    /** Nome da empresa */
    public var nomeEmpresa: String?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta cadastrada */
    public var idConta: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da proposta */
    public var idProposta: Int?
    /** Indica o canal pelo qual o cadastro do cliente foi realizado */
    public var canalEntrada: String?
    /** Indica o valor da pontua\u00C3\u00A7\u00C3\u00A3o atribuido ao cliente (caso n\u00C3\u00A3o informado ser\u00C3\u00A1 atribuido o valor = 0) */
    public var valorPontuacao: Int?
    /** Apresenta os telefones da empresa */
    public var telefones: [TelefonePessoaAprovadaResponse]?
    /** Pode ser informado os seguintes tipos de endere\u00C3\u00A7o: Residencial, Comercial, e Outros */
    public var enderecos: [EnderecoAprovadoResponse]?
    /** Valor do Limite Global */
    public var limiteGlobal: Double?
    /** Valor m\u00C3\u00A1ximo do limite de cr\u00C3\u00A9dito para realizar transa\u00C3\u00A7\u00C3\u00B5es */
    public var limiteMaximo: Double?
    /** Valor do limite de cr\u00C3\u00A9dito acumulado da soma das parcelas das compras */
    public var limiteParcelas: Double?
    /** Valor do limite de margem consignado */
    public var limiteConsignado: Double?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["nome"] = self.nome
        nillableDictionary["nomeMae"] = self.nomeMae
        nillableDictionary["dataNascimento"] = self.dataNascimento
        nillableDictionary["sexo"] = self.sexo
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["numeroIdentidade"] = self.numeroIdentidade
        nillableDictionary["orgaoExpedidorIdentidade"] = self.orgaoExpedidorIdentidade
        nillableDictionary["unidadeFederativaIdentidade"] = self.unidadeFederativaIdentidade
        nillableDictionary["dataEmissaoIdentidade"] = self.dataEmissaoIdentidade
        nillableDictionary["idEstadoCivil"] = self.idEstadoCivil
        nillableDictionary["idProfissao"] = self.idProfissao
        nillableDictionary["idNaturezaOcupacao"] = self.idNaturezaOcupacao
        nillableDictionary["idNacionalidade"] = self.idNacionalidade
        nillableDictionary["idOrigemComercial"] = self.idOrigemComercial
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["numeroAgencia"] = self.numeroAgencia
        nillableDictionary["numeroContaCorrente"] = self.numeroContaCorrente
        nillableDictionary["email"] = self.email
        nillableDictionary["diaVencimento"] = self.diaVencimento
        nillableDictionary["nomeImpresso"] = self.nomeImpresso
        nillableDictionary["nomeEmpresa"] = self.nomeEmpresa
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idProposta"] = self.idProposta
        nillableDictionary["canalEntrada"] = self.canalEntrada
        nillableDictionary["valorPontuacao"] = self.valorPontuacao
        nillableDictionary["telefones"] = self.telefones?.encodeToJSON()
        nillableDictionary["enderecos"] = self.enderecos?.encodeToJSON()
        nillableDictionary["limiteGlobal"] = self.limiteGlobal
        nillableDictionary["limiteMaximo"] = self.limiteMaximo
        nillableDictionary["limiteParcelas"] = self.limiteParcelas
        nillableDictionary["limiteConsignado"] = self.limiteConsignado
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
