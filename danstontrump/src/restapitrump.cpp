#include "restapitrump.h"
#include "quote.h"
#include "quotebuilder.h"

RestAPITrump::RestAPITrump()
{

}
/*
void RestAPITrump::requestFinished(QNetworkReply *reply) {
    if (reply->error()) {
        qDebug() << reply->errorString();
        return;
    }

    QString answer = reply->readAll();

    QJsonDocument jsonResponse = QJsonDocument::fromJson(answer.toUtf8());
    QJsonObject jsonObject = jsonResponse.object();
}
*/
