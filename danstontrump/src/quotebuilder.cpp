#include "quotebuilder.h"
#include <QJsonValue>

QuoteBuilder::QuoteBuilder()
{

}

Quote* QuoteBuilder::createQuoteFromJson(QJsonObject& jsonObject) {
    return new Quote(jsonObject.value("message").toString());
}

std::list<Quote*> QuoteBuilder::createQuotesListFromJson(QJsonObject& jsonObject) {
    std::list<Quote*> quotes;

    QJsonValue messages = jsonObject["messages"];

    for(auto& nonPersonalizedMessage : messages["non_personalized"]) {
        quotes.push_back(new Quote(nonPersonalizedMessage));
        qDebug() << nonPersonalizedMessage;
    }

    return quotes;
}
