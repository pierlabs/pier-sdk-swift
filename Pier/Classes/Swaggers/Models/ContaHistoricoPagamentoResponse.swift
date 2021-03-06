//
// ContaHistoricoPagamentoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{conta_historico_pagamento_response_description}}} */
public class ContaHistoricoPagamentoResponse: JSONEncodable {

    /** {{{conta_historico_pagamento_response_id_pagamento_value}}} */
    public var idPagamento: Int?
    /** {{{conta_historico_pagamento_response_id_estabelecimento_value}}} */
    public var idEstabelecimento: Int?
    /** {{{conta_historico_pagamento_response_id_banco_value}}} */
    public var idBanco: Int?
    /** {{{conta_historico_pagamento_response_id_cartao_value}}} */
    public var idCartao: Int?
    /** {{{conta_historico_pagamento_response_valor_pagamento_value}}} */
    public var valorPagamento: Double?
    /** {{{conta_historico_pagamento_response_data_hora_pagamento_value}}} */
    public var dataHoraPagamento: String?
    /** {{{conta_historico_pagamento_response_data_hora_entrada_pagamento_value}}} */
    public var dataHoraEntradaPagamento: String?
    /** {{{conta_historico_pagamento_response_status_value}}} */
    public var status: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idPagamento"] = self.idPagamento
        nillableDictionary["idEstabelecimento"] = self.idEstabelecimento
        nillableDictionary["idBanco"] = self.idBanco
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["valorPagamento"] = self.valorPagamento
        nillableDictionary["dataHoraPagamento"] = self.dataHoraPagamento
        nillableDictionary["dataHoraEntradaPagamento"] = self.dataHoraEntradaPagamento
        nillableDictionary["status"] = self.status
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
