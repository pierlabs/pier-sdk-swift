//
// ConfiguracaoRotativoPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Configura\u00C3\u00A7\u00C3\u00A3o Rotativo */
public class ConfiguracaoRotativoPersist: JSONEncodable {

    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (idProduto). */
    public var idProduto: Int?
    /** Quando verdadeiro, indica que o valor do rotativo deve compor a oferta de parcelamento. */
    public var compoeOfertaValorRotativo: Bool?
    /** Quando verdadeiro, indica que o valor n\u00C3\u00A3o financi\u00C3\u00A1vel deve compor a oferta de parcelamento. */
    public var compoeOfertaValorNaoFinanciavel: Bool?
    /** Quando verdadeiro, indica que o valor de novos lan\u00C3\u00A7amentos deve compor a oferta de parcelamento */
    public var compoeOfertaValorNovosLancamentos: Bool?
    /** Quando verdadeiro, indica que deve recalcular o parcelamento caso o valor pago de entrada seja maior que o valor esperado */
    public var recalculaParcelamentoParaEntradaMaior: Bool?
    /** Indica o m\u00C3\u00ADnimo de parcelas que ser\u00C3\u00A1 acatado no rec\u00C3\u00A1lculo do parcelamento. */
    public var minimoParcelasRecalculoParcelamento: Bool?
    /** Quando verdadeiro, indica que o parcelamento deve ser recalculado caso o valor calculado da oferta seja inferior ao valor configurado m\u00C3\u00ADnimo da parcela (valorMinimoParcela) e de percentual aberto */
    public var recalculaParcelamento: Bool?
    /** N\u00C3\u00BAmero m\u00C3\u00ADnimo de parcelas que ser\u00C3\u00A1 acatado no recalculo da oferta. */
    public var numeroMinimoOfertas: Bool?
    /** Quando verdadeiro, indica que valores pagos entre o valor da entrada e o m\u00C3\u00ADnimo da fatura ser\u00C3\u00A3o acatados para a ades\u00C3\u00A3o ao parcelamento */
    public var aceitaPagamentoMaiorQueEntrada: Bool?
    /** Quando verdadeiro, indica que deve-se incluir o valor presente dos parcelamentos em aberto. */
    public var antecipaParcelamentosAbertos: Bool?
    /** Valor m\u00C3\u00ADnimo da parcela que deve ser aceito na oferta. */
    public var valorMinimoParcela: Double?
    /** Percentual sobre os valores de parcelamento anteriores em aberto que deve ser considerado para limitar valorMinimoParcela. */
    public var percentualLimitarValorMinimoParcela: Double?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da regra de campanha. */
    public var idRegraCampanha: Int?
    /** Quando verdadeiro, indica que parcelamento ofertado ter\u00C3\u00A1 como valor base o valor m\u00C3\u00ADnimo das transa\u00C3\u00A7\u00C3\u00B5es. */
    public var parcelarApenasMinimo: Bool?
    /** Nome do usu\u00C3\u00A1rio */
    public var usuario: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["compoeOfertaValorRotativo"] = self.compoeOfertaValorRotativo
        nillableDictionary["compoeOfertaValorNaoFinanciavel"] = self.compoeOfertaValorNaoFinanciavel
        nillableDictionary["compoeOfertaValorNovosLancamentos"] = self.compoeOfertaValorNovosLancamentos
        nillableDictionary["recalculaParcelamentoParaEntradaMaior"] = self.recalculaParcelamentoParaEntradaMaior
        nillableDictionary["minimoParcelasRecalculoParcelamento"] = self.minimoParcelasRecalculoParcelamento
        nillableDictionary["recalculaParcelamento"] = self.recalculaParcelamento
        nillableDictionary["numeroMinimoOfertas"] = self.numeroMinimoOfertas
        nillableDictionary["aceitaPagamentoMaiorQueEntrada"] = self.aceitaPagamentoMaiorQueEntrada
        nillableDictionary["antecipaParcelamentosAbertos"] = self.antecipaParcelamentosAbertos
        nillableDictionary["valorMinimoParcela"] = self.valorMinimoParcela
        nillableDictionary["percentualLimitarValorMinimoParcela"] = self.percentualLimitarValorMinimoParcela
        nillableDictionary["idRegraCampanha"] = self.idRegraCampanha
        nillableDictionary["parcelarApenasMinimo"] = self.parcelarApenasMinimo
        nillableDictionary["usuario"] = self.usuario
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}