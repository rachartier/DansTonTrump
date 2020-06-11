#include "restapitrump.h"
#include "quote.h"
#include "quotebuilder.h"

RestAPITrump::RestAPITrump()
{

}

void RestAPITrump::requestFinished(QNetworkReply *reply) {
    if (reply->error()) {
        qDebug() << reply->errorString();
        return;
    }

    QString answer = reply->readAll();

    qDebug() << answer;

    QJsonDocument jsonResponse = QJsonDocument::fromJson(answer.toUtf8());
    QJsonObject jsonObject = jsonResponse.object();

    std::list<Quote*> q = QuoteBuilder::createQuotesListFromJson(jsonObject);
}
