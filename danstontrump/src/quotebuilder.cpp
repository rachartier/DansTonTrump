#include "quotebuilder.h"

#include <QJsonValue>
#include <QJsonObject>
#include <QJsonArray>
#include <QDebug>

QuoteBuilder::QuoteBuilder()
{

}

Quote* QuoteBuilder::createQuoteFromJson(QJsonObject& jsonObject) {
    return new Quote(jsonObject.value("message").toString());
}

QVariantList QuoteBuilder::createQuotesListFromJson(QJsonObject& jsonObject) {
    QVariantList quotes;


    if(jsonObject.contains("messages")) {
        QJsonObject messages = jsonObject["messages"].toObject();

        if(messages.contains("non_personalized")) {
            for(const auto nonPersonalizedMessage : messages["non_personalized"].toArray()) {
                quotes.push_back(QVariant::fromValue(new Quote(nonPersonalizedMessage.toString())));

            }
        }
    }

    qDebug() << QVariant::fromValue(quotes).data();

    return quotes;
}
