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

QList<QObject *> QuoteBuilder::createQuotesListFromJson(QJsonObject& jsonObject) {
    QList<QObject *> quotes;


    if(jsonObject.contains("messages")) {
        QJsonObject messages = jsonObject["messages"].toObject();

        if(messages.contains("non_personalized")) {
            for(const auto nonPersonalizedMessage : messages["non_personalized"].toArray()) {
                quotes.push_back(new Quote(nonPersonalizedMessage.toString()));
            }
        }
    }

    return quotes;
}
