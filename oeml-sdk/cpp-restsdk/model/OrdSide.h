/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.0.1.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OrdSide.h
 *
 * Side of order. 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_OrdSide_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_OrdSide_H_


#include "../ModelBase.h"


namespace org {
namespace openapitools {
namespace client {
namespace model {

class  OrdSide
    : public ModelBase
{
public:
    OrdSide();
    virtual ~OrdSide();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    enum class eOrdSide
    {
        OrdSide_BUY,
        OrdSide_SELL,
    };

    eOrdSide getValue() const;
    void setValue(eOrdSide const value);

    protected:
        eOrdSide m_value;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_OrdSide_H_ */
