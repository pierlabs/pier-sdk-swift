//
// CompraResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{compra_response_description}}} */
public class CompraResponse: JSONEncodable {

    public var mcc: Int?
    public var uf: String?
    /** {{{compra_response_id_compra_value}}} */
    public var idCompra: Int?
    /** {{{compra_response_status_value}}} */
    public var status: String?
    /** {{{compra_response_data_compra_value}}} */
    public var dataCompra: String?
    /** {{{compra_response_valor_total_compra_value}}} */
    public var valorTotalCompra: Double?
    /** {{{compra_response_valor_parcela_value}}} */
    public var valorParcela: Double?
    /** {{{compra_response_primeira_parcela_value}}} */
    public var primeiraParcela: Double?
    /** {{{compra_response_numero_parcelas_value}}} */
    public var numeroParcelas: Int?
    /** {{{compra_response_numero_parcelas_antecipaveis_value}}} */
    public var numeroParcelasAntecipaveis: Int?
    /** {{{compra_response_nome_estabelecimento_value}}} */
    public var nomeEstabelecimento: String?
    /** {{{compra_response_tipo_origem_transacao_value}}} */
    public var tipoOrigemTransacao: String?
    /** {{{compra_response_cidade_value}}} */
    public var cidade: String?
    /** {{{compra_response_pais_value}}} */
    public var pais: String?
    /** {{{compra_response_latitude_value}}} */
    public var latitude: String?
    /** {{{compra_response_longitude_value}}} */
    public var longitude: String?
    /** {{{compra_response_id_grupo_m_c_c_value}}} */
    public var idGrupoMCC: Int?
    /** {{{compra_response_descricao_grupo_m_c_c_value}}} */
    public var descricaoGrupoMCC: String?
    /** {{{compra_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{compra_response_id_produto_value}}} */
    public var idProduto: Int?
    /** {{{compra_response_descricao_produto_value}}} */
    public var descricaoProduto: String?
    /** {{{compra_response_cartao_value}}} */
    public var cartao: String?
    /** {{{compra_response_nome_portador_cartao_value}}} */
    public var nomePortadorCartao: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["mcc"] = self.mcc
        nillableDictionary["uf"] = self.uf
        nillableDictionary["idCompra"] = self.idCompra
        nillableDictionary["status"] = self.status
        nillableDictionary["dataCompra"] = self.dataCompra
        nillableDictionary["valorTotalCompra"] = self.valorTotalCompra
        nillableDictionary["valorParcela"] = self.valorParcela
        nillableDictionary["primeiraParcela"] = self.primeiraParcela
        nillableDictionary["numeroParcelas"] = self.numeroParcelas
        nillableDictionary["numeroParcelasAntecipaveis"] = self.numeroParcelasAntecipaveis
        nillableDictionary["nomeEstabelecimento"] = self.nomeEstabelecimento
        nillableDictionary["tipoOrigemTransacao"] = self.tipoOrigemTransacao
        nillableDictionary["cidade"] = self.cidade
        nillableDictionary["pais"] = self.pais
        nillableDictionary["latitude"] = self.latitude
        nillableDictionary["longitude"] = self.longitude
        nillableDictionary["idGrupoMCC"] = self.idGrupoMCC
        nillableDictionary["descricaoGrupoMCC"] = self.descricaoGrupoMCC
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["descricaoProduto"] = self.descricaoProduto
        nillableDictionary["cartao"] = self.cartao
        nillableDictionary["nomePortadorCartao"] = self.nomePortadorCartao
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
