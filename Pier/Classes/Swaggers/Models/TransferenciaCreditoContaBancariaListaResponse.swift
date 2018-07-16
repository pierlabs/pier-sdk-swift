//
// TransferenciaCreditoContaBancariaListaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{transferencia_credito_conta_bancaria_lista_response_description}}} */
public class TransferenciaCreditoContaBancariaListaResponse: JSONEncodable {

    /** {{{transferencia_credito_conta_bancaria_lista_response_id_transferencia_value}}} */
    public var idTransferencia: Int?
    /** {{{transferencia_credito_conta_bancaria_lista_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{transferencia_credito_conta_bancaria_lista_response_id_cartao_value}}} */
    public var idCartao: Int?
    /** {{{transferencia_credito_conta_bancaria_lista_response_valor_compra_value}}} */
    public var valorCompra: Double?
    /** {{{transferencia_credito_conta_bancaria_lista_response_valor_contrato_value}}} */
    public var valorContrato: Double?
    /** {{{transferencia_credito_conta_bancaria_lista_response_data_compra_value}}} */
    public var dataCompra: String?
    /** {{{transferencia_credito_conta_bancaria_lista_response_status_value}}} */
    public var status: Int?
    /** {{{transferencia_credito_conta_bancaria_lista_response_status_processamento_value}}} */
    public var statusProcessamento: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idTransferencia"] = self.idTransferencia
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["valorCompra"] = self.valorCompra
        nillableDictionary["valorContrato"] = self.valorContrato
        nillableDictionary["dataCompra"] = self.dataCompra
        nillableDictionary["status"] = self.status
        nillableDictionary["statusProcessamento"] = self.statusProcessamento
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
